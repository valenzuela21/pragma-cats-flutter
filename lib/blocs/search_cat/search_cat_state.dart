part of 'search_cat_bloc.dart';


class SearchCatState extends Equatable {
  final String searchTerm;

  SearchCatState({ required this.searchTerm});

  factory SearchCatState.initial() {
    return SearchCatState(searchTerm: '');
  }

  @override
  List<Object> get props => [searchTerm];


  @override
  String toString() {
    return 'SearchCatState{searchTerm: $searchTerm}';
  }

  SearchCatState copyWith({
    String? searchTerm
   }) {
    return SearchCatState(
        searchTerm: searchTerm ?? this.searchTerm
       );
  }
}
