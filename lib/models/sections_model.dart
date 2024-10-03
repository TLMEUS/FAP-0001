/*
 * This file contains the models/sections_model.dart file for project FAP-0001-A
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001-A
 * Section Name: Models
 * File Name: sections_model.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/25/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */

import 'dart:convert';

List<SectionsModel> sectionsModelFromJson(String str) =>
    List<SectionsModel>.from(
        json.decode(str).map((x) => SectionsModel.fromJson(x)));

String sectionsModelToJson(List<SectionsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SectionsModel {
  final int colId;
  final String colName;
  final String colColor;

  SectionsModel({
    required this.colId,
    required this.colName,
    required this.colColor,
  });

  factory SectionsModel.fromJson(Map<String, dynamic> json) => SectionsModel(
        colId: json["colId"],
        colName: json["colName"],
        colColor: json["colColor"],
      );

  Map<String, dynamic> toJson() => {
        "colId": colId,
        "colName": colName,
        "colColor": colColor,
      };
}
