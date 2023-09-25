import 'dart:convert';

import 'package:exam/model/covid_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static final ApiHelper helper = ApiHelper._();

  ApiHelper._();

  CovidModel model = CovidModel();


  String link = "https://corona.lmao.ninja/v2/countries/";

  Future<List<CovidModel>> covid() async {
    List<CovidModel> jsonData = [];
    var response = await http.get(Uri.parse(link));
    List json = jsonDecode(response.body);
    jsonData = json.map((e) => CovidModel.fromJson(e)).toList();
    return jsonData;
  }
}
