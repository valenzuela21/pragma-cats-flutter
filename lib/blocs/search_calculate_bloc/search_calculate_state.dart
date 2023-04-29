part of 'search_calculate_bloc.dart';

class SearchCalculateState extends Equatable {
  final List<dynamic> filterCats;

  const SearchCalculateState({required this.filterCats});

  factory SearchCalculateState.initial() {
    return SearchCalculateState(filterCats: []);
  }

  @override
  List<Object> get props => [filterCats];

  @override
  String toString() {
    return 'SearchCalculateState{filterCats: $filterCats}';
  }

  SearchCalculateState copyWith({
    List<dynamic>? filterCats,
  }) {
    return SearchCalculateState(filterCats: filterCats ?? this.filterCats);
  }
}
