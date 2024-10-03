/*
 * This file contains the services/tables_service.dart file for project FAP-0001-A
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001-A
 * Section Name: Services
 * File Name: tables_service.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/27/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */

import 'dart:developer';

import 'package:fap_0001/core/api_constants.dart';
import 'package:fap_0001/models/tables_model.dart';
import 'package:http/http.dart' as http;

class TablesService {
  Future<List<List<TablesModel>>?> getTables() async {
    try {
      var url =
          Uri.parse(ApiConstants.baseUrl + ApiConstants.getTablesEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<List<TablesModel>> model = tablesModelFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
