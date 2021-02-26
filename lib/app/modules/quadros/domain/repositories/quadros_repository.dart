import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcm_vibra/app/modules/quadros/external/datasources/get_quadros_datasourse.dart';
import 'package:pcm_vibra/app/modules/quadros/infra/models/quadros_model.dart';

class QuadrosRepository {
  GetQuadrosDatasource getQuadrosDatasource = GetQuadrosDatasource();
  Future<List<QuadroModel>> getQuadros() async {
    final result = await getQuadrosDatasource.getQuadros();
    return result.fold((l) {
      Fluttertoast.showToast(msg: l.error);
      return null;
      // ignore: missing_return
    }, (quadros) async {
      return quadros;
    });
  }
}
