import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'quadros_event.dart';
part 'quadros_state.dart';

class QuadrosBloc extends Bloc<QuadrosEvent, QuadrosState> {
  QuadrosBloc() : super(QuadrosInitial());

  @override
  Stream<QuadrosState> mapEventToState(
    QuadrosEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
