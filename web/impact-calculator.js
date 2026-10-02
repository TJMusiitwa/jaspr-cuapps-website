// Local-only model adapted from cuchatcalc.html. Each routed worksheet initializes once.
(() => {
  const initialized = new WeakSet();
  const numberFormat = new Intl.NumberFormat('en-GB', { maximumFractionDigits: 0 });
  const format = value => numberFormat.format(value);
  const fields = [
    { id: 'enquiries', label: 'Member service enquiries per month', value: 2000 },
    { id: 'minutes', label: 'Average handling time (minutes)', value: 6 },
    { id: 'resolution', label: 'Enquiries fully resolved by CU Chat (%)', value: 60 },
    { id: 'visits', label: 'Monthly website visits', value: 10000 },
  ];
  const assumptionDefaults = { wage: 25, engage: 4, qualify: 20 };
  const inputLabels = {
    ...Object.fromEntries(fields.map(field => [field.id, field.label])),
    wage: 'Staff cost per hour',
    engage: 'Visitors starting a chat (%)',
    qualify: 'Chats becoming leads (%)',
  };
  const resultLabels = {
    original: 'Original handling time (hours)',
    hours: 'Staff capacity recovered (hours)',
    remaining: 'Remaining handling time (hours)',
    days: 'Working days of capacity',
    value: 'Staff capacity value',
    chats: 'Modelled website chats',
    leads: 'Potential website leads',
  };

  function initialize(root) {
    if (initialized.has(root)) return;
    initialized.add(root);
    const get = id => root.querySelector(`#${id}`);
    const numericInputs = Array.from(root.querySelectorAll('input[type=number]'));
    const periodButtons = Array.from(root.querySelectorAll('[data-period]'));
    let period = 'month';
    let latest;
    let valid = true;
    let announceTimer;

    const values = () => Object.fromEntries(
      numericInputs.map(input => [input.id, Number(input.value)]),
    );

    function calculate(inputs, multiplier) {
      const original = inputs.enquiries * inputs.minutes / 60 * multiplier;
      const hours = original * inputs.resolution / 100;
      const chats = inputs.visits * inputs.engage / 100 * multiplier;
      return {
        original, hours, remaining: original - hours,
        days: hours / 7.5, value: hours * inputs.wage,
        chats, leads: chats * inputs.qualify / 100,
      };
    }

    function update() {
      valid = true;
      clearTimeout(announceTimer);
      get('feedback').textContent = '';
      const invalid = [];
      for (const input of numericInputs) {
        const value = Number(input.value);
        const ok = input.value !== '' && Number.isFinite(value)
          && value >= Number(input.min) && value <= Number(input.max);
        input.setAttribute('aria-invalid', String(!ok));
        if (!ok) {
          valid = false;
          invalid.push(`${inputLabels[input.id]}: enter a number from ${format(input.min)} to ${format(input.max)}.`);
        }
      }
      get('error').hidden = valid;
      get('download').disabled = !valid;
      if (!valid) {
        get('error').textContent = `${invalid.join(' ')} Results show your last valid estimate.`;
        return;
      }
      latest = calculate(values(), period === 'month' ? 1 : 12);
      for (const id of ['hours', 'days', 'leads']) get(id).textContent = format(latest[id]);
      get('value').textContent = new Intl.NumberFormat('en-GB', {
        style: 'currency', currency: get('currency').value, maximumFractionDigits: 0,
      }).format(latest.value);
      get('before').textContent = `${format(latest.original)} hrs`;
      get('after').textContent = `${format(latest.remaining)} hrs`;
      get('before-bar').style.width = latest.original ? '100%' : '0%';
      get('after-bar').style.width = `${latest.original ? latest.remaining / latest.original * 100 : 0}%`;
      get('chats').textContent = `From ${format(latest.chats)} website chats`;
      get('period-caption').textContent = period === 'month' ? 'every month' : 'every year';
      // A compact announcement after the user settles a slider, instead of reading the whole panel.
      announceTimer = setTimeout(() => {
        if (!root.isConnected) return;
        get('impact-announcement').textContent = `${format(latest.hours)} hours of staff capacity and ${format(latest.leads)} potential website leads ${period === 'month' ? 'per month' : 'per year'}.`;
      }, 350);
    }

    for (const field of fields) {
      get(field.id).addEventListener('input', () => {
        get(`${field.id}-range`).value = get(field.id).value;
        update();
      });
      get(`${field.id}-range`).addEventListener('input', () => {
        get(field.id).value = get(`${field.id}-range`).value;
        update();
      });
    }
    for (const id of [...Object.keys(assumptionDefaults), 'currency']) {
      get(id).addEventListener('input', update);
    }
    const selectPeriod = selected => {
      period = selected;
      periodButtons.forEach(button => {
        button.setAttribute('aria-pressed', String(button.dataset.period === period));
      });
    };
    periodButtons.forEach(button => button.addEventListener('click', () => {
      selectPeriod(button.dataset.period);
      update();
    }));
    get('reset').addEventListener('click', () => {
      for (const field of fields) {
        get(field.id).value = field.value;
        get(`${field.id}-range`).value = field.value;
      }
      for (const [id, value] of Object.entries(assumptionDefaults)) get(id).value = value;
      get('currency').value = 'GBP';
      selectPeriod('month');
      update();
    });
    get('download').addEventListener('click', () => {
      if (!valid) return;
      const currency = get('currency').value;
      const lines = [
        'CU CHAT | YOUR IMPACT SUMMARY',
        `Period: ${period === 'month' ? 'Monthly' : 'Annual'}`,
        '', 'ESTIMATED IMPACT',
        ...Object.entries(latest).map(([key, value]) =>
          `${resultLabels[key]}: ${format(value)}${key === 'value' ? ` ${currency}` : ''}`),
        '', 'MONTHLY INPUTS',
        ...Object.entries(values()).map(([key, value]) => `${inputLabels[key]}: ${value}`),
        `Currency: ${currency}`, '',
        ...Array.from(root.querySelectorAll('.method li')).map(item => item.textContent),
        '', get('disclaimer').textContent,
        'No data has been submitted.',
      ];
      const url = URL.createObjectURL(new Blob([lines.join('\n')], { type: 'text/plain;charset=utf-8' }));
      const link = document.createElement('a');
      link.href = url;
      link.download = 'cu-chat-impact-summary.txt';
      document.body.append(link);
      link.click();
      link.remove();
      setTimeout(() => URL.revokeObjectURL(url), 1000);
      get('feedback').textContent = 'Your summary has been downloaded.';
    });
    update();
  }

  const scan = () => document.querySelectorAll('.impact-calculator-page').forEach(initialize);
  scan();
  // Jaspr navigation can mount a new page without reloading document scripts.
  new MutationObserver(changes => {
    if (changes.some(change => Array.from(change.addedNodes).some(node =>
      node.nodeType === 1 && (node.matches?.('.impact-calculator-page')
        || node.querySelector?.('.impact-calculator-page'))))) scan();
  }).observe(document.body, { childList: true, subtree: true });
})();
