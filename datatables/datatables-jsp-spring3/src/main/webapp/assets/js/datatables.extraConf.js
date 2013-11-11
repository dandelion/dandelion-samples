{
	"fnRowCallback" : function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
    $('td:eq(0)', nRow).css('color', 'red');
    $('td:eq(1)', nRow).css('color', 'green');
    $('td:eq(2)', nRow).css('color', 'gold');
    $('td:eq(3)', nRow).css('color', 'blue');
    $('td:eq(4)', nRow).css('color', 'darkorange');
    return nRow; 
  }
}
