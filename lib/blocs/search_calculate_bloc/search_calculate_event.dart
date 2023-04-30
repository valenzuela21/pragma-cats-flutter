part of 'search_calculate_bloc.dart';

abstract class SearchCalculateEvent extends Equatable {
  const SearchCalculateEvent();

  @override
  List<Object> get props => [];
}

class InitialSearchFilterEvent extends SearchCalculateEvent {}

class SearchCalculateFiltertEvent extends SearchCalculateEvent {
  final List<dynamic> filterCats;
  final String termLetter;

  SearchCalculateFiltertEvent({required this.filterCats, required this.termLetter});

  @override
  String toString() {
    return 'SearchCalculateFiltertEvent{filterCats: $filterCats, termLetter: $termLetter}';
  }

  @override
  List<Object> get props => [filterCats, termLetter];
}
