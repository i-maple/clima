import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkingHelper {
  NetworkingHelper(this.url);
  final String url;

  Future getWeatherData() async {

    
    final String apiUrl = url;
    final Uri finalUrl = Uri.parse(apiUrl);
    http.Response response = await http.get(finalUrl);

    if (response.statusCode == 200) {
      String data = response.body;
      var jsonData = jsonDecode(data);
      return jsonData;
    } else {
      return (response.statusCode);
    }
  }
}
