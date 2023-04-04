part of 'counter_cubit.dart';

@immutable
class CounterState extends Equatable {
  final int counter;

  const CounterState({
    required this.counter,
  });

  factory CounterState.initial() {
    return const CounterState(counter: 0);
  }

  factory CounterState.fromJson(Map json) {
    return CounterState(counter: json['counter']);
  }

  Map<String, dynamic> toJson() {
    return {"counter": counter};
  }

  @override
  List<Object> get props => [counter];

  @override
  bool get stringify => true;

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}
