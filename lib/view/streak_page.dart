import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Import the fl_chart package
import 'package:urbar_culture/view/colors/app_color.dart';

class StreakPage extends StatelessWidget {
  const StreakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bagroundtheme,
        centerTitle: true,
        title: const Text(
          'Streaks',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: AppColor.bagroundtheme,
      body: Padding(
        padding: const EdgeInsets.all(
            16.0), // Consistent padding for the entire body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              'Today\'s Goals: 3 Streak Days',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: AppColor.softcolor,
                borderRadius: BorderRadius.circular(15),
              ),
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Streak Days',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '2',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Daily Streak',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            const Text(
              '2',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  'Last 30 days ',
                  style: TextStyle(
                    color: AppColor.subtitilcolor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  ' +100%',
                  style: TextStyle(
                    color: Color.fromARGB(255, 49, 126, 52),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: LineChart(
                  LineChartData(
                    gridData: const FlGridData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 50,
                          interval: 2, // Adjust this for more or less spacing
                          getTitlesWidget: (value, meta) {
                            final titles = [
                              '1D',
                              '1W',
                              '1w',
                              '1M',
                              '1M',
                              '1D',
                              '3M',
                              '1M',
                              '1Y',
                              '1Y'
                            ];
                            final index = value.toInt();
                            if (index >= 0 && index < titles.length) {
                              return SideTitleWidget(
                                axisSide: AxisSide.bottom,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          20.0), // Adjust horizontal padding
                                  child: Text(
                                    titles[index],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.subtitilcolor,
                                    ),
                                  ),
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 40,
                          getTitlesWidget: (value, meta) {
                            return const SideTitleWidget(
                              axisSide: AxisSide.left,
                              child: Text(
                                '',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    minX: 0,
                    maxX: 8,
                    minY: 0,
                    maxY: 10,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          const FlSpot(0, 1),
                          const FlSpot(0, 5),
                          const FlSpot(1, 5),
                          const FlSpot(2, 1),
                          const FlSpot(3, 7),
                          const FlSpot(4, 1),
                          const FlSpot(5, 7),
                          const FlSpot(6, 1),
                          const FlSpot(7, 5),
                          const FlSpot(8, 4),
                          const FlSpot(9, 5)
                        ],
                        isCurved: true,
                        color: AppColor.subtitilcolor,
                        dotData: const FlDotData(show: false),
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text('Keep it up! You are on A roll.'),
            const SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                  color: AppColor.softcolor,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                'Get Started',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              )),
            )
          ],
        ),
      ),
    );
  }
}
