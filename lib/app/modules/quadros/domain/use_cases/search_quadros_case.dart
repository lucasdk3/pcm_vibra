import 'package:flutter/widgets.dart';
import 'package:pcm_vibra/app/app_router.dart';
import 'package:pcm_vibra/app/modules/quadros/bloc/quadros_bloc.dart';
import 'package:pcm_vibra/app/modules/quadros/domain/repositories/quadros_repository.dart';
import 'package:pcm_vibra/app/modules/quadros/infra/models/quadros_model.dart';

class SearchCase {
  QuadrosRepository repository = QuadrosRepository();
  BuildContext context = AppRouter.instance.navigationKey.currentContext;
  Stream<QuadrosState> mapSearchState(
    QuadrosState state,
    SearchQuadros event,
  ) async* {
    List<QuadroModel> newList = [];
    if (event.search == '') {
      print(state);
      yield FullState(state.items);
    } else {
      state.items.forEach((quadros) {
        if (quadros.equipamento
            .toUpperCase()
            .contains(event.search.toUpperCase())) {
          newList.add(quadros);
        }
      });
      yield LoadingState(state.items);
      yield SearchState(items: state.items, searchItems: newList);
    }
  }
}
