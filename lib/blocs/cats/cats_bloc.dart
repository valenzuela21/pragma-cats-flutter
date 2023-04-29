import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../enums/catsStatus.enum.dart';
import '../../models/custom_error.model.dart';
import '../../repositories/cats_respository.dart';

part 'cats_event.dart';
part 'cats_state.dart';


class CatsBloc extends Bloc<CatsEvent, CatsState> {

  final CatsRepository catsRepository;

  CatsBloc({required this.catsRepository}) : super(CatsState.initial()) {
    on<AllCatsEvent>(_getAllCats);
  }

  Future<void> _getAllCats(
    AllCatsEvent event,
    Emitter<CatsState> emit,
  ) async {
    try {
      final List<dynamic> cats = await catsRepository.allCats();
      emit(state.copyWith(status: CatsStatus.loaded, cats: cats));
    } on CustomError catch (e) {
      emit(state.copyWith(status: CatsStatus.error, error: e));
    }
  }
}
