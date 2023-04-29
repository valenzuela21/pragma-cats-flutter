part of 'search_calculate_bloc.dart';

class SearchCalculateState extends Equatable {
  final CatsStatus status;
  final List<dynamic> filterCats;
  final CustomError error;

  const SearchCalculateState({required this.filterCats, required this.error, required this.status});

  factory SearchCalculateState.initial() {
    return SearchCalculateState(filterCats: [], error: CustomError(), status: CatsStatus.initial);
  }

  @override
  List<Object> get props => [filterCats, error, status];

  @override
  String toString() {
    return 'SearchCalculateState{filterCats: $filterCats}';
  }

  SearchCalculateState copyWith({
    List<dynamic>? filterCats,
    CustomError? error,
    CatsStatus? status
  }) {
    return SearchCalculateState(
        filterCats: filterCats ?? this.filterCats,
        error: error ?? this.error,
        status: status ??  this.status
    );
  }
}
