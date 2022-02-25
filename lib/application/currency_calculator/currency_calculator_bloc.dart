import 'package:bloc/bloc.dart';
import 'package:currency_converter/domain/currency_calculator/currency_rates.dart';
import 'package:currency_converter/domain/currency_calculator/i_currency_calculator_repository.dart';
import 'package:currency_converter/infrastructure/core/helpers/m_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'currency_calculator_event.dart';
part 'currency_calculator_state.dart';
part 'currency_calculator_bloc.freezed.dart';

@injectable
class CurrencyCalculatorBloc
    extends Bloc<CurrencyCalculatorEvent, CurrencyCalculatorState> {
  final ICurrencyCalculatorRepository iCurrencyCalculatorRepository;

  CurrencyCalculatorBloc(this.iCurrencyCalculatorRepository)
      : super(CurrencyCalculatorState.initial()) {
    on<CurrencyCalculatorEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          if (event.withError == true) {
            emit(state.copyWith(
                errorWarning: "pls check your network while we work"));
          }
          await _initializePage(emit);
        },
        convertFromChanged: (event) {
          emit(state.copyWith(
              convertFromCurrency: event.value, convertToValue: 0));
        },
        convertToChanged: (event) {
          emit(state.copyWith(
              convertToCurrency: event.value, convertToValue: 0));
        },
        currencyConverted: (event) async {
          late Map rate;
          final currencyRates =
              await iCurrencyCalculatorRepository.getLatestConversionRates();

          currencyRates.fold((l) => null, (CurrencyRates r) {
            rate = r.rates;
          });

          double exchangePoint;

          try {
            exchangePoint =
                rate[state.convertFromCurrency] / rate[state.convertToCurrency];
            final exchangeRate = exchangePoint * event.convertFromValue;
            emit(state.copyWith(convertToValue: exchangeRate.roundTo(3)));
          } catch (e) {
            return;
          }
        },
      );
    });
  }

  _initializePage(Emitter emit) async {
    final getConversionRates =
        await iCurrencyCalculatorRepository.getLatestConversionRates();

    return getConversionRates.fold(
      (l) async {
        await Future.delayed(const Duration(seconds: 5));
        add(const CurrencyCalculatorEvent.started(withError: true));
      },
      (r) async {
        final currencies =
            r.rates.entries.map((e) => e.key.toString()).toList();
        emit(state.copyWith(
            errorWarning: "",
            isLoading: false,
            currencies: currencies,
            convertToCurrency: currencies[0],
            convertFromCurrency: currencies[0]));
      },
    );
  }
}
