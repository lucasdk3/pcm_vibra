// To parse this JSON data, do
//
//     final quadrosEntity = quadrosEntityFromJson(jsonString);

import 'dart:convert';

QuadrosEntity quadrosEntityFromJson(String str) =>
    QuadrosEntity.fromJson(json.decode(str));

String quadrosEntityToJson(QuadrosEntity data) => json.encode(data.toJson());

class QuadrosEntity {
  QuadrosEntity({
    this.ccm,
    this.equipamento,
    this.id,
    this.porta,
  });

  final int ccm;
  final String equipamento;
  final int id;
  final int porta;

  QuadrosEntity copyWith({
    int ccm,
    String equipamento,
    int id,
    int porta,
  }) =>
      QuadrosEntity(
        ccm: ccm ?? this.ccm,
        equipamento: equipamento ?? this.equipamento,
        id: id ?? this.id,
        porta: porta ?? this.porta,
      );

  factory QuadrosEntity.fromJson(Map<String, dynamic> json) => QuadrosEntity(
        ccm: json["ccm"] == null ? null : json["ccm"],
        equipamento: json["equipamento"] == null ? null : json["equipamento"],
        id: json["id"] == null ? null : json["id"],
        porta: json["porta"] == null ? null : json["porta"],
      );

  Map<String, dynamic> toJson() => {
        "ccm": ccm == null ? null : ccm,
        "equipamento": equipamento == null ? null : equipamento,
        "id": id == null ? null : id,
        "porta": porta == null ? null : porta,
      };
}
