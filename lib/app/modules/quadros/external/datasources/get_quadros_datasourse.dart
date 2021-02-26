import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:pcm_vibra/app/core/app_errors.dart';
import 'package:pcm_vibra/app/modules/quadros/infra/models/quadros_model.dart';

class GetQuadrosDatasource {
  HasuraConnect _hasuraConnect =
      HasuraConnect('https://vibra.herokuapp.com/v1/graphql');
  Future<Either<Failure, List<QuadroModel>>> getQuadros() async {
    print(4);
    List<QuadroModel> listQuadros = [];
    listQuadros.clear();
    var query = r"""
        query MyQuery {
          quadros {
            ccm
            equipamento
            id
            porta
          }
        }
    """;
    var doc = await _hasuraConnect.query(query);
    if (doc["data"]["quadros"].isEmpty) {
      return Left(Failure('vazio'));
    } else {
      if (doc["data"]["quadros"].length > 0) {
        for (var document in doc["data"]["quadros"]) {
          listQuadros.add(QuadroModel.fromJson(document));
        }
      }
      return Right(listQuadros);
    }
  }
}
