// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_rates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrencyRatesTearOff {
  const _$CurrencyRatesTearOff();

  _CurrencyRates call(
      {required String base, required Map<dynamic, dynamic> rates}) {
    return _CurrencyRates(
      base: base,
      rates: rates,
    );
  }
}

/// @nodoc
const $CurrencyRates = _$CurrencyRatesTearOff();

/// @nodoc
mixin _$CurrencyRates {
  String get base => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get rates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyRatesCopyWith<CurrencyRates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyRatesCopyWith<$Res> {
  factory $CurrencyRatesCopyWith(
          CurrencyRates value, $Res Function(CurrencyRates) then) =
      _$CurrencyRatesCopyWithImpl<$Res>;
  $Res call({String base, Map<dynamic, dynamic> rates});
}

/// @nodoc
class _$CurrencyRatesCopyWithImpl<$Res>
    implements $CurrencyRatesCopyWith<$Res> {
  _$CurrencyRatesCopyWithImpl(this._value, this._then);

  final CurrencyRates _value;
  // ignore: unused_field
  final $Res Function(CurrencyRates) _then;

  @override
  $Res call({
    Object? base = freezed,
    Object? rates = freezed,
  }) {
    return _then(_value.copyWith(
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      rates: rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyRatesCopyWith<$Res>
    implements $CurrencyRatesCopyWith<$Res> {
  factory _$CurrencyRatesCopyWith(
          _CurrencyRates value, $Res Function(_CurrencyRates) then) =
      __$CurrencyRatesCopyWithImpl<$Res>;
  @override
  $Res call({String base, Map<dynamic, dynamic> rates});
}

/// @nodoc
class __$CurrencyRatesCopyWithImpl<$Res>
    extends _$CurrencyRatesCopyWithImpl<$Res>
    implements _$CurrencyRatesCopyWith<$Res> {
  __$CurrencyRatesCopyWithImpl(
      _CurrencyRates _value, $Res Function(_CurrencyRates) _then)
      : super(_value, (v) => _then(v as _CurrencyRates));

  @override
  _CurrencyRates get _value => super._value as _CurrencyRates;

  @override
  $Res call({
    Object? base = freezed,
    Object? rates = freezed,
  }) {
    return _then(_CurrencyRates(
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      rates: rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$_CurrencyRates implements _CurrencyRates {
  const _$_CurrencyRates({required this.base, required this.rates});

  @override
  final String base;
  @override
  final Map<dynamic, dynamic> rates;

  @override
  String toString() {
    return 'CurrencyRates(base: $base, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyRates &&
            const DeepCollectionEquality().equals(other.base, base) &&
            const DeepCollectionEquality().equals(other.rates, rates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(base),
      const DeepCollectionEquality().hash(rates));

  @JsonKey(ignore: true)
  @override
  _$CurrencyRatesCopyWith<_CurrencyRates> get copyWith =>
      __$CurrencyRatesCopyWithImpl<_CurrencyRates>(this, _$identity);
}

abstract class _CurrencyRates implements CurrencyRates {
  const factory _CurrencyRates(
      {required String base,
      required Map<dynamic, dynamic> rates}) = _$_CurrencyRates;

  @override
  String get base;
  @override
  Map<dynamic, dynamic> get rates;
  @override
  @JsonKey(ignore: true)
  _$CurrencyRatesCopyWith<_CurrencyRates> get copyWith =>
      throw _privateConstructorUsedError;
}
