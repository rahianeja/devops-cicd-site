document.addEventListener("DOMContentLoaded", function () {
  var footer = document.getElementById("load-info");
  if (footer) {
    footer.textContent = "Page loaded at " + new Date().toLocaleString();
  }
});
