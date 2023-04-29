import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../enums/catsStatus.enum.dart';
import '../../models/cats.model.dart';
import '../../models/custom_error.model.dart';
import '../../repositories/cats_respository.dart';
import '../search_cat/search_cat_bloc.dart';

part 'search_calculate_event.dart';
part 'search_calculate_state.dart';

class SearchCalculateBloc extends Bloc<SearchCalculateEvent, SearchCalculateState> {

  late StreamSubscription catsSearchSubscription;

  final CatsRepository catsRepository;

  final SearchCatBloc  searchCatBloc;


  SearchCalculateBloc({required this.catsRepository, required this.searchCatBloc}) : super(SearchCalculateState.initial()) {

    catsSearchSubscription =  searchCatBloc.stream.listen((SearchCatState searchCatState) {
      _setFilterCats();
    });

    on<SearchCalculateFiltertEvent>((event, emit) {
      emit(state.copyWith(filterCats: event.filterCats, status: CatsStatus.complete));
    });
  }

  Future<void> _setFilterCats() async {
    final String termLetter = searchCatBloc.state.searchTerm;
    if(termLetter.isEmpty) return;
    emit(state.copyWith(status: CatsStatus.loading));
    try {
      final List<dynamic> searchCats = await catsRepository.findCats(termLetter);
      add(SearchCalculateFiltertEvent(filterCats: searchCats, termLetter: termLetter));
    } on CustomError catch (e) {
      emit(state.copyWith(status: CatsStatus.error, error: e));
    }
  }

  @override
  Future<void> close(){
    catsSearchSubscription.cancel();
    return super.close();
  }

}

