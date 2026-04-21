/* ── Hamburger toggle ── */
(function () {
  var toggle = document.querySelector('.nav-toggle');
  var nav = document.querySelector('.nav');
  if (toggle && nav) {
    toggle.addEventListener('click', function () {
      var open = nav.classList.toggle('open');
      toggle.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
  }

  /* ── Scroll Reveal ── */
  var reveals = document.querySelectorAll('.reveal');
  if ('IntersectionObserver' in window) {
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (e) {
        if (e.isIntersecting) { e.target.classList.add('visible'); io.unobserve(e.target); }
      });
    }, { threshold: 0.12 });
    reveals.forEach(function (el) { io.observe(el); });
  } else {
    reveals.forEach(function (el) { el.classList.add('visible'); });
  }

  /* ── Active nav link ── */
  var navLinks = document.querySelectorAll('.nav a');
  var path = window.location.pathname;
  navLinks.forEach(function (a) {
    if (a.getAttribute('href') === path || (path === '/' && a.getAttribute('href') === '#home')) {
      a.classList.add('active');
    }
  });

  /* ── Free Consultation button: call on mobile, WhatsApp on desktop ── */
  var consultBtn = document.querySelector('.js-consult-btn');
  if (consultBtn) {
    consultBtn.addEventListener('click', function (e) {
      var isMobile = /Android|iPhone|iPad|iPod|Windows Phone/i.test(navigator.userAgent);
      var phone = this.dataset.phone;
      var waUrl = this.dataset.wa;

      if (isMobile) {
        // On mobile: attempt tel: dial; browser handles gracefully if unsupported
        e.preventDefault();
        var telLink = document.createElement('a');
        telLink.href = 'tel:' + phone;
        telLink.click();
      } else {
        // On desktop: open WhatsApp Web
        e.preventDefault();
        window.open(waUrl, '_blank', 'noopener,noreferrer');
      }
    });
  }


  var form = document.querySelector('.js-contact-form');
  if (form) {
    form.addEventListener('submit', function (e) {
      e.preventDefault();
      var btn = form.querySelector('button[type="submit"]');
      if (btn) { btn.textContent = 'Sending\u2026'; btn.disabled = true; }
      setTimeout(function () {
        form.innerHTML = '<div style="text-align:center;padding:40px 0"><p style="font-size:1.1rem;color:#0A1628;font-weight:600">Thank you! We\'ll get back to you within 24 hours.</p><p style="margin-top:8px;font-size:0.9rem;color:#6B7280">Our team will contact you shortly.</p></div>';
      }, 800);
    });
  }
})();
