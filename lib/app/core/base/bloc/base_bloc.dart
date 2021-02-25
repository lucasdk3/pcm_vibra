import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'base_event.dart';

class BaseBloc extends Bloc<BaseEvent, int> {
  BaseBloc() : super(0);

  @override
  Stream<int> mapEventToState(
    BaseEvent event,
  ) async* {
    if (event is UpdatePage) {
      yield event.indexPage;
    }
  }
}
