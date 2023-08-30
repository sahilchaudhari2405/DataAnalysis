class ChartData {
  ChartData({this.x, this.y});
  final String? x;
  final int? y;
}

String date() {
  DateTime today = DateTime.now();
  String dateStr = "${today.day}.${today.month}.${today.year}";
  return dateStr;
}
