import 'package:flutter/material.dart';
import 'package:simonaditia_uas_pmobile/pages/models/work_model.dart';
import 'package:simonaditia_uas_pmobile/services/work_service.dart';

class WorkProvider with ChangeNotifier {
  List<WorkModel> _works = [];
  List<WorkModel> get works => _works;

  set works(List<WorkModel> works) {
    _works = works;
    notifyListeners();
  }

  Future<void> getWorks() async {
    try {
      List<WorkModel> works = await WorkService().getWorks();
      _works = works;
    } catch (e) {
      print(e);
    }
  }
}
