/* Shared site interactions */
(function () {
  var waNumber = '971502361789';
  var toggle = document.querySelector('.nav-toggle');
  var nav = document.querySelector('.nav');

  if (toggle && nav) {
    toggle.addEventListener('click', function () {
      var open = nav.classList.toggle('open');
      toggle.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
  }

  var reveals = document.querySelectorAll('.reveal');
  if ('IntersectionObserver' in window) {
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          io.unobserve(entry.target);
        }
      });
    }, { threshold: 0.12 });

    reveals.forEach(function (element) {
      io.observe(element);
    });
  } else {
    reveals.forEach(function (element) {
      element.classList.add('visible');
    });
  }

  var navLinks = document.querySelectorAll('.nav a');
  var path = window.location.pathname.replace(/index\.html$/, '');
  navLinks.forEach(function (link) {
    var href = link.getAttribute('href');
    var isHome = path === '/' && href === '#home';
    var isServicePage = path.indexOf('/services/') === 0 && href.indexOf('#services') !== -1;
    var isCountryPage = path.indexOf('/countries/') === 0 && href.indexOf('#countries') !== -1;

    if (href === path || isHome || isServicePage || isCountryPage) {
      link.classList.add('active');
    }

    if (toggle && nav) {
      link.addEventListener('click', function () {
        nav.classList.remove('open');
        toggle.setAttribute('aria-expanded', 'false');
      });
    }
  });

  var consultBtn = document.querySelector('.js-consult-btn');
  if (consultBtn) {
    consultBtn.addEventListener('click', function (event) {
      var isMobile = /Android|iPhone|iPad|iPod|Windows Phone/i.test(navigator.userAgent);
      var phone = this.dataset.phone;
      var waUrl = this.dataset.wa || ('https://wa.me/' + waNumber + '?text=Hello%20Fidelis%20Global%20Services');

      if (isMobile) {
        event.preventDefault();
        var telLink = document.createElement('a');
        telLink.href = 'tel:' + phone;
        telLink.click();
      } else {
        event.preventDefault();
        window.open(waUrl, '_blank', 'noopener,noreferrer');
      }
    });
  }

  var form = document.querySelector('.js-contact-form');
  if (form) {
    form.addEventListener('submit', function (event) {
      event.preventDefault();

      var nameEl = form.querySelector('#c-name');
      var phoneEl = form.querySelector('#c-phone');
      var emailEl = form.querySelector('#c-email');
      var serviceEl = form.querySelector('#c-service');
      var msgEl = form.querySelector('#c-msg');

      var name = nameEl ? nameEl.value.trim() : '';
      var phone = phoneEl ? phoneEl.value.trim() : '';
      var email = emailEl ? emailEl.value.trim() : '';
      var service = serviceEl && serviceEl.value ? serviceEl.value : 'Not specified';
      var message = msgEl ? msgEl.value.trim() : '';

      var errors = [];
      if (!name) { errors.push(nameEl); }
      if (!phone) { errors.push(phoneEl); }
      if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) { errors.push(emailEl); }

      form.querySelectorAll('.finput').forEach(function (element) {
        element.style.borderColor = '';
      });

      if (errors.length) {
        errors.forEach(function (element) {
          if (element) {
            element.style.borderColor = '#e53e3e';
          }
        });
        errors[0].focus();
        return;
      }

      var waMessage =
        'Hello, I would like a consultation.\n\n' +
        'Name: ' + name + '\n' +
        'Phone: ' + phone + '\n' +
        'Email: ' + email + '\n' +
        'Service: ' + service + '\n' +
        (message ? 'Message: ' + message : '');

      var waUrl = 'https://wa.me/' + waNumber + '?text=' + encodeURIComponent(waMessage);
      var btn = form.querySelector('button[type="submit"]');

      if (btn) {
        btn.textContent = 'Opening WhatsApp...';
        btn.disabled = true;
      }

      setTimeout(function () {
        window.open(waUrl, '_blank', 'noopener,noreferrer');
        form.innerHTML = '<div style="text-align:center;padding:40px 0"><p style="font-size:1.1rem;color:#0A1628;font-weight:600">WhatsApp opened successfully.</p><p style="margin-top:8px;font-size:0.9rem;color:#6B7280">If it did not open, <a href="' + waUrl + '" target="_blank" rel="noopener noreferrer" style="color:#C9A227;">use this link</a>.</p></div>';
      }, 600);
    });
  }
})();
