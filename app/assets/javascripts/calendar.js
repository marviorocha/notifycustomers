$(document).ready(function() {


    $('input[name="client[birthday]"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true,
        minYear: 1901,
        maxYear: parseInt(moment().format('YYYY'),10),
        opens: "center",
        drops: "up",
        locale: {
      "format": "YYYY/MM/DD",
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
