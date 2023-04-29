part of 'search_cat_bloc.dart';


class SearchCatState extends Equatable {
  final String searchTerm;
  final List<dynamic> filterCast;

  SearchCatState({ required this.searchTerm, required this.filterCast });

  factory SearchCatState.initial() {
    return SearchCatState(searchTerm: '', filterCast: []);
  }

  @override
  List<Object> get props => [searchTerm];


  @override
  String toString() {
    return 'SearchCatState{searchTerm: $searchTerm}';
  }

  SearchCatState copyWith({
    String? searchTerm,
    List<dynamic>? filterCast
   }) {
    return SearchCatState(
        searchTerm: searchTerm ?? this.searchTerm,
        filterCast: filterCast ?? this.filterCast
       );
  }
}
