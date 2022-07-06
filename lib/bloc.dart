import 'dart:async';

import 'package:test1/repo.dart';
import 'package:test1/response.dart';

import 'modelclass.dart';



class Eventcalenderbloc {
  EventListAppointemntRepository _eventcalenderRepository =
  new EventListAppointemntRepository();
  final _eventcalenderListDataController =
  StreamController<Response<List<EventListingAppointemntmodel>>>();

  StreamSink<Response<List<EventListingAppointemntmodel>>> get eventcalenderListDataSink =>
      _eventcalenderListDataController.sink;

  Stream<Response<List<EventListingAppointemntmodel>>>? get eventcalenderDataStream =>
      _eventcalenderListDataController.stream;

  Eventcalenderbloc() {
    _eventcalenderRepository = EventListAppointemntRepository();
    getcalenderlList();
    print("fsfds");
  }

  getcalenderlList() async {
    eventcalenderListDataSink.add(Response.loading('Fetching...'));
    try {
      List<EventListingAppointemntmodel> _eventList =
      await _eventcalenderRepository.getDoctoreventcalenderList();
      eventcalenderListDataSink.add(Response.success(_eventList));
    } catch (e) {
      eventcalenderListDataSink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _eventcalenderListDataController.close();
  }
}
