import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';
import '../../models/custom_error.model.dart';
import '../../repositories/cats_respository.dart';
part 'search_cat_event.dart';
part 'search_cat_state.dart';

class SearchCatBloc extends Bloc<SearchCatEvent, SearchCatState> {
  final CatsRepository catsRepository;

  SearchCatBloc({required this.catsRepository}) : super(SearchCatState.initial()) {
    on<SetSearchTermEvent>((event, emit) {
      _getFindCats(event, emit);
      }, transformer: debounce(const Duration(milliseconds: 2000)));
  }

  EventTransformer<SetSearchTermEvent> debounce<SetSearchTermEvent>(Duration duration){
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }

  Future<void> _getFindCats(
      SetSearchTermEvent event,
      Emitter<SearchCatState> emit,
      ) async {
    try {
      final List<dynamic> searchCats = await catsRepository.findCats(event.newSearchTerm);
      print(searchCats);
      emit(state.copyWith(searchTerm: event.newSearchTerm.toString()));
    } on CustomError catch (e) {
      //emit(state.copyWith(status: CatsStatus.error, error: e));
    }
  }
}




