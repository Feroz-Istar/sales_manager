var chart = new Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: null
    },
    subtitle: {
        text: null
    },
    xAxis: {
        categories: [
            'Mon',
            'Tue',
            'Wed',
            'Thu',
            'Fri',
            'Sat',
            'Sun',
        ],
        crosshair: true
    },
    yAxis: {
        min: 0,
        max: 600,
        tickInterval: 200,
        title: null
       
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f}</b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0,
            
        },
        series: {
                pointWidth: 20,
                groupPadding: 0.2
            },
           
      
    },
    series: [{
        name: 'New Calls',
        data: [149.9, 71.5, 206.4, 529.2, 344.0, 476.0, 135.6],
        color: '#6773ff',

    }, {
        name: 'Connected Calls',
        data: [283.6, 378.8, 498.5, 693.4, 106.0, 444.5, 105.0],
         color: '#22bfa9',

    }, {
        name: 'Follow Up',
        data: [148.9, 338.8, 349.3, 471.4, 471.0, 548.3, 259.0],
         color: '#f48045'

    }],
    exporting: { enabled: false } ,
      credits: {
    enabled: false
  },
  legend: {
	  enabled: false
        },
});