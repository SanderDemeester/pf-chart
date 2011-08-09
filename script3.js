    ]);
      // Set chart options
    var optionsID_NUMBER = {'title':'title_replace',
                   'width':breedte_replace,
                   'height':hoogte_replace};

      // Instantiate and draw our chart, passing in some options.
    var chartID_NUMBER = new google.visualization.PieChart(document.getElementById('chart_div_ID_NUMBER'));
    chartID_NUMBER.draw(dataID_NUMBER, optionsID_NUMBER);
