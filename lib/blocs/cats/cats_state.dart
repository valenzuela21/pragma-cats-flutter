part of 'cats_bloc.dart';

enum CatsStatus { initial, loading, loaded, error }

class CatsState extends Equatable {
  final CatsStatus status;
  final List<dynamic> cats;
  final CustomError error;

  CatsState({required this.status, required this.cats, required this.error});

  factory CatsState.initial() {
    final List<Cats> cats =  [Cats.initial()];
    return CatsState(
        status: CatsStatus.initial, cats: cats, error: CustomError());
  }

  @override
  List<Object> get props => [status, cats, error];

  @override
  String toString() {
    return 'CatsState{status: $status, cats: $cats, error: $error}';
  }

  CatsState copyWith({
    CatsStatus? status,
    List<dynamic>? cats,
    CustomError? error,
  }) {
    return CatsState(
        status: status ?? this.status,
        cats: cats ?? this.cats,
        error: error ?? this.error);
  }
}
