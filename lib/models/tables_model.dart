/*
 * This file contains the models/tables_model.dart file for project FAP-0001-A
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001-A
 * Section Name: Models
 * File Name: sections_model.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/26/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */

import 'dart:convert';

List<List<TablesModel>> tablesModelFromJson(String str) =>
    List<List<TablesModel>>.from(json.decode(str).map(
        (x) => List<TablesModel>.from(x.map((x) => TablesModel.fromJson(x)))));

String tablesModelToJson(List<List<TablesModel>> data) =>
    json.encode(List<dynamic>.from(
        data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class TablesModel {
  final String colName;
  final int colSeats;

  TablesModel({
    required this.colName,
    required this.colSeats,
  });

  factory TablesModel.fromJson(Map<String, dynamic> json) => TablesModel(
        colName: json["colName"],
        colSeats: json["colSeats"],
      );

  Map<String, dynamic> toJson() => {
        "colName": colName,
        "colSeats": colSeats,
      };
}
