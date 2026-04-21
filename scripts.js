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


  /* ── Contact form → WhatsApp ── */
  var form = document.querySelector('.js-contact-form');
  if (form) {
    form.addEventListener('submit', function (e) {
      e.preventDefault();

      var nameEl    = form.querySelector('#c-name');
      var phoneEl   = form.querySelector('#c-phone');
      var emailEl   = form.querySelector('#c-email');
      var serviceEl = form.querySelector('#c-service');
      var msgEl     = form.querySelector('#c-msg');

      var name    = nameEl  ? nameEl.value.trim()    : '';
      var phone   = phoneEl ? phoneEl.value.trim()   : '';
      var email   = emailEl ? emailEl.value.trim()   : '';
      var service = serviceEl && serviceEl.value ? serviceEl.value : 'Not specified';
      var message = msgEl   ? msgEl.value.trim()     : '';

      /* ── Validation ── */
      var errors = [];
      if (!name)  errors.push(nameEl);
      if (!phone) errors.push(phoneEl);
      if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) errors.push(emailEl);

      form.querySelectorAll('.finput').forEach(function (el) { el.style.borderColor = ''; });
      if (errors.length) {
        errors.forEach(function (el) { if (el) el.style.borderColor = '#e53e3e'; el.focus(); });
        errors[0].focus();
        return;
      }

      /* ── Build WhatsApp message ── */
      var waMessage =
        'Hello, I would like a consultation.\n\n' +
        'Name: '    + name    + '\n' +
        'Phone: '   + phone   + '\n' +
        'Email: '   + email   + '\n' +
        'Service: ' + service + '\n' +
        (message ? 'Message: ' + message : '');

      var waUrl = 'https://wa.me/971553150089?text=' + encodeURIComponent(waMessage);

      /* ── Feedback then redirect ── */
      var btn = form.querySelector('button[type="submit"]');
      if (btn) { btn.textContent = 'Opening WhatsApp\u2026'; btn.disabled = true; }

      setTimeout(function () {
        window.open(waUrl, '_blank', 'noopener,noreferrer');
        form.innerHTML = '<div style="text-align:center;padding:40px 0"><p style="font-size:1.1rem;color:#0A1628;font-weight:600">✅ WhatsApp opened! We\'ll get back to you shortly.</p><p style="margin-top:8px;font-size:0.9rem;color:#6B7280">If WhatsApp didn\'t open, <a href="' + waUrl + '" target="_blank" rel="noopener noreferrer" style="color:#C9A227;">click here</a>.</p></div>';
      }, 600);
    });
  }
})();
