import 'package:http/http.dart';

class DataServices {
  String baseUrl = "ttp://mark.bafadsf.com/api";

  getInfo() async {
    var apiUrl = "/getplaces";
    http.Response res = await http.get(Url.parse(baseUrl + apiUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
