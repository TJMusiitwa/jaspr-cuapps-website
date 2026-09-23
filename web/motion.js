// Keeps the page-open entrances in web/motion.css playing once.
// While Jaspr hydrates the server-rendered page it re-inserts existing nodes
// (to strip formatting whitespace, re-parent fragments and mount the @client
// root), and re-inserting an element restarts its CSS animations, so every
// entrance replayed from the start. When that happens, the restarted
// animations are moved back onto the original start time before the next
// paint, so they carry on as if nothing had happened.
(() => {
  const isEntrance = (a) =>
    a.timeline === document.timeline && a.animationName?.startsWith('motion-');

  let origin = null;
  const findOrigin = () => {
    const starts = document.getAnimations().filter(isEntrance).map((a) => a.startTime);
    const known = starts.filter((t) => t != null);
    if (known.length) origin = Math.min(...known);
    else if (!starts.length || known.length < starts.length) requestAnimationFrame(findOrigin);
  };
  requestAnimationFrame(findOrigin);

  const restarted = new Set();
  const resync = () => {
    for (const el of restarted) {
      if (!el.isConnected) continue;
      for (const a of el.getAnimations({ subtree: true })) {
        if (isEntrance(a)) a.startTime = origin;
      }
    }
    restarted.clear();
  };

  const onCancel = (event) => {
    if (origin == null || !event.animationName.startsWith('motion-')) return;
    if (!restarted.size) queueMicrotask(resync);
    restarted.add(event.target);
  };

  // Only hydration moves nodes like this, so stop listening once it has had
  // time to finish; later client-side navigations animate their new pages
  // normally.
  addEventListener('animationcancel', onCancel, true);
  setTimeout(() => removeEventListener('animationcancel', onCancel, true), 8000);
})();
