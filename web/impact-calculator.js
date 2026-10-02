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
    let preparingSummary = false;
    let announceTimer;
    const scenarios = [];
    const money = (value, currency = get('currency').value) => new Intl.NumberFormat('en-GB', {
      style: 'currency', currency, maximumFractionDigits: 0,
    }).format(value);
    const element = (tag, text, className) => {
      const node = document.createElement(tag);
      if (text !== undefined) node.textContent = text;
      if (className) node.className = className;
      return node;
    };
    // Show mobile feedback only while editing the worksheet, away from the full results.
    if ('IntersectionObserver' in window) {
      let editing = false;
      let resultsVisible = false;
      const visibility = () => get('mobile-impact').classList.toggle('is-visible', editing && !resultsVisible);
      new IntersectionObserver(entries => {
        editing = entries[0].isIntersecting;
        visibility();
      }).observe(root.querySelector('.inputs'));
      new IntersectionObserver(entries => {
        resultsVisible = entries[0].isIntersecting;
        visibility();
      }).observe(get('calculator-results'));
    }


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
      const invalid = [];
      for (const input of numericInputs) {
        const value = Number(input.value);
        const ok = input.value !== '' && Number.isFinite(value)
          && value >= Number(input.min) && value <= Number(input.max);
        input.setAttribute('aria-invalid', String(!ok));
        const error = get(`${input.id}-error`);
        input.setAttribute('aria-describedby', [input.getAttribute('aria-describedby')?.replace(error.id, '').trim(), error.id].filter(Boolean).join(' '));
        error.hidden = ok;
        error.textContent = ok ? '' : `Enter a number from ${format(input.min)} to ${format(input.max)}.`;
        if (!ok) {
          valid = false;
          invalid.push(`${inputLabels[input.id]}: enter a number from ${format(input.min)} to ${format(input.max)}.`);
        }
      }
      get('error').hidden = valid;
      for (const id of ['print-summary', 'save-scenario']) {
        get(id).disabled = !valid || (id === 'print-summary' && preparingSummary) || (id === 'save-scenario' && scenarios.length >= 3);
      }
      periodButtons.forEach(button => { button.disabled = !valid; });
      get('result-state').hidden = valid;
      get('result-state').textContent = valid ? '' : 'Last valid estimate · correct the highlighted inputs to update.';
      get('mobile-state').textContent = valid ? 'Illustrative estimate' : 'Last valid estimate';
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
      get('mobile-hours').textContent = `${format(latest.hours)} hours / ${period === 'month' ? 'month' : 'year'}`;
      get('resolution-basis').textContent = `Based on ${get('resolution').value}% of enquiries fully resolved by CU Chat.`;
      const funnel = get('website-funnel');
      funnel.replaceChildren(element('p', 'Your website opportunity', 'funnel-heading'));
      const steps = element('ol', undefined, 'funnel-steps');
      for (const [value, label] of [[values().visits * (period === 'month' ? 1 : 12), 'visits'], [latest.chats, 'chats'], [latest.leads, 'potential leads']]) {
        const step = element('li');
        step.append(element('strong', format(value)), element('span', label));
        steps.append(step);
      }
      funnel.append(steps, element('p', `${get('engage').value}% start a chat · ${get('qualify').value}% of chats become leads`, 'metric-sub'));
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
    function renderComparison() {
      const container = get('scenario-comparison');
      container.replaceChildren();
      if (!scenarios.length) return;
      const table = element('table');
      table.append(element('caption', 'Monthly comparison · all scenarios use the same period'));
      const head = element('thead');
      const headings = element('tr');
      for (const label of ['Scenario / assumptions', 'Hours', 'Time value', 'Potential leads', 'Action']) {
        const cell = element('th', label);
        cell.scope = 'col';
        headings.append(cell);
      }
      head.append(headings);
      const body = element('tbody');
      scenarios.forEach((scenario, index) => {
        const row = element('tr');
        const name = element('th');
        name.scope = 'row';
        name.append(element('strong', scenario.name), element('span', `${scenario.inputs.resolution}% resolution · ${scenario.inputs.engage}% chat · ${scenario.inputs.qualify}% lead`, 'scenario-assumptions'));
        row.append(name, element('td', format(scenario.result.hours)), element('td', money(scenario.result.value, scenario.currency)), element('td', format(scenario.result.leads)));
        const action = element('td');
        const remove = element('button', 'Remove', 'reset');
        remove.type = 'button';
        remove.setAttribute('aria-label', `Remove ${scenario.name}`);
        remove.addEventListener('click', () => {
          scenarios.splice(index, 1);
          renderComparison();
          update();
          get('scenario-feedback').textContent = 'Scenario removed.';
        });
        action.append(remove);
        row.append(action);
        body.append(row);
      });
      table.append(head, body);
      container.append(table);
    }
    get('save-scenario').addEventListener('click', () => {
      if (!valid || scenarios.length >= 3) return;
      const inputs = values();
      scenarios.push({ name: get('scenario-name').value.trim() || `Scenario ${scenarios.length + 1}`, inputs, currency: get('currency').value, result: calculate(inputs, 1) });
      get('scenario-name').value = '';
      renderComparison();
      update();
      get('scenario-feedback').textContent = scenarios.length === 3 ? 'Three scenarios captured. Remove one to add another.' : 'Scenario captured. Adjust the inputs and add another to compare.';
    });
    function buildReport() {
      if (!valid) return;
      const report = get('print-report');
      report.replaceChildren();
      const sheet = element('article', undefined, 'report-sheet');
      const header = element('header', undefined, 'report-header');
      const logo = element('img');
      logo.src = '/images/cu_chat_logo.webp';
      logo.alt = 'CU Chat powered by CU Apps';
      logo.width = 180;
      logo.height = 66;
      header.append(logo, element('p', 'Impact calculator', 'report-document-label'));
      const intro = element('div', undefined, 'report-intro');
      intro.append(element('p', 'Illustrative estimate', 'eyebrow'), element('h2', 'More time for members.'), element('p', `Prepared ${new Intl.DateTimeFormat('en-GB', { dateStyle: 'long' }).format(new Date())} · ${period === 'month' ? 'Monthly' : 'Annual'} estimate`, 'report-meta'));
      const impact = element('section', undefined, 'report-impact');
      impact.append(element('h3', 'Your potential impact'));
      const metrics = element('div', undefined, 'report-metrics');
      for (const [value, label] of [[`${format(latest.hours)} hours`, 'Staff capacity recovered'], [money(latest.value), 'Staff capacity value'], [format(latest.leads), 'Potential website leads']]) {
        const metric = element('div');
        metric.append(element('strong', value), element('span', label));
        metrics.append(metric);
      }
      impact.append(metrics, element('p', `Based on ${values().resolution}% of service enquiries fully resolved by CU Chat. Time value, not cash savings.`, 'report-impact-note'));
      sheet.append(header, intro, impact);
      const context = element('section', undefined, 'report-section');
      context.append(element('h3', 'The estimate in context'));
      const totals = element('dl', undefined, 'report-data');
      for (const key of ['original', 'remaining', 'days', 'chats']) totals.append(element('dt', resultLabels[key]), element('dd', format(latest[key])));
      context.append(totals, element('p', `${format(values().visits * (period === 'month' ? 1 : 12))} website visits × ${values().engage}% chat engagement × ${values().qualify}% lead conversion = ${format(latest.leads)} potential leads.`, 'report-note'));
      const assumptions = element('section', undefined, 'report-section');
      assumptions.append(element('h3', 'Your monthly inputs and assumptions'));
      const inputs = element('dl', undefined, 'report-data');
      for (const [key, value] of Object.entries(values())) inputs.append(element('dt', inputLabels[key]), element('dd', String(value)));
      inputs.append(element('dt', 'Currency'), element('dd', get('currency').value));
      assumptions.append(inputs);
      sheet.append(context, assumptions);
      if (scenarios.length) {
        const comparison = element('section', undefined, 'report-section report-comparison');
        comparison.append(element('h3', 'Scenario comparison · monthly'));
        const table = get('scenario-comparison').firstElementChild.cloneNode(true);
        table.querySelectorAll('tr').forEach(row => row.lastElementChild.remove());
        comparison.append(table);
        for (const scenario of scenarios) comparison.append(element('p', `${scenario.name}: ${Object.entries(scenario.inputs).map(([key, value]) => `${inputLabels[key]}: ${value}`).join('; ')}; Currency: ${scenario.currency}.`, 'report-note'));
        sheet.append(comparison);
      }
      const method = element('section', undefined, 'report-section report-method');
      method.append(element('h3', 'Calculation and limitations'), root.querySelector('.method ul').cloneNode(true), element('p', get('disclaimer').textContent, 'report-limitations'));
      const footer = element('footer', undefined, 'report-footer');
      footer.append(element('strong', 'CU Chat'), element('span', 'Impact calculator · Prepared locally, no data submitted'));
      sheet.append(method, footer);
      report.append(sheet);
    }
    get('print-summary').addEventListener('click', async () => {
      if (!valid || preparingSummary) return;
      preparingSummary = true;
      const button = get('print-summary');
      button.disabled = true;
      button.setAttribute('aria-busy', 'true');
      button.textContent = 'Preparing summary…';
      get('pdf-feedback').textContent = '';
      buildReport();
      try {
        await document.fonts.ready;
        await Promise.all(Array.from(get('print-report').querySelectorAll('img')).map(img => img.decode()));
        window.print();
      } catch (error) {
        get('pdf-feedback').textContent = 'The summary could not be prepared. Please try again.';
      } finally {
        preparingSummary = false;
        button.textContent = 'Print / save PDF summary';
        button.removeAttribute('aria-busy');
        button.disabled = !valid;
      }
    });
    window.addEventListener('beforeprint', () => {
      if (root.isConnected && valid && !preparingSummary) buildReport();
    });
    update();
  }

  const scan = () => document.querySelectorAll('.impact-calculator-page:not(.pdf-document)').forEach(initialize);
  scan();
  // Jaspr navigation can mount a new page without reloading document scripts.
  new MutationObserver(changes => {
    if (changes.some(change => Array.from(change.addedNodes).some(node =>
      node.nodeType === 1 && (node.matches?.('.impact-calculator-page')
        || node.querySelector?.('.impact-calculator-page'))))) scan();
  }).observe(document.body, { childList: true, subtree: true });
})();
