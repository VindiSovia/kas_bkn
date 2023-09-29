// import 'package:charts_flutter/flutter.dart' as charts;

// Future<List<charts.Series>> _createBarChartSeries() async {
//   List<Map<String, dynamic>> data = await getDataFromDatabase();

//   List<YourDataClass> chartData = data.map((item) {
//     return YourDataClass(
//       item['data_value'],
//       // Add other data properties if needed
//     );
//   }).toList();

//   return [
//     charts.Series<YourDataClass, String>(
//       id: 'chartData',
//       colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//       domainFn: (YourDataClass data, _) => data.domain,
//       measureFn: (YourDataClass data, _) => data.measure,
//       data: chartData,
//     ),
//   ];
// }

// // class YourDataClass {
//   final String domain;
//   final int measure;

//   YourDataClass(this.domain, this.measure);
// }
