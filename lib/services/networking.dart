import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    print(url);
    Response response = await get(Uri.parse(url));
    print(response);
    if (response.statusCode == 200) {
      String data = response.body;
      // double temperature = decodedData['main']['temp'];
      // int condition = decodedData['weather'][0]['id'];
      // String cityName = decodedData['name'];

      // print(temperature);
      // print(condition);
      // print(cityName);
      return jsonDecode(data);
    } else {
      print('debug');
      print(response.statusCode);
    }
    print(response.body);
  }
}
