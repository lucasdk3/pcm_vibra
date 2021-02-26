import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pcm_vibra/app/modules/quadros/domain/use_cases/cases.dart';
import 'package:pcm_vibra/app/modules/quadros/infra/models/quadros_model.dart';

part 'quadros_event.dart';
part 'quadros_state.dart';

class QuadrosBloc extends Bloc<QuadrosEvent, QuadrosState> {
  QuadrosBloc() : super(QuadrosInitial(null));
  QuadrosCases cases = QuadrosCases();
  @override
  Stream<QuadrosState> mapEventToState(
    QuadrosEvent event,
  ) async* {
    if (event is GetQuadros) {
      print(1);
      yield* cases.getCase.mapGetQuadrosState();
    } else if (event is SearchQuadros) {
      yield* cases.searchCase.mapSearchState(state, event);
    }
  }
}
