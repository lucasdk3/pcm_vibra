import 'dart:convert';

import 'package:equatable/equatable.dart';

QuadroModel quadroModelFromJson(String str) =>
    QuadroModel.fromJson(json.decode(str));

String quadroModelToJson(QuadroModel data) => json.encode(data.toJson());

class QuadroModel extends Equatable {
  QuadroModel({
    this.ccm,
    this.equipamento,
    this.id,
    this.porta,
  });

  final int ccm;
  final String equipamento;
  final int id;
  final int porta;

  QuadroModel copyWith({
    int ccm,
    String equipamento,
    int id,
    int porta,
  }) =>
      QuadroModel(
        ccm: ccm ?? this.ccm,
        equipamento: equipamento ?? this.equipamento,
        id: id ?? this.id,
        porta: porta ?? this.porta,
      );

  factory QuadroModel.fromJson(Map<String, dynamic> json) => QuadroModel(
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

  dynamic operator [](String prop) {
    switch (prop) {
      case 'id':
        return id;
        break;
      case 'equipamento':
        return equipamento;
        break;
      case 'ccm':
        return ccm;
        break;
      case 'porta':
        return porta;
        break;
      default:
        throw ArgumentError('Property `$prop` does not exist on JournalEntry.');
    }
  }

  @override
  List<Object> get props => [id, equipamento, ccm, porta];
}
