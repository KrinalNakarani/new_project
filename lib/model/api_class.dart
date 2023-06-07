import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:new_project/model/api_model.dart';

class ApiClass {
  Future<List<dynamic>> getData() async {
    String link = "https://corona.lmao.ninja/v2/countries/";
    Uri url = Uri.parse(link);
    var abc = await http.get(url);
    List data = jsonDecode(abc.body);
    return data.map((e) => ApiModel.fromJson(e)).toList();
  }
}
