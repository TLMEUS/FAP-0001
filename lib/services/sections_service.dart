/*
 * This file contains the services/sections_service.dart file for project FAP-0001-A
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001-A
 * Section Name: Services
 * File Name: sections_service.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/25/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */

import 'dart:developer';

import 'package:fap_0001/core/api_constants.dart';
import 'package:fap_0001/models/sections_model.dart';
import 'package:http/http.dart' as http;

class SectionsService {
  Future<List<SectionsModel>?> getSections() async {
    try {
      var url =
          Uri.parse(ApiConstants.baseUrl + ApiConstants.getSectionsEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<SectionsModel> model = sectionsModelFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
