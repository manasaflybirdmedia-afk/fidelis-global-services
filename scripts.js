document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('.js-form').forEach(function (form) {
    form.addEventListener('submit', function (event) {
      event.preventDefault();
      var formName = form.dataset.formName || 'form';
      var submitButton = form.querySelector('button[type="submit"]');
      if (submitButton) {
        submitButton.disabled = true;
        submitButton.textContent = 'Sending...';
      }
      setTimeout(function () {
        if (submitButton) {
          submitButton.disabled = false;
          submitButton.textContent = form.dataset.submitText || 'Submit';
        }
        var alert = document.createElement('div');
        alert.className = 'form-alert';
        alert.textContent = form.dataset.successMessage || 'Thank you! Your request has been received. We will contact you shortly.';
        form.prepend(alert);
        window.setTimeout(function () {
          if (alert && alert.parentNode) {
            alert.remove();
          }
        }, 7500);
        form.reset();
      }, 850);
    });
  });
});
