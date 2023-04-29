part of 'search_calculate_bloc.dart';

class SearchCalculateState extends Equatable {
  final CatsStatus status;
  final List<dynamic> filterCats;
  final CustomError error;
  final String searchTerm;

  const SearchCalculateState({required this.filterCats, required this.error, required this.status, required this.searchTerm});

  factory SearchCalculateState.initial() {
    return SearchCalculateState(filterCats: [], error: CustomError(), status: CatsStatus.initial, searchTerm: '');
  }

  @override
  List<Object> get props => [filterCats, error, status, searchTerm];

  @override
  String toString() {
    return 'SearchCalculateState{filterCats: $filterCats}';
  }

  SearchCalculateState copyWith({
    List<dynamic>? filterCats,
    CustomError? error,
    CatsStatus? status,
    String? searchTerm
  }) {
    return SearchCalculateState(
        filterCats: filterCats ?? this.filterCats,
        error: error ?? this.error,
        status: status ??  this.status,
        searchTerm: searchTerm ?? this.searchTerm
    );
  }
}
