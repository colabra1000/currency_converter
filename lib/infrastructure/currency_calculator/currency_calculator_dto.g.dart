// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_calculator_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyCalculatorDto _$$_CurrencyCalculatorDtoFromJson(
        Map<String, dynamic> json) =>
    _$_CurrencyCalculatorDto(
      rates: json['rates'] as Map<String, dynamic>,
      base: json['base'] as String,
      success: json['success'] as bool,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_CurrencyCalculatorDtoToJson(
        _$_CurrencyCalculatorDto instance) =>
    <String, dynamic>{
      'rates': instance.rates,
      'base': instance.base,
      'success': instance.success,
      'date': instance.date,
    };
