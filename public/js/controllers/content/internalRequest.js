//console.log($jsonString);

var $htm = '<table border="1">';
$.each($jsonString, function(i, field) {
    $htm += '<tr>';

    $.each(field, function(i, field2) {
       $htm += '<td>' + field2 + '</td>';
    });

    $htm += '</tr>';
});
$htm += '</table>';

$('div.tableOutput').html($htm);