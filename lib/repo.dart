
import 'package:test1/webapiprovider.dart';

import 'modelclass.dart';

class EventListAppointemntRepository {
  Future<List<EventListingAppointemntmodel>>
  getDoctoreventcalenderList() async {
    final Map<String, dynamic> _queryParameters = <String, dynamic>{

    };
    print("_queryParameters : " + _queryParameters.toString());

    final response = await WebApiProvider().getData(
        url: "challenge/v1/schedule",
        isPost: true,
        queryParameters: _queryParameters,
        isQueryParmeter: false);
    print("Response->>>>>${response}");
    return (response as List)
        .map((x) => EventListingAppointemntmodel.fromJson(x))
        .toList();
  }
}
