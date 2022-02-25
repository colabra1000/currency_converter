part of 'historical_data_graph_bloc.dart';

@freezed
class HistoricalDataGraphState with _$HistoricalDataGraphState {
  const factory HistoricalDataGraphState({
    required double delta1,
    required double delta2,
    required double delta3,
    required List? historicalData,
    required String errorWarning,
  }) = _HistoricalDataGraphState;

  factory HistoricalDataGraphState.initial() => const HistoricalDataGraphState(
      delta1: 0, delta2: 0, delta3: 0, historicalData: null, errorWarning: "");
}
