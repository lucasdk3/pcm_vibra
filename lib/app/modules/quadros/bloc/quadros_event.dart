part of 'quadros_bloc.dart';

abstract class QuadrosEvent extends Equatable {
  const QuadrosEvent();

  @override
  List<Object> get props => [];
}

class SearchQuadros extends QuadrosEvent {
  final String search;

  const SearchQuadros({this.search});

  @override
  List<Object> get props => [search];
}

class GetQuadros extends QuadrosEvent {

  const GetQuadros();

  @override
  List<Object> get props => [];
}
