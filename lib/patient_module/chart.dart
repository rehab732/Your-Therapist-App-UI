/*import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class chart extends StatelessWidget{
  final List<Color>nn=[
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  Widget build(BuildContext context) => LineChart(
    LineChartData(
      minX:0,
      maxX: 6,
      minY: 0,
      maxY:5,
      gridData: FlGridData(
        show: true,
        getDrawingHorizontalLine:(value){
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        drawVerticalLine: true,
        getDrawingVerticalLine:(value){
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      borderData: FlBorderData(
        show:true,
        border: Border.all(color: const Color(0xff37434d),width: 1),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 0),
            FlSpot(1, 2),
            FlSpot(2, 5),
            FlSpot(3, 1),
            FlSpot(4, 4),
            FlSpot(5, 0),
            FlSpot(6, 3),
          ],
          isCurved: true,
          colors:nn,
          barWidth:5,
         // dotData: FlDotData(show: false),
          belowBarData: BarAreaData(
            show:true,
            colors:nn.map((color) => color.withOpacity(0.3)).toList(),
          )

        )
      ]

    ),
  ); 
    
  }
*/
