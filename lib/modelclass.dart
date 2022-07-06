class EventListingAppointemntmodel {


  int? id;
  String? name;

  String? startTime;

  String? endTime;
  String? date;

  EventListingAppointemntmodel({this.name,this.id,this.date,this.startTime,this.endTime});

  factory EventListingAppointemntmodel.fromJson(Map<String, dynamic> json) {
    return EventListingAppointemntmodel(
      id: json['_id'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      name: json['name'],

    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['name'] = this.name;
    data['_id'] = this.id;
    return data;
  }
}