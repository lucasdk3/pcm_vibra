import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sprint_event.dart';
part 'sprint_state.dart';

class SprintsBloc extends Bloc<SprintsEvent, SprintsState> {
  SprintsBloc() : super(SprintsInitial());

  @override
  Stream<SprintsState> mapEventToState(
    SprintsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
