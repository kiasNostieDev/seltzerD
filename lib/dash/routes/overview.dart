import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seltzer_revisited/dash/data/chart_data.dart';
import 'package:seltzer_revisited/dash/widgets/app_bar.dart';
import 'package:seltzer_revisited/dash/widgets/chart.dart';
import 'package:seltzer_revisited/dash/widgets/drug_card.dart';
import 'package:seltzer_revisited/dash/widgets/overview_card.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class OverView extends StatefulWidget {
  const OverView({Key? key}) : super(key: key);

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  final List<ChartData> data = [
    ChartData(year: '2016', clients: 200, barColor: charts.ColorUtil.fromDartColor(const Color(0xffFFE9AC))),
    ChartData(year: '2017', clients: 900, barColor: charts.ColorUtil.fromDartColor(const Color(0xffFFE9AC))),
    ChartData(year: '2018', clients: 1400, barColor: charts.ColorUtil.fromDartColor(const Color(0xffFFE9AC))),
    ChartData(year: '2019', clients: 3000, barColor: charts.ColorUtil.fromDartColor(const Color(0xffB8E6C7))),
    ChartData(year: '2020', clients: 8000, barColor: charts.ColorUtil.fromDartColor(const Color(0xffB8E6C7))),
    ChartData(year: '2021', clients: 300, barColor: charts.ColorUtil.fromDartColor(const Color(0xffFFE9AC))),
    ChartData(year: '2022', clients: 2400, barColor: charts.ColorUtil.fromDartColor(const Color(0xffFFE9AC))),
    ChartData(year: '2023', clients: 5700, barColor: charts.ColorUtil.fromDartColor(const Color(0xffB8E6C7))),
    ChartData(year: '2024', clients: 100, barColor: charts.ColorUtil.fromDartColor(const Color(0xffFFE9AC))),
    ChartData(year: '2025', clients: 430, barColor: charts.ColorUtil.fromDartColor(const Color(0xffFFE9AC))),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const DashBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 23, 0, 0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: double.infinity,
                        width: 500,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 250.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: const [
                                      OverviewCard(title: 'Doctors', count: '690',),
                                      OverviewCard(title: 'Patients', count: '3003',),
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      OverviewCard(title: 'Pharma', count: '420',),
                                      OverviewCard(title: 'Transactions', count: '5000',),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 26.0,),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Center(
                                  child: Charter(data: data,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: 400,
                        decoration: BoxDecoration(
                          color: const Color(0xffFEEA98),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 100.0,
                              width: double.infinity,
                              child: Text("Prescription Drug Traffic", style: GoogleFonts.raleway(fontSize: 20.0, fontWeight: FontWeight.bold, color: const Color(0xffFEB833)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 350,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: ListView(
                                  children: const [
                                    DrugCard(),
                                    DrugCard(),
                                    DrugCard(),
                                    DrugCard(),
                                    DrugCard(),
                                    DrugCard(),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
