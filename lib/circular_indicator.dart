import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:web_app_ui/model/revenue.dart';

class WebAppCircularPercentIndicator extends StatefulWidget {
  const WebAppCircularPercentIndicator({Key? key}) : super(key: key);

  @override
  State<WebAppCircularPercentIndicator> createState() =>
      _WebAppCircularPercentIndicatorState();
}

class _WebAppCircularPercentIndicatorState
    extends State<WebAppCircularPercentIndicator> {
  final List<Revenue> revenues = RevenueList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: revenues.length,
        itemBuilder: (context, index) {
          final revenue = revenues[index];
          return Container(
            width: 210,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularPercentIndicator(
                  radius: 60,
                  lineWidth: 25,
                  percent: revenue.percentage / 100,
                  startAngle: 180,
                  backgroundColor: const Color.fromARGB(255, 47, 51, 63),
                  linearGradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 58, 222, 232),
                      Color.fromARGB(255, 30, 110, 169),
                    ],
                  ),
                  center: Text(
                    "${revenue.percentage}%",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 157, 171, 199),
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  revenue.text.toUpperCase(),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 157, 171, 199),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
