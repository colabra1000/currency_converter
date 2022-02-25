// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_calculator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrencyCalculatorEventTearOff {
  const _$CurrencyCalculatorEventTearOff();

  _Started started({required bool withError}) {
    return _Started(
      withError: withError,
    );
  }

  _ConvertFromChanged convertFromChanged({required String value}) {
    return _ConvertFromChanged(
      value: value,
    );
  }

  _ConvertToChanged convertToChanged({required String value}) {
    return _ConvertToChanged(
      value: value,
    );
  }

  _CurrencyConverted currencyConverted({required int convertFromValue}) {
    return _CurrencyConverted(
      convertFromValue: convertFromValue,
    );
  }
}

/// @nodoc
const $CurrencyCalculatorEvent = _$CurrencyCalculatorEventTearOff();

/// @nodoc
mixin _$CurrencyCalculatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) started,
    required TResult Function(String value) convertFromChanged,
    required TResult Function(String value) convertToChanged,
    required TResult Function(int convertFromValue) currencyConverted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConvertFromChanged value) convertFromChanged,
    required TResult Function(_ConvertToChanged value) convertToChanged,
    required TResult Function(_CurrencyConverted value) currencyConverted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCalculatorEventCopyWith<$Res> {
  factory $CurrencyCalculatorEventCopyWith(CurrencyCalculatorEvent value,
          $Res Function(CurrencyCalculatorEvent) then) =
      _$CurrencyCalculatorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrencyCalculatorEventCopyWithImpl<$Res>
    implements $CurrencyCalculatorEventCopyWith<$Res> {
  _$CurrencyCalculatorEventCopyWithImpl(this._value, this._then);

  final CurrencyCalculatorEvent _value;
  // ignore: unused_field
  final $Res Function(CurrencyCalculatorEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({bool withError});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CurrencyCalculatorEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? withError = freezed,
  }) {
    return _then(_Started(
      withError: withError == freezed
          ? _value.withError
          : withError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.withError});

  @override
  final bool withError;

  @override
  String toString() {
    return 'CurrencyCalculatorEvent.started(withError: $withError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Started &&
            const DeepCollectionEquality().equals(other.withError, withError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(withError));

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) started,
    required TResult Function(String value) convertFromChanged,
    required TResult Function(String value) convertToChanged,
    required TResult Function(int convertFromValue) currencyConverted,
  }) {
    return started(withError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
  }) {
    return started?.call(withError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(withError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConvertFromChanged value) convertFromChanged,
    required TResult Function(_ConvertToChanged value) convertToChanged,
    required TResult Function(_CurrencyConverted value) currencyConverted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CurrencyCalculatorEvent {
  const factory _Started({required bool withError}) = _$_Started;

  bool get withError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConvertFromChangedCopyWith<$Res> {
  factory _$ConvertFromChangedCopyWith(
          _ConvertFromChanged value, $Res Function(_ConvertFromChanged) then) =
      __$ConvertFromChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$ConvertFromChangedCopyWithImpl<$Res>
    extends _$CurrencyCalculatorEventCopyWithImpl<$Res>
    implements _$ConvertFromChangedCopyWith<$Res> {
  __$ConvertFromChangedCopyWithImpl(
      _ConvertFromChanged _value, $Res Function(_ConvertFromChanged) _then)
      : super(_value, (v) => _then(v as _ConvertFromChanged));

  @override
  _ConvertFromChanged get _value => super._value as _ConvertFromChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ConvertFromChanged(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConvertFromChanged implements _ConvertFromChanged {
  const _$_ConvertFromChanged({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CurrencyCalculatorEvent.convertFromChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConvertFromChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ConvertFromChangedCopyWith<_ConvertFromChanged> get copyWith =>
      __$ConvertFromChangedCopyWithImpl<_ConvertFromChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) started,
    required TResult Function(String value) convertFromChanged,
    required TResult Function(String value) convertToChanged,
    required TResult Function(int convertFromValue) currencyConverted,
  }) {
    return convertFromChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
  }) {
    return convertFromChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
    required TResult orElse(),
  }) {
    if (convertFromChanged != null) {
      return convertFromChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConvertFromChanged value) convertFromChanged,
    required TResult Function(_ConvertToChanged value) convertToChanged,
    required TResult Function(_CurrencyConverted value) currencyConverted,
  }) {
    return convertFromChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
  }) {
    return convertFromChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
    required TResult orElse(),
  }) {
    if (convertFromChanged != null) {
      return convertFromChanged(this);
    }
    return orElse();
  }
}

