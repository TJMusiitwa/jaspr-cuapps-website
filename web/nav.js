// Navigation behaviour the static markup can't express on its own:
// the mobile menu closes on Escape, outside taps and link taps, and the
// Products menu reports its state and can be dismissed with Escape.
// Delegated from document so it survives client-side re-renders.
(() => {
  const menu = () => document.querySelector('.mobile-menu');
  const products = () => document.querySelector('.nav-products');

  const setMenuLabel = (details) => {
    const label = details.querySelector('.mobile-menu-label');
    if (label) label.textContent = details.open ? 'Close' : 'Menu';
  };

  document.addEventListener(
    'toggle',
    (event) => {
      if (event.target.matches?.('.mobile-menu')) setMenuLabel(event.target);
    },
    true,
  );

  const setProducts = (open) => {
    const root = products();
    if (!root) return;
    root.classList.toggle('is-open', open);
    root.querySelector('button')?.setAttribute('aria-expanded', String(open));
  };

  document.addEventListener('keydown', (event) => {
    if (event.key !== 'Escape') return;
    const details = menu();
    if (details?.open) {
      details.open = false;
      details.querySelector('summary')?.focus();
    }
    const root = products();
    if (root?.matches(':hover, :focus-within')) {
      root.classList.add('is-dismissed');
      setProducts(false);
      root.querySelector('button')?.focus();
    }
  });

  document.addEventListener('click', (event) => {
    const details = menu();
    if (details?.open) {
      const inside = details.contains(event.target);
      if (!inside || event.target.closest('nav a')) details.open = false;
    }
    const root = products();
    if (root && event.target.closest('.nav-products-panel a')) {
      root.classList.add('is-dismissed');
      setProducts(false);
      document.activeElement?.blur();
    }
  });

  const productsEvent = (type, open) =>
    document.addEventListener(
      type,
      (event) => {
        const root = products();
        if (!root || !root.contains(event.target)) return;
        // Only entering or leaving the menu as a whole changes its state.
        if (root.contains(event.relatedTarget)) return;
        if (open) {
          root.classList.remove('is-dismissed');
          setProducts(true);
        } else {
          root.classList.remove('is-dismissed');
          setProducts(false);
        }
      },
      true,
    );
  productsEvent('mouseover', true);
  productsEvent('focusin', true);
  productsEvent('mouseout', false);
  productsEvent('focusout', false);
})();
