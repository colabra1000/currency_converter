part of 'historical_data_graph_bloc.dart';

@freezed
class HistoricalDataGraphEvent with _$HistoricalDataGraphEvent {
  const factory HistoricalDataGraphEvent.started({required bool withError}) =
      _Started;
  const factory HistoricalDataGraphEvent.displayed30DaysHistory(
      {required String convertFromCurrency,
      required String convertToCurrency}) = _Displayed30DaysHistory;
  const factory HistoricalDataGraphEvent.displayed90DaysHistory(
      {required String convertFromCurrency,
      required String convertToCurrency}) = _Displayed90DaysHistory;
}
