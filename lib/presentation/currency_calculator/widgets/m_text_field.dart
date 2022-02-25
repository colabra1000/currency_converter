import 'package:currency_converter/application/currency_calculator/currency_calculator_bloc.dart';
import 'package:currency_converter/presentation/core/styles/textStyles.dart';
import 'package:currency_converter/presentation/currency_calculator/currency_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String label;

  MTextField(
      {Key? key, required this.textEditingController, required this.label})
      : super(key: key);

  final OutlineInputBorder inputBorder = OutlineInputBorder(
      borderSide: BorderSide(
    color: fadeColor,
  ));

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ],
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              enabled: label == SelectConversionCurrencies.fromCurrency,
              controller: textEditingController,
              style: mediumText,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                border: inputBorder,
                focusedBorder: inputBorder,
                enabledBorder: inputBorder,
              ),
            ),
          ),
          BlocBuilder<CurrencyCalculatorBloc, CurrencyCalculatorState>(
            buildWhen: (previous, current) => label ==
                    SelectConversionCurrencies.fromCurrency
                ? current.convertFromCurrency != previous.convertFromCurrency
                : current.convertToCurrency != previous.convertToCurrency,
            builder: (context, state) {
              return Container(
                constraints: BoxConstraints(minWidth: 50.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(border: Border.all(color: fadeColor)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: label == SelectConversionCurrencies.toCurrency
                      ? Text(state.convertToCurrency.toUpperCase())
                      : Text(state.convertFromCurrency.toUpperCase()),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
