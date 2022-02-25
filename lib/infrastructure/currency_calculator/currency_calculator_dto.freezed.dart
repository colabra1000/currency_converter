// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_calculator_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyCalculatorDto _$CurrencyCalculatorDtoFromJson(
    Map<String, dynamic> json) {
  return _CurrencyCalculatorDto.fromJson(json);
}

/// @nodoc
class _$CurrencyCalculatorDtoTearOff {
  const _$CurrencyCalculatorDtoTearOff();

  _CurrencyCalculatorDto call(
      {required Map<dynamic, dynamic> rates,
      required String base,
      required bool success,
      required String date}) {
    return _CurrencyCalculatorDto(
      rates: rates,
      base: base,
      success: success,
      date: date,
    );
  }

  CurrencyCalculatorDto fromJson(Map<String, Object?> json) {
    return CurrencyCalculatorDto.fromJson(json);
  }
}

/// @nodoc
const $CurrencyCalculatorDto = _$CurrencyCalculatorDtoTearOff();

/// @nodoc
mixin _$CurrencyCalculatorDto {
  Map<dynamic, dynamic> get rates => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyCalculatorDtoCopyWith<CurrencyCalculatorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCalculatorDtoCopyWith<$Res> {
  factory $CurrencyCalculatorDtoCopyWith(CurrencyCalculatorDto value,
          $Res Function(CurrencyCalculatorDto) then) =
      _$CurrencyCalculatorDtoCopyWithImpl<$Res>;
  $Res call(
      {Map<dynamic, dynamic> rates, String base, bool success, String date});
}

/// @nodoc
class _$CurrencyCalculatorDtoCopyWithImpl<$Res>
    implements $CurrencyCalculatorDtoCopyWith<$Res> {
  _$CurrencyCalculatorDtoCopyWithImpl(this._value, this._then);

  final CurrencyCalculatorDto _value;
  // ignore: unused_field
  final $Res Function(CurrencyCalculatorDto) _then;

  @override
  $Res call({
    Object? rates = freezed,
    Object? base = freezed,
    Object? success = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      rates: rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyCalculatorDtoCopyWith<$Res>
    implements $CurrencyCalculatorDtoCopyWith<$Res> {
  factory _$CurrencyCalculatorDtoCopyWith(_CurrencyCalculatorDto value,
          $Res Function(_CurrencyCalculatorDto) then) =
      __$CurrencyCalculatorDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<dynamic, dynamic> rates, String base, bool success, String date});
}

/// @nodoc
class __$CurrencyCalculatorDtoCopyWithImpl<$Res>
    extends _$CurrencyCalculatorDtoCopyWithImpl<$Res>
    implements _$CurrencyCalculatorDtoCopyWith<$Res> {
  __$CurrencyCalculatorDtoCopyWithImpl(_CurrencyCalculatorDto _value,
      $Res Function(_CurrencyCalculatorDto) _then)
      : super(_value, (v) => _then(v as _CurrencyCalculatorDto));

  @override
  _CurrencyCalculatorDto get _value => super._value as _CurrencyCalculatorDto;

  @override
  $Res call({
    Object? rates = freezed,
    Object? base = freezed,
    Object? success = freezed,
    Object? date = freezed,
  }) {
    return _then(_CurrencyCalculatorDto(
      rates: rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyCalculatorDto extends _CurrencyCalculatorDto {
  const _$_CurrencyCalculatorDto(
      {required this.rates,
      required this.base,
      required this.success,
      required this.date})
      : super._();

  factory _$_CurrencyCalculatorDto.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyCalculatorDtoFromJson(json);

  @override
  final Map<dynamic, dynamic> rates;
  @override
  final String base;
  @override
  final bool success;
  @override
  final String date;

  @override
  String toString() {
    return 'CurrencyCalculatorDto(rates: $rates, base: $base, success: $success, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyCalculatorDto &&
            const DeepCollectionEquality().equals(other.rates, rates) &&
            const DeepCollectionEquality().equals(other.base, base) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rates),
      const DeepCollectionEquality().hash(base),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$CurrencyCalculatorDtoCopyWith<_CurrencyCalculatorDto> get copyWith =>
      __$CurrencyCalculatorDtoCopyWithImpl<_CurrencyCalculatorDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyCalculatorDtoToJson(this);
  }
}

abstract class _CurrencyCalculatorDto extends CurrencyCalculatorDto {
  const factory _CurrencyCalculatorDto(
      {required Map<dynamic, dynamic> rates,
      required String base,
      required bool success,
      required String date}) = _$_CurrencyCalculatorDto;
  const _CurrencyCalculatorDto._() : super._();

  factory _CurrencyCalculatorDto.fromJson(Map<String, dynamic> json) =
      _$_CurrencyCalculatorDto.fromJson;

  @override
  Map<dynamic, dynamic> get rates;
  @override
  String get base;
  @override
  bool get success;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$CurrencyCalculatorDtoCopyWith<_CurrencyCalculatorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
