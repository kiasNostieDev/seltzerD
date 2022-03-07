import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:seltzer_revisited/dash/data/chart_data.dart';

class Charter extends StatelessWidget {
  final List<ChartData> data;
  const Charter({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChartData, String>> series = [
      charts.Series(
        id: "Clients",
        data: data,
        domainFn: (ChartData series, _)=> series.year,
        measureFn: (ChartData series, _)=> series.clients,
        colorFn: (ChartData series, _)=> series.barColor,
      )
    ];
    return Container(
      height: 500.0,
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text("OverView of Clients", style: GoogleFonts.montserrat(fontSize: 19.0),),
              Expanded(child: charts.BarChart(series, animate: true,))
            ],
          ),
        ),
      ),
    );
  }
}
