$(document).ready(function () {
  window.addEventListener('message', function (event) {
    let data = event.data;
    let health = data.health;
    let armour = data.armour;
    $('#health').css('width', health +1 + '%');
    $('#armour').css('width', armour + '%');
    $('#health').text(health +1 + '%');
    $('#armour').text(armour + '%');
  });
});
