# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#employees-table').dataTable
    processing: true
    serverSide: true
    ajax: $('#employees-table').data('source')
    pagingType: 'full_numbers'
    language: {
      "decimal":        "",
      "emptyTable":     "No existe datos",
      "info":           "Mostrando del _START_ al _END_ de _TOTAL_ entradas",
      "infoEmpty":      "Mostrando 0 a 0 de 0 entradas",
      "infoFiltered":   "(Filtrando de _MAX_ total entradas)",
      "infoPostFix":    "",
      "thousands":      ",",
      "lengthMenu":     "Mostrar _MENU_ entradas",
      "loadingRecords": "Cargando...",
      "processing":     "Processing...",
      "search":         "Buscar:",
      "zeroRecords":    "No se encontraron datos",
      "paginate": {
          "first":      "Primero",
          "last":       "Ultimo",
          "next":       "Siguiente",
          "previous":   "Anterior"
      },
      "aria": {
          "sortAscending":  ": activate to sort column ascending",
          "sortDescending": ": activate to sort column descending"
      }

    }
