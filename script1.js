google.load('visualization', '1.0', {'packages':['corechart']});
      
      // Set a callback to run when the Google Visualization API is loaded.
google.setOnLoadCallback(drawChart);
      
      // Callback that creates and populates a data table, 
      // instantiates the pie chart, passes in the data and
      // draws it.
function drawChart() {

      // Create the data table.
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'ip-adr');
    data.addColumn('number', 'out-going connections');
    data.addRows([