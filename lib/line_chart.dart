import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class WebAppLineChart extends StatefulWidget {
  const WebAppLineChart({Key? key}) : super(key: key);

  @override
  State<WebAppLineChart> createState() => _WebAppLineChartState();
}

class _WebAppLineChartState extends State<WebAppLineChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 10,
          backgroundColor: const Color.fromARGB(255, 41, 45, 54),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 2),
                const FlSpot(1, 2.5),
                const FlSpot(2, 2.2),
                const FlSpot(3, 4),
                const FlSpot(4, 2.8),
                const FlSpot(5, 8.5),
                const FlSpot(6, 4),
                const FlSpot(7, 4.5),
                const FlSpot(8, 2.5),
                const FlSpot(9, 4),
                const FlSpot(10, 2.8),
              ],
              isCurved: true,
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 58, 222, 232),
                  Color.fromARGB(255, 30, 110, 169),
                ],
              ),
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 58, 222, 232),
                    Color.fromARGB(255, 30, 110, 169),
                  ],
                ),
              ),
            )
          ],
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color.fromARGB(255, 157, 171, 199),
                strokeWidth: 0.2,
              );
            },
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color.fromARGB(255, 157, 171, 199),
                strokeWidth: 0.2,
              );
            },
            verticalInterval: 2,
            horizontalInterval: 1,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          titlesData: FlTitlesData(
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    String text = "";
                    switch (value.toInt()) {
                      case 1:
                        text = "100";
                        break;
                      case 2:
                        text = "150";
                        break;
                      case 3:
                        text = "200";
                        break;
                      case 4:
                        text = "250";
                        break;
                      case 5:
                        text = "300";
                        break;
                      case 6:
                        text = "350";
                        break;
                      case 7:
                        text = "400";
                        break;
                      case 8:
                        text = "450";
                        break;
                      case 9:
                        text = "500";
                        break;
                      case 10:
                        text = "";
                        break;
                      default:
                        return Container();
                    }
                    return Text(
                      text,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 157, 171, 199),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
