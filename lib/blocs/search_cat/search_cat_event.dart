part of 'search_cat_bloc.dart';

abstract class SearchCatEvent extends Equatable {
  const SearchCatEvent();

  @override
  List<Object> get props => [];
}

class SetSearchTermEvent extends SearchCatEvent {
  final String newSearchTerm;

  SetSearchTermEvent({required this.newSearchTerm});

  @override
  String toString() {
    return 'SetSearchTermEvent{newSearchTerm: $newSearchTerm}';
  }

  @override
  List<Object> get props => [newSearchTerm];
}
