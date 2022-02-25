import 'package:bloc/bloc.dart';
import 'package:currency_converter/domain/currency_calculator/i_currency_calculator_repository.dart';
import 'package:date_format/date_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'historical_data_graph_event.dart';
part 'historical_data_graph_state.dart';
part 'historical_data_graph_bloc.freezed.dart';

@injectable
class HistoricalDataGraphBloc
    extends Bloc<HistoricalDataGraphEvent, HistoricalDataGraphState> {
  ICurrencyCalculatorRepository currencyCalculatorRepository;

  HistoricalDataGraphBloc(this.currencyCalculatorRepository)
      : super(HistoricalDataGraphState.initial()) {
    on<HistoricalDataGraphEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          if (event.withError == true) {
            emit(state.copyWith(
                errorWarning: "pls check your network while we work"));
          }
          await _initializeHistoricalData(emit);
        },
        displayed30DaysHistory: (event) {
          _displayThreePointHistory(
              event: event, emit: emit, point1: 0, point2: 1, point3: 2);
        },
        displayed90DaysHistory: (event) {
          _displayThreePointHistory(
              event: event, emit: emit, point1: 2, point2: 3, point3: 4);
        },
      );
    });
  }

  _displayThreePointHistory(
      {required dynamic event,
      required Emitter emit,
      required int point1,
      required int point2,
      required int point3}) {
    if (state.historicalData == null) {
      return;
    }

    final fromRate1 =
        state.historicalData![point1].rates[event.convertFromCurrency];
    final fromRate2 =
        state.historicalData![point2].rates[event.convertFromCurrency];
    final fromRate3 =
        state.historicalData![point3].rates[event.convertFromCurrency];
    final toRate1 =
        state.historicalData![point1].rates[event.convertToCurrency];
    final toRate2 =
        state.historicalData![point2].rates[event.convertToCurrency];
    final toRate3 =
        state.historicalData![point3].rates[event.convertToCurrency];

    emit(state.copyWith(
      delta1: fromRate1 / toRate1,
      delta2: fromRate2 / toRate2,
      delta3: fromRate3 / toRate3,
    ));
  }

  _initializeHistoricalData(Emitter emit) async {
    List boundaries = [10, 10, 10, 30, 30];
    DateTime deltaTime = DateTime.now();

    List<String> boundDates = List.generate(5, (i) {
      deltaTime = deltaTime.subtract(Duration(days: boundaries[i]));
      return formatDate(deltaTime, [yyyy, "-", mm, "-", "dd"]);
    });

    final getHistoricalData =
        await currencyCalculatorRepository.getHitoricalRates(boundDates);

    return getHistoricalData.fold(
      (l) async {
        await Future.delayed(const Duration(seconds: 5));
        add(const HistoricalDataGraphEvent.started(withError: true));
      },
      (r) async {
        emit(state.copyWith(historicalData: r, errorWarning: ""));
      },
    );
  }
}
