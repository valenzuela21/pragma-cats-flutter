import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';
part 'search_cat_event.dart';
part 'search_cat_state.dart';

class SearchCatBloc extends Bloc<SearchCatEvent, SearchCatState> {
  SearchCatBloc() : super(SearchCatState.initial()) {
    on<SetSearchTermEvent>((event, emit) {
          emit(state.copyWith(searchTerm: event.newSearchTerm));
      }, transformer: debounce(const Duration(milliseconds: 2000)));
  }

  EventTransformer<SetSearchTermEvent> debounce<SetSearchTermEvent>(Duration duration){
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}




