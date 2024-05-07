import 'package:flutter/material.dart';
import 'package:myshop/constant.dart';
import 'package:pie_chart/pie_chart.dart';

class picharthodor extends StatelessWidget {
  picharthodor({Key? key}) : super(key: key);

  final dataMap = <String, double>{
    "معدل الحضور لهذا الشهر": 28,
  };

  final colorList = <Color>[
    Colors.deepOrangeAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: PieChart(
        chartLegendSpacing: 15,
        ringStrokeWidth: 15,
        dataMap: dataMap,
        chartType: ChartType.disc,
        baseChartColor: Colors.orangeAccent,
        chartRadius: MediaQuery.of(context).size.width * .25,
        animationDuration: const Duration(seconds: 3),
        chartValuesOptions: const ChartValuesOptions(
            chartValueStyle: TextStyle(fontFamily: KFont, color: Colors.grey),
            showChartValues: true,
            showChartValuesOutside: true,
            showChartValuesInPercentage: true,
            showChartValueBackground: false),
        // Set the options for the legend of the pie chart
        legendOptions: const LegendOptions(
            showLegends: true,
            legendShape: BoxShape.circle,
            legendTextStyle: TextStyle(fontSize: 16, fontFamily: KFont2),
            legendPosition: LegendPosition.bottom,
            showLegendsInRow: true),
        colorList: colorList,
        // chartValuesOptions: ChartValuesOptions(
        //   showChartValuesInPercentage: true,
        // ),
        totalValue: 30,
      ),
    );
  }
}
