import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class chart extends StatelessWidget {
  const chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 400,
      child: LineChart(
          LineChartData(
              minX: 0,
              minY: 40,
              maxX: 11,
              maxY: 145,
              gridData: FlGridData(
                show: true,
                getDrawingHorizontalLine: (value)
                {
                  return FlLine(
                      color: Color(0xFF37434d),
                      strokeWidth: 1
                  );
                },
              ),
              borderData: FlBorderData(
                show: false,
              ),
              lineBarsData: [
                LineChartBarData(

                  spots: [
                    FlSpot(2, 40),
                    FlSpot(3, 50)

                  ],
                  color: Colors.blue,
                  barWidth: 4,
                  isCurved: true,
                )
              ],
              titlesData: FlTitlesData(
                  show: true,
                  topTitles: AxisTitles(
                      sideTitles: SideTitles(
                          showTitles: false
                      )
                  ),
                  rightTitles:AxisTitles(
                      axisNameWidget: Text("mg/dl",),
                      sideTitles: SideTitles(
                        reservedSize: 40,
                        showTitles: true,
                      )
                  ),
                  leftTitles:AxisTitles(
                      sideTitles: SideTitles(
                        reservedSize: 22,
                        showTitles: false,
                      )
                  ),

                  bottomTitles:AxisTitles(
                      axisNameWidget:Text("اليوم",),
                      sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value,title)
                          {
                            String text="";
                            switch(value.toInt())
                            {
                              case 1:
                                text="14/10";
                                break;
                              case 2:
                                text="15/10";
                                break;
                              case 3:
                                text="16/10";
                                break;
                              case 4:
                                text="17/10";
                                break;
                              case 5:
                                text="18/10";
                                break;
                              case 6:
                                text="19/10";
                                break;
                              case 7:
                                text="20/10";
                                break;
                              case 8:
                                text="21/10";
                                break;
                              case 9:
                                text="22/10";
                                break;
                              case 10:
                                text="23/10";
                                break;


                            }
                            return Text(text,style: TextStyle(color: Colors.blue,fontSize: 8),
                            );
                          }
                      )
                  )
              )
          )
      ),
    );
  }
}
