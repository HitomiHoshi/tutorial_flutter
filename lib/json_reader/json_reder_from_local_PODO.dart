class JsonReaderPODO {
  String description;
  String time;
  String date;

  JsonReaderPODO({this.description, this.time, this.date});

  factory JsonReaderPODO.fromJson(Map<String, dynamic> json) {
    return new JsonReaderPODO(
      description: json['description'] as String,
      time: json['time'] as String,
      date: json['date'] as String,
    );
  }
}
