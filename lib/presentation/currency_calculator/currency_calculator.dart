import 'package:currency_converter/application/currency_calculator/currency_calculator_bloc.dart';
import 'package:currency_converter/application/historical_data_graph/bloc/historical_data_graph_bloc.dart';
import 'package:currency_converter/inject.dart';
import 'package:currency_converter/presentation/core/app_layout.dart';
import 'package:currency_converter/presentation/core/styles/textStyles.dart';
import 'package:currency_converter/presentation/core/widgets/loading_overlay.dart';
import 'package:currency_converter/presentation/currency_calculator/widgets/exchange_chart.dart';
import 'package:currency_converter/presentation/currency_calculator/widgets/m_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrencyCalculator extends StatefulWidget {
  const CurrencyCalculator({Key? key}) : super(key: key);

  @override
  State<CurrencyCalculator> createState() => _CurrencyCalculatorState();
}

class _CurrencyCalculatorState extends State<CurrencyCalculator> {
  late final TextEditingController fromCurrencyEditingController;

  late final TextEditingController toCurrencyEditingController;

  @override
  void initState() {
    fromCurrencyEditingController = TextEditingController();
    toCurrencyEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CurrencyCalculatorBloc>()
        ..add(const CurrencyCalculatorEvent.started(withError: false)),
      child: Builder(builder: (context) {
        return Stack(
          children: [
            AppLayout(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30.h),
                            Container(),
                            _currencyCalculatorHeading(),
                            SizedBox(height: 30.h),
                            _fromCurrencyTextField(),
                            SizedBox(height: 40.h),
                            _toCurrencyTextField(),
                            SizedBox(height: 20.h),
                            const SelectConversionCurrencies(),
                            SizedBox(height: 30.h),
                            _convertButton(context),
                            SizedBox(height: 30.h),
                            _midMarketExchangeRateText(),
                            SizedBox(height: 40.h),
                          ],
                        ),
                      ),
                      _historicalDataGraph(),
                    ],
                  ),
                ),
              ),
            ),
            _overlayDisplay(),
          ],
        );
      }),
    );
  }

  Widget _overlayDisplay() {
    return BlocBuilder<CurrencyCalculatorBloc, CurrencyCalculatorState>(
      buildWhen: (previous, current) =>
          current.isLoading != previous.isLoading ||
          current.errorWarning != previous.errorWarning,
      builder: (context, state) {
        return LoadingOverlay(
          warning: state.errorWarning,
          isLoading: state.isLoading,
        );
      },
    );
  }

  Widget _historicalDataGraph() {
    return BlocProvider(
      create: (context) => getIt<HistoricalDataGraphBloc>()
        ..add(const HistoricalDataGraphEvent.started(withError: false)),
      child: const ExchangeChart(),
    );
  }

  Widget _convertButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        color: primaryColor,
        child: const Text("Convert"),
        onPressed: () {
          final int? convertFromValue =
              int.tryParse(fromCurrencyEditingController.text);

          if (convertFromValue == null) {
            return;
          }

          BlocProvider.of<CurrencyCalculatorBloc>(context)
              .add(CurrencyCalculatorEvent.currencyConverted(
            convertFromValue: convertFromValue,
          ));
        },
      ),
    );
  }

  Widget _fromCurrencyTextField() {
    return MTextField(
      textEditingController: fromCurrencyEditingController,
      label: SelectConversionCurrencies.fromCurrency,
    );
  }

  Widget _toCurrencyTextField() {
    return BlocListener<CurrencyCalculatorBloc, CurrencyCalculatorState>(
      listenWhen: (previous, current) =>
          previous.convertToValue != current.convertToValue,
      listener: (context, state) {
        toCurrencyEditingController.text = state.convertToValue.toString();
      },
      child: MTextField(
        textEditingController: toCurrencyEditingController,
        label: SelectConversionCurrencies.toCurrency,
      ),
    );
  }

  Widget _currencyCalculatorHeading() {
    return Column(
      children: [
        Text(
          "Currency",
          style: bigText.copyWith(
              color: secondaryColor, fontWeight: FontWeight.bold),
        ),
        Text(
          "Calculator.",
          style: bigText.copyWith(
              color: secondaryColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _midMarketExchangeRateText() {
    return Center(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Mid-market exchange rate at 13:38 UTC",
          style: smallText.copyWith(
              color: secondaryColor, decoration: TextDecoration.underline),
        ),
        Icon(Icons.warning_amber_rounded, color: secondaryColor)
      ],
    ));
  }
}

class SelectConversionCurrencies extends StatelessWidget {
  const SelectConversionCurrencies({Key? key}) : super(key: key);

  static const toCurrency = "toCurrency";
  static const fromCurrency = "fromCurrency";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _dropDown(fromCurrency)),
        const Spacer(),
        Expanded(child: _dropDown(toCurrency)),
      ],
    );
  }

  Widget _dropDown(String label) {
    return BlocBuilder<CurrencyCalculatorBloc, CurrencyCalculatorState>(
      buildWhen: (previous, current) => (label == fromCurrency
          ? current.convertFromCurrency != previous.convertFromCurrency
          : current.convertToCurrency != previous.convertToCurrency),
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(border: Border.all(color: fadeColor)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: label == fromCurrency
                  ? state.convertFromCurrency
                  : state.convertToCurrency,
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              items: state.currencies
                  .map(
                    (e) => DropdownMenuItem(
                        value: e.toUpperCase(),
                        child: _currencyButton(e.toUpperCase())),
                  )
                  .toList(),
              onChanged: (String? item) {
                if (label == toCurrency) {
                  BlocProvider.of<CurrencyCalculatorBloc>(context).add(
                      CurrencyCalculatorEvent.convertToChanged(value: item!));
                } else {
                  BlocProvider.of<CurrencyCalculatorBloc>(context).add(
                      CurrencyCalculatorEvent.convertFromChanged(value: item!));
                }
              },
            ),
          ),
        );
      },
    );
  }

  Widget _currencyButton(String currencyName) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      child: Row(
        children: [
          const Icon(Icons.circle),
          SizedBox(width: 10.w),
          Text(currencyName),
        ],
      ),
    );
  }
}
