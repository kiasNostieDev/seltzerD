import 'package:charts_flutter/flutter.dart' as charts;

class ChartData{
  final String year;
  final int clients;
  final charts.Color barColor;

  ChartData({
    required this.year,
    required this.clients,
    required this.barColor
  });
}