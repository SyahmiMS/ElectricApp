import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample3 extends StatefulWidget {
  @override
  _LineChartSample3State createState() => _LineChartSample3State();
  static const routeName = '/LineChartSample3';
}

class _LineChartSample3State extends State<LineChartSample3> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          // child: Container(
          //   decoration: BoxDecoration(
          //       borderRadius: const BorderRadius.all(
          //         Radius.circular(18),
          //       ),
          //       color: const Color(0xff232d37)),
          //   child: Padding(
          //     padding: const EdgeInsets.only(
          //         right: 18.0, left: 12.0, top: 24, bottom: 12),
          child: LineChart(
            mainData(),
          ),
          //   ),
          // ),
        ),
        // SizedBox(
        //   width: 60,
        //   height: 34,
        //   child: FlatButton(
        //     onPressed: () {
        //       setState(() {
        //         showAvg = !showAvg;
        //       });
        //     },
        //     child: Text(
        //       'avg',
        //       style: TextStyle(
        //           fontSize: 12,
        //           color:
        //               showAvg ? Colors.white.withOpacity(0.5) : Colors.white),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalGrid: true,
        getDrawingHorizontalGridLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalGridLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle: TextStyle(
              color: const Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'May';
              case 2:
                return 'Jun';
              case 4:
                return 'July';
              case 6:
                return 'Aug';
              // case 9:
              //   return 'Sep';
              // case 11:
              //   return 'Oct';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: TextStyle(
            color: const Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '0 Units';
              case 50:
                return '50 Units';
              case 100:
                return '100 Units';
        
            }
            return '';
          },
          reservedSize: 50,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 100,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 30),
            FlSpot(2, 51),
            FlSpot(4, 53),
            FlSpot(6, 60),
            // FlSpot(8, 50),
            // FlSpot(9.5, 70),
            // FlSpot(11, 60),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  // LineChartData avgData() {
  //   return LineChartData(
  //     lineTouchData: const LineTouchData(enabled: false),
  //     gridData: FlGridData(
  //       show: true,
  //       drawHorizontalGrid: true,
  //       getDrawingVerticalGridLine: (value) {
  //         return const FlLine(
  //           color: Color(0xff37434d),
  //           strokeWidth: 1,
  //         );
  //       },
  //       getDrawingHorizontalGridLine: (value) {
  //         return const FlLine(
  //           color: Color(0xff37434d),
  //           strokeWidth: 1,
  //         );
  //       },
  //     ),
  //     titlesData: FlTitlesData(
  //       show: true,
  //       bottomTitles: SideTitles(
  //         showTitles: true,
  //         reservedSize: 22,
  //         textStyle: TextStyle(
  //             color: const Color(0xff68737d),
  //             fontWeight: FontWeight.bold,
  //             fontSize: 16),
  //         getTitles: (value) {
  //           switch (value.toInt()) {
  //             case 2:
  //               return 'MAR';
  //             case 5:
  //               return 'JUN';
  //             case 8:
  //               return 'SEP';
  //           }
  //           return '';
  //         },
  //         margin: 8,
  //       ),
  //       leftTitles: SideTitles(
  //         showTitles: true,
  //         textStyle: TextStyle(
  //           color: const Color(0xff67727d),
  //           fontWeight: FontWeight.bold,
  //           fontSize: 15,
  //         ),
  //         getTitles: (value) {
  //           switch (value.toInt()) {
  //             case 1:
  //               return '100';
  //             case 3:
  //               return '30k';
  //             case 5:
  //               return '50k';
  //           }
  //           return '';
  //         },
  //         reservedSize: 28,
  //         margin: 12,
  //       ),
  //     ),
  //     borderData: FlBorderData(
  //         show: true,
  //         border: Border.all(color: const Color(0xff37434d), width: 1)),
  //     minX: 0,
  //     maxX: 11,
  //     minY: 0,
  //     maxY: 6,
  //     lineBarsData: [
  //       LineChartBarData(
  //         spots: const [
  //           FlSpot(0, 3.44),
  //           FlSpot(2.6, 3.44),
  //           FlSpot(4.9, 3.44),
  //           FlSpot(6.8, 3.44),
  //           FlSpot(8, 3.44),
  //           FlSpot(9.5, 3.44),
  //           FlSpot(11, 3.44),
  //         ],
  //         isCurved: true,
  //         colors: [
  //           ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //               .lerp(0.2),
  //           ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //               .lerp(0.2),
  //         ],
  //         barWidth: 5,
  //         isStrokeCapRound: true,
  //         dotData: const FlDotData(
  //           show: false,
  //         ),
  //         belowBarData: BarAreaData(show: true, colors: [
  //           ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //               .lerp(0.2)
  //               .withOpacity(0.1),
  //           ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //               .lerp(0.2)
  //               .withOpacity(0.1),
  //         ]),
  //       ),
  //     ],
  //   );
  // }
}
