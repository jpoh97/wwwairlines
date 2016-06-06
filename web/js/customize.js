$(document).ready(function () {
    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15 // Creates a dropdown of 15 years to control year
    });
    $('.modal-trigger').leanModal();
    $('select').material_select();
    $('input[type=radio]').click(function () {
        var checkval = $(this).val();
        var regreso = document.getElementById('fecharegreso');
        var txtregreso = document.getElementById('textofecharegreso');
        if (checkval === '1') {
            regreso.style.display = 'none';
            txtregreso.style.display = 'none';
        } else {
            regreso.style.display = 'block';
            txtregreso.style.display = 'block';
        }
    });
});

function validNumber() {
    return (event.ctrlKey || event.altKey
            || (47 < event.keyCode && event.keyCode < 58 && event.shiftKey === false)
            || (95 < event.keyCode && event.keyCode < 106)
            || (event.keyCode === 8) || (event.keyCode === 9)
            || (event.keyCode > 34 && event.keyCode < 40)
            || (event.keyCode === 46));
}

function theValidator() {
    var textBox = document.getElementsByClassName('validator');
    //alert(textBox[1].value.length);
    for (var i = textBox.length - 1; i >= 0; i--) {
        if (textBox[i].value.length === 0)
        {
            alert('Faltan campos por llenar');
            return false;
        }
    }
}
;

$("#tarjeta").keypress(function () {
    if ($(this).val().length === 15) {
        $("#pagarbtn").removeAttr('disabled');
    } else {
        $("#pagarbtn").attr('disabled', 'disabled');
    }
});