abstract class _ConvertFromChanged implements CurrencyCalculatorEvent {
  const factory _ConvertFromChanged({required String value}) =
      _$_ConvertFromChanged;

  String get value;
  @JsonKey(ignore: true)
  _$ConvertFromChangedCopyWith<_ConvertFromChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConvertToChangedCopyWith<$Res> {
  factory _$ConvertToChangedCopyWith(
          _ConvertToChanged value, $Res Function(_ConvertToChanged) then) =
      __$ConvertToChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$ConvertToChangedCopyWithImpl<$Res>
    extends _$CurrencyCalculatorEventCopyWithImpl<$Res>
    implements _$ConvertToChangedCopyWith<$Res> {
  __$ConvertToChangedCopyWithImpl(
      _ConvertToChanged _value, $Res Function(_ConvertToChanged) _then)
      : super(_value, (v) => _then(v as _ConvertToChanged));

  @override
  _ConvertToChanged get _value => super._value as _ConvertToChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ConvertToChanged(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConvertToChanged implements _ConvertToChanged {
  const _$_ConvertToChanged({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CurrencyCalculatorEvent.convertToChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConvertToChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ConvertToChangedCopyWith<_ConvertToChanged> get copyWith =>
      __$ConvertToChangedCopyWithImpl<_ConvertToChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) started,
    required TResult Function(String value) convertFromChanged,
    required TResult Function(String value) convertToChanged,
    required TResult Function(int convertFromValue) currencyConverted,
  }) {
    return convertToChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
  }) {
    return convertToChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
    required TResult orElse(),
  }) {
    if (convertToChanged != null) {
      return convertToChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConvertFromChanged value) convertFromChanged,
    required TResult Function(_ConvertToChanged value) convertToChanged,
    required TResult Function(_CurrencyConverted value) currencyConverted,
  }) {
    return convertToChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
  }) {
    return convertToChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
    required TResult orElse(),
  }) {
    if (convertToChanged != null) {
      return convertToChanged(this);
    }
    return orElse();
  }
}

abstract class _ConvertToChanged implements CurrencyCalculatorEvent {
  const factory _ConvertToChanged({required String value}) =
      _$_ConvertToChanged;

  String get value;
  @JsonKey(ignore: true)
  _$ConvertToChangedCopyWith<_ConvertToChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CurrencyConvertedCopyWith<$Res> {
  factory _$CurrencyConvertedCopyWith(
          _CurrencyConverted value, $Res Function(_CurrencyConverted) then) =
      __$CurrencyConvertedCopyWithImpl<$Res>;
  $Res call({int convertFromValue});
}

/// @nodoc
class __$CurrencyConvertedCopyWithImpl<$Res>
    extends _$CurrencyCalculatorEventCopyWithImpl<$Res>
    implements _$CurrencyConvertedCopyWith<$Res> {
  __$CurrencyConvertedCopyWithImpl(
      _CurrencyConverted _value, $Res Function(_CurrencyConverted) _then)
      : super(_value, (v) => _then(v as _CurrencyConverted));

  @override
  _CurrencyConverted get _value => super._value as _CurrencyConverted;

  @override
  $Res call({
    Object? convertFromValue = freezed,
  }) {
    return _then(_CurrencyConverted(
      convertFromValue: convertFromValue == freezed
          ? _value.convertFromValue
          : convertFromValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CurrencyConverted implements _CurrencyConverted {
  const _$_CurrencyConverted({required this.convertFromValue});

  @override
  final int convertFromValue;

  @override
  String toString() {
    return 'CurrencyCalculatorEvent.currencyConverted(convertFromValue: $convertFromValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyConverted &&
            const DeepCollectionEquality()
                .equals(other.convertFromValue, convertFromValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(convertFromValue));

  @JsonKey(ignore: true)
  @override
  _$CurrencyConvertedCopyWith<_CurrencyConverted> get copyWith =>
      __$CurrencyConvertedCopyWithImpl<_CurrencyConverted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) started,
    required TResult Function(String value) convertFromChanged,
    required TResult Function(String value) convertToChanged,
    required TResult Function(int convertFromValue) currencyConverted,
  }) {
    return currencyConverted(convertFromValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
  }) {
    return currencyConverted?.call(convertFromValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String value)? convertFromChanged,
    TResult Function(String value)? convertToChanged,
    TResult Function(int convertFromValue)? currencyConverted,
    required TResult orElse(),
  }) {
    if (currencyConverted != null) {
      return currencyConverted(convertFromValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConvertFromChanged value) convertFromChanged,
    required TResult Function(_ConvertToChanged value) convertToChanged,
    required TResult Function(_CurrencyConverted value) currencyConverted,
  }) {
    return currencyConverted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
  }) {
    return currencyConverted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConvertFromChanged value)? convertFromChanged,
    TResult Function(_ConvertToChanged value)? convertToChanged,
    TResult Function(_CurrencyConverted value)? currencyConverted,
    required TResult orElse(),
  }) {
    if (currencyConverted != null) {
      return currencyConverted(this);
    }
    return orElse();
  }
}

