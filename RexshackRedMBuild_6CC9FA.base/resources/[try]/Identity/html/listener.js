$(function() {
  $('#idcard').hide();
  window.addEventListener('message', function(event) {
    var item = event.data;
    if (item.type === "ui" && item.display === true) {
      $('#idcard').show();
	  document.getElementById('name').innerHTML = " " + item.name;
	  document.getElementById('surname').innerHTML = " " + item.surname;
	  document.getElementById('corsivo').innerHTML = " " + item.corsivo;
	  document.getElementById('birthdate').innerHTML = " " + item.birthdate;
      document.getElementById('gender').innerHTML = " " + item.gender1;
    } else {
      $('#idcard').hide();
    }
  }, false);
});