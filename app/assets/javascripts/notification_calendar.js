$(document).ready(function() {


    $('.datepicker').daterangepicker({
        "singleDatePicker": true,
        "showDropdowns": true,
        "timePicker": true,
        "startDate": moment().startOf('DD/MM/YYYY hh:mm'),
        "opens": "center",
        "drops": "up",
        "minDate": moment().startOf('DD/MM/YYYY hh:mm A'),
        "opens": "center",
        "drops": "up",
        locale: {
      "format": "DD/MM/YYYY hh:mm a",
      "applyLabel": "Aplicar",


      "customRangeLabel": "Custom",
      "weekLabel": "W",
      "daysOfWeek": [
          "Dom",
          "Seg",
          "Ter",
          "Qua",
          "Qui",
          "Sex",
          "Sab"
      ],
      "monthNames": [
          "Janeiro",
          "Fevereiro",
          "Março",
          "Abril",
          "Maio",
          "Junho",
          "Julho",
          "Agosto",
          "Setembro",
          "Outubro",
          "Novembro",
          "Dezembro"
      ],

      }
    }, );

});
