import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper({this.url});

  Future getData()async{
    var uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodeData = jsonDecode(data);
      return decodeData;
    }
    else{
      print(response.statusCode);
    }
  }
}
