import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:simonaditia_uas_pmobile/pages/models/work_model.dart';

class WorkService {
  String baseUrl = 'http://192.168.1.101:8000/api';

  Future<List<WorkModel>> getWorks() async {
    var url = '$baseUrl/works';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<WorkModel> works = [];

      for (var item in data) {
        works.add(WorkModel.fromJson(item));
      }

      return works;
    } else {
      throw Exception('Gagal get Works!');
    }
  }
}
