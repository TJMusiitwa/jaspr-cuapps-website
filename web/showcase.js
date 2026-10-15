// Home suite showcase: the stage shows the product whose chapter is crossing
// the reading line (the middle of the screen on desktop, the strip below the
// pinned stage on phones). Also marks the stage while it is on screen so a
// page transition only morphs it when the visitor can see it (motion.css).
// Bound from a MutationObserver so it survives hydration and client-side
// re-renders; the stage's state lives in data attributes only.
(() => {
  const bound = new WeakSet();
  const phone = matchMedia('(max-width: 760px)');

  const bind = (root) => {
    if (bound.has(root)) return;
    bound.add(root);
    const stage = root.querySelector('.showcase-stage');
    const chapters = [...root.querySelectorAll('.showcase-chapter')];
    if (!stage || !chapters.length) return;

    const show = (chapter) => {
      stage.dataset.active = chapter.dataset.chapter;
      if (chapter.dataset.register) stage.dataset.register = chapter.dataset.register;
      else delete stage.dataset.register;
    };

    let reader;
    const observe = () => {
      reader?.disconnect();
      // A one-pixel band across the screen: whichever chapter is in it is
      // the one being read.
      const line = phone.matches ? 72 : 50;
      reader = new IntersectionObserver(
        (entries) => {
          for (const entry of entries) if (entry.isIntersecting) show(entry.target);
        },
        { rootMargin: `-${line}% 0px -${99 - line}% 0px` },
      );
      chapters.forEach((chapter) => reader.observe(chapter));
    };
    observe();
    phone.addEventListener('change', observe);

    new IntersectionObserver(([entry]) => {
      stage.toggleAttribute('data-in-view', entry.isIntersecting);
    }).observe(stage);
  };

  const scan = () => document.querySelectorAll('.showcase').forEach(bind);
  scan();
  new MutationObserver(scan).observe(document.documentElement, { childList: true, subtree: true });
})();
