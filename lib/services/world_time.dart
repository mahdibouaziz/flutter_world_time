import 'dart:convert';

import 'package:http/http.dart';

class WorldTime {
  String location;
  String flag;
  String url;

  late String time;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    // Make the request
    Response response =
        await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
    Map data = jsonDecode(response.body);
    // print(data);

    // Get the needed data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    // print(datetime);
    // print(offset);

    // Create date time object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    // print(now);

    // set the global time property
    time = now.toString();
  }
}