abstract class _CurrencyConverted implements CurrencyCalculatorEvent {
  const factory _CurrencyConverted({required int convertFromValue}) =
      _$_CurrencyConverted;

  int get convertFromValue;
  @JsonKey(ignore: true)
  _$CurrencyConvertedCopyWith<_CurrencyConverted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CurrencyCalculatorStateTearOff {
  const _$CurrencyCalculatorStateTearOff();

  _CurrencyCalculatorState call(
      {required String convertFromCurrency,
      required String convertToCurrency,
      required double convertToValue,
      required bool isLoading,
      required String errorWarning,
      required List<CurrencyRates>? historicalData,
      required List<String> currencies}) {
    return _CurrencyCalculatorState(
      convertFromCurrency: convertFromCurrency,
      convertToCurrency: convertToCurrency,
      convertToValue: convertToValue,
      isLoading: isLoading,
      errorWarning: errorWarning,
      historicalData: historicalData,
      currencies: currencies,
    );
  }
}

/// @nodoc
const $CurrencyCalculatorState = _$CurrencyCalculatorStateTearOff();

/// @nodoc
mixin _$CurrencyCalculatorState {
  String get convertFromCurrency => throw _privateConstructorUsedError;
  String get convertToCurrency => throw _privateConstructorUsedError;
  double get convertToValue => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorWarning => throw _privateConstructorUsedError;
  List<CurrencyRates>? get historicalData => throw _privateConstructorUsedError;
  List<String> get currencies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyCalculatorStateCopyWith<CurrencyCalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCalculatorStateCopyWith<$Res> {
  factory $CurrencyCalculatorStateCopyWith(CurrencyCalculatorState value,
          $Res Function(CurrencyCalculatorState) then) =
      _$CurrencyCalculatorStateCopyWithImpl<$Res>;
  $Res call(
      {String convertFromCurrency,
      String convertToCurrency,
      double convertToValue,
      bool isLoading,
      String errorWarning,
      List<CurrencyRates>? historicalData,
      List<String> currencies});
}

/// @nodoc
class _$CurrencyCalculatorStateCopyWithImpl<$Res>
    implements $CurrencyCalculatorStateCopyWith<$Res> {
  _$CurrencyCalculatorStateCopyWithImpl(this._value, this._then);

  final CurrencyCalculatorState _value;
  // ignore: unused_field
  final $Res Function(CurrencyCalculatorState) _then;

  @override
  $Res call({
    Object? convertFromCurrency = freezed,
    Object? convertToCurrency = freezed,
    Object? convertToValue = freezed,
    Object? isLoading = freezed,
    Object? errorWarning = freezed,
    Object? historicalData = freezed,
    Object? currencies = freezed,
  }) {
    return _then(_value.copyWith(
      convertFromCurrency: convertFromCurrency == freezed
          ? _value.convertFromCurrency
          : convertFromCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      convertToCurrency: convertToCurrency == freezed
          ? _value.convertToCurrency
          : convertToCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      convertToValue: convertToValue == freezed
          ? _value.convertToValue
          : convertToValue // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWarning: errorWarning == freezed
          ? _value.errorWarning
          : errorWarning // ignore: cast_nullable_to_non_nullable
              as String,
      historicalData: historicalData == freezed
          ? _value.historicalData
          : historicalData // ignore: cast_nullable_to_non_nullable
              as List<CurrencyRates>?,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyCalculatorStateCopyWith<$Res>
    implements $CurrencyCalculatorStateCopyWith<$Res> {
  factory _$CurrencyCalculatorStateCopyWith(_CurrencyCalculatorState value,
          $Res Function(_CurrencyCalculatorState) then) =
      __$CurrencyCalculatorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String convertFromCurrency,
      String convertToCurrency,
      double convertToValue,
      bool isLoading,
      String errorWarning,
      List<CurrencyRates>? historicalData,
      List<String> currencies});
}

/// @nodoc
class __$CurrencyCalculatorStateCopyWithImpl<$Res>
    extends _$CurrencyCalculatorStateCopyWithImpl<$Res>
    implements _$CurrencyCalculatorStateCopyWith<$Res> {
  __$CurrencyCalculatorStateCopyWithImpl(_CurrencyCalculatorState _value,
      $Res Function(_CurrencyCalculatorState) _then)
      : super(_value, (v) => _then(v as _CurrencyCalculatorState));

  @override
  _CurrencyCalculatorState get _value =>
      super._value as _CurrencyCalculatorState;

  @override
  $Res call({
    Object? convertFromCurrency = freezed,
    Object? convertToCurrency = freezed,
    Object? convertToValue = freezed,
    Object? isLoading = freezed,
    Object? errorWarning = freezed,
    Object? historicalData = freezed,
    Object? currencies = freezed,
  }) {
    return _then(_CurrencyCalculatorState(
      convertFromCurrency: convertFromCurrency == freezed
          ? _value.convertFromCurrency
          : convertFromCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      convertToCurrency: convertToCurrency == freezed
          ? _value.convertToCurrency
          : convertToCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      convertToValue: convertToValue == freezed
          ? _value.convertToValue
          : convertToValue // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWarning: errorWarning == freezed
          ? _value.errorWarning
          : errorWarning // ignore: cast_nullable_to_non_nullable
              as String,
      historicalData: historicalData == freezed
          ? _value.historicalData
          : historicalData // ignore: cast_nullable_to_non_nullable
              as List<CurrencyRates>?,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_CurrencyCalculatorState implements _CurrencyCalculatorState {
  const _$_CurrencyCalculatorState(
      {required this.convertFromCurrency,
      required this.convertToCurrency,
      required this.convertToValue,
      required this.isLoading,
      required this.errorWarning,
      required this.historicalData,
      required this.currencies});

  @override
  final String convertFromCurrency;
  @override
  final String convertToCurrency;
  @override
  final double convertToValue;
  @override
  final bool isLoading;
  @override
  final String errorWarning;
  @override
  final List<CurrencyRates>? historicalData;
  @override
  final List<String> currencies;

  @override
  String toString() {
    return 'CurrencyCalculatorState(convertFromCurrency: $convertFromCurrency, convertToCurrency: $convertToCurrency, convertToValue: $convertToValue, isLoading: $isLoading, errorWarning: $errorWarning, historicalData: $historicalData, currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyCalculatorState &&
            const DeepCollectionEquality()
                .equals(other.convertFromCurrency, convertFromCurrency) &&
            const DeepCollectionEquality()
                .equals(other.convertToCurrency, convertToCurrency) &&
            const DeepCollectionEquality()
                .equals(other.convertToValue, convertToValue) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorWarning, errorWarning) &&
            const DeepCollectionEquality()
                .equals(other.historicalData, historicalData) &&
            const DeepCollectionEquality()
                .equals(other.currencies, currencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(convertFromCurrency),
      const DeepCollectionEquality().hash(convertToCurrency),
      const DeepCollectionEquality().hash(convertToValue),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorWarning),
      const DeepCollectionEquality().hash(historicalData),
      const DeepCollectionEquality().hash(currencies));

  @JsonKey(ignore: true)
  @override
  _$CurrencyCalculatorStateCopyWith<_CurrencyCalculatorState> get copyWith =>
      __$CurrencyCalculatorStateCopyWithImpl<_CurrencyCalculatorState>(
          this, _$identity);
}

abstract class _CurrencyCalculatorState implements CurrencyCalculatorState {
  const factory _CurrencyCalculatorState(
      {required String convertFromCurrency,
      required String convertToCurrency,
      required double convertToValue,
      required bool isLoading,
      required String errorWarning,
      required List<CurrencyRates>? historicalData,
      required List<String> currencies}) = _$_CurrencyCalculatorState;

  @override
  String get convertFromCurrency;
  @override
  String get convertToCurrency;
  @override
  double get convertToValue;
  @override
  bool get isLoading;
  @override
  String get errorWarning;
  @override
  List<CurrencyRates>? get historicalData;
  @override
  List<String> get currencies;
  @override
  @JsonKey(ignore: true)
  _$CurrencyCalculatorStateCopyWith<_CurrencyCalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
