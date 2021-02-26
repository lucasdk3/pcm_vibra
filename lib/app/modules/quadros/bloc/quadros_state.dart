part of 'quadros_bloc.dart';

abstract class QuadrosState extends Equatable {
  final List<QuadroModel> items;
  const QuadrosState(this.items);

  @override
  List<Object> get props => [items];
}

class QuadrosInitial extends QuadrosState {
  QuadrosInitial(List<QuadroModel> items) : super(items);
}

class FullState extends QuadrosState {
  final List<QuadroModel> items;

  const FullState(this.items) : super(items);

  @override
  List<Object> get props => [items];
}

class SearchState extends QuadrosState {
  final List<QuadroModel> items;
  final List<QuadroModel> searchItems;

  const SearchState({this.items, this.searchItems}) : super(items);

  @override
  List<Object> get props => [items];
}

class LoadingState extends QuadrosState {
  LoadingState(List<QuadroModel> items) : super(items);
}

class EmptyState extends QuadrosState {
  EmptyState(List<QuadroModel> items) : super(items);
}
