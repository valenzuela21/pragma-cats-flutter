part of 'search_calculate_bloc.dart';

abstract class SearchCalculateEvent extends Equatable {
  const SearchCalculateEvent();

  @override
  List<Object> get props => [];
}

class SearchCalculateFiltertEvent extends SearchCalculateEvent {
  final List<dynamic> filterCats;

  SearchCalculateFiltertEvent({required this.filterCats});

  @override
  String toString() {
    return 'SearchCalculateFiltertEvent{filterCats: $filterCats}';
  }

  @override
  List<Object> get props => [];
}
