import 'package:pcm_vibra/app/modules/quadros/bloc/quadros_bloc.dart';
import 'package:pcm_vibra/app/modules/quadros/domain/repositories/quadros_repository.dart';

class GetQuadrosCase {
  QuadrosRepository repository = QuadrosRepository();
  Stream<QuadrosState> mapGetQuadrosState() async* {
    final result = await repository.getQuadros();
    yield FullState(result);
  }
}
