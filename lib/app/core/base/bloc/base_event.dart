part of 'base_bloc.dart';

abstract class BaseEvent extends Equatable {
  const BaseEvent();

  @override
  List<Object> get props => [];
}

class UpdatePage extends BaseEvent {
  final int indexPage;

  const UpdatePage({@required this.indexPage}) : assert(indexPage != null);

  @override
  List<Object> get props => [indexPage];
}
