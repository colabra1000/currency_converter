// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'historical_data_graph_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoricalDataGraphEventTearOff {
  const _$HistoricalDataGraphEventTearOff();

  _Started started({required bool withError}) {
    return _Started(
      withError: withError,
    );
  }

  _Displayed30DaysHistory displayed30DaysHistory(
      {required String convertFromCurrency,
      required String convertToCurrency}) {
    return _Displayed30DaysHistory(
      convertFromCurrency: convertFromCurrency,
      convertToCurrency: convertToCurrency,
    );
  }

  _Displayed90DaysHistory displayed90DaysHistory(
      {required String convertFromCurrency,
      required String convertToCurrency}) {
    return _Displayed90DaysHistory(
      convertFromCurrency: convertFromCurrency,
      convertToCurrency: convertToCurrency,
    );
  }
}

/// @nodoc
const $HistoricalDataGraphEvent = _$HistoricalDataGraphEventTearOff();

/// @nodoc
mixin _$HistoricalDataGraphEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) started,
    required TResult Function(
            String convertFromCurrency, String convertToCurrency)
        displayed30DaysHistory,
    required TResult Function(
            String convertFromCurrency, String convertToCurrency)
        displayed90DaysHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed30DaysHistory,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed90DaysHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed30DaysHistory,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed90DaysHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Displayed30DaysHistory value)
        displayed30DaysHistory,
    required TResult Function(_Displayed90DaysHistory value)
        displayed90DaysHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Displayed30DaysHistory value)? displayed30DaysHistory,
    TResult Function(_Displayed90DaysHistory value)? displayed90DaysHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Displayed30DaysHistory value)? displayed30DaysHistory,
    TResult Function(_Displayed90DaysHistory value)? displayed90DaysHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoricalDataGraphEventCopyWith<$Res> {
  factory $HistoricalDataGraphEventCopyWith(HistoricalDataGraphEvent value,
          $Res Function(HistoricalDataGraphEvent) then) =
      _$HistoricalDataGraphEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoricalDataGraphEventCopyWithImpl<$Res>
    implements $HistoricalDataGraphEventCopyWith<$Res> {
  _$HistoricalDataGraphEventCopyWithImpl(this._value, this._then);

  final HistoricalDataGraphEvent _value;
  // ignore: unused_field
  final $Res Function(HistoricalDataGraphEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({bool withError});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$HistoricalDataGraphEventCopyWithImpl<$Res>
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
    return 'HistoricalDataGraphEvent.started(withError: $withError)';
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
    required TResult Function(
            String convertFromCurrency, String convertToCurrency)
        displayed30DaysHistory,
    required TResult Function(
            String convertFromCurrency, String convertToCurrency)
        displayed90DaysHistory,
  }) {
    return started(withError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed30DaysHistory,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed90DaysHistory,
  }) {
    return started?.call(withError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed30DaysHistory,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed90DaysHistory,
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
    required TResult Function(_Displayed30DaysHistory value)
        displayed30DaysHistory,
    required TResult Function(_Displayed90DaysHistory value)
        displayed90DaysHistory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Displayed30DaysHistory value)? displayed30DaysHistory,
    TResult Function(_Displayed90DaysHistory value)? displayed90DaysHistory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Displayed30DaysHistory value)? displayed30DaysHistory,
    TResult Function(_Displayed90DaysHistory value)? displayed90DaysHistory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HistoricalDataGraphEvent {
  const factory _Started({required bool withError}) = _$_Started;

  bool get withError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Displayed30DaysHistoryCopyWith<$Res> {
  factory _$Displayed30DaysHistoryCopyWith(_Displayed30DaysHistory value,
          $Res Function(_Displayed30DaysHistory) then) =
      __$Displayed30DaysHistoryCopyWithImpl<$Res>;
  $Res call({String convertFromCurrency, String convertToCurrency});
}

/// @nodoc
class __$Displayed30DaysHistoryCopyWithImpl<$Res>
    extends _$HistoricalDataGraphEventCopyWithImpl<$Res>
    implements _$Displayed30DaysHistoryCopyWith<$Res> {
  __$Displayed30DaysHistoryCopyWithImpl(_Displayed30DaysHistory _value,
      $Res Function(_Displayed30DaysHistory) _then)
      : super(_value, (v) => _then(v as _Displayed30DaysHistory));

  @override
  _Displayed30DaysHistory get _value => super._value as _Displayed30DaysHistory;

  @override
  $Res call({
    Object? convertFromCurrency = freezed,
    Object? convertToCurrency = freezed,
  }) {
    return _then(_Displayed30DaysHistory(
      convertFromCurrency: convertFromCurrency == freezed
          ? _value.convertFromCurrency
          : convertFromCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      convertToCurrency: convertToCurrency == freezed
          ? _value.convertToCurrency
          : convertToCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Displayed30DaysHistory implements _Displayed30DaysHistory {
  const _$_Displayed30DaysHistory(
      {required this.convertFromCurrency, required this.convertToCurrency});

  @override
  final String convertFromCurrency;
  @override
  final String convertToCurrency;

  @override
  String toString() {
    return 'HistoricalDataGraphEvent.displayed30DaysHistory(convertFromCurrency: $convertFromCurrency, convertToCurrency: $convertToCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Displayed30DaysHistory &&
            const DeepCollectionEquality()
                .equals(other.convertFromCurrency, convertFromCurrency) &&
            const DeepCollectionEquality()
                .equals(other.convertToCurrency, convertToCurrency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(convertFromCurrency),
      const DeepCollectionEquality().hash(convertToCurrency));

  @JsonKey(ignore: true)
  @override
  _$Displayed30DaysHistoryCopyWith<_Displayed30DaysHistory> get copyWith =>
      __$Displayed30DaysHistoryCopyWithImpl<_Displayed30DaysHistory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) started,
    required TResult Function(
            String convertFromCurrency, String convertToCurrency)
        displayed30DaysHistory,
    required TResult Function(
            String convertFromCurrency, String convertToCurrency)
        displayed90DaysHistory,
  }) {
    return displayed30DaysHistory(convertFromCurrency, convertToCurrency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed30DaysHistory,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed90DaysHistory,
  }) {
    return displayed30DaysHistory?.call(convertFromCurrency, convertToCurrency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed30DaysHistory,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed90DaysHistory,
    required TResult orElse(),
  }) {
    if (displayed30DaysHistory != null) {
      return displayed30DaysHistory(convertFromCurrency, convertToCurrency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Displayed30DaysHistory value)
        displayed30DaysHistory,
    required TResult Function(_Displayed90DaysHistory value)
        displayed90DaysHistory,
  }) {
    return displayed30DaysHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Displayed30DaysHistory value)? displayed30DaysHistory,
    TResult Function(_Displayed90DaysHistory value)? displayed90DaysHistory,
  }) {
    return displayed30DaysHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Displayed30DaysHistory value)? displayed30DaysHistory,
    TResult Function(_Displayed90DaysHistory value)? displayed90DaysHistory,
    required TResult orElse(),
  }) {
    if (displayed30DaysHistory != null) {
      return displayed30DaysHistory(this);
    }
    return orElse();
  }
}

abstract class _Displayed30DaysHistory implements HistoricalDataGraphEvent {
  const factory _Displayed30DaysHistory(
      {required String convertFromCurrency,
      required String convertToCurrency}) = _$_Displayed30DaysHistory;

  String get convertFromCurrency;
  String get convertToCurrency;
  @JsonKey(ignore: true)
  _$Displayed30DaysHistoryCopyWith<_Displayed30DaysHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Displayed90DaysHistoryCopyWith<$Res> {
  factory _$Displayed90DaysHistoryCopyWith(_Displayed90DaysHistory value,
          $Res Function(_Displayed90DaysHistory) then) =
      __$Displayed90DaysHistoryCopyWithImpl<$Res>;
  $Res call({String convertFromCurrency, String convertToCurrency});
}

/// @nodoc
class __$Displayed90DaysHistoryCopyWithImpl<$Res>
    extends _$HistoricalDataGraphEventCopyWithImpl<$Res>
    implements _$Displayed90DaysHistoryCopyWith<$Res> {
  __$Displayed90DaysHistoryCopyWithImpl(_Displayed90DaysHistory _value,
      $Res Function(_Displayed90DaysHistory) _then)
      : super(_value, (v) => _then(v as _Displayed90DaysHistory));

  @override
  _Displayed90DaysHistory get _value => super._value as _Displayed90DaysHistory;

  @override
  $Res call({
    Object? convertFromCurrency = freezed,
    Object? convertToCurrency = freezed,
  }) {
    return _then(_Displayed90DaysHistory(
      convertFromCurrency: convertFromCurrency == freezed
          ? _value.convertFromCurrency
          : convertFromCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      convertToCurrency: convertToCurrency == freezed
          ? _value.convertToCurrency
          : convertToCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Displayed90DaysHistory implements _Displayed90DaysHistory {
  const _$_Displayed90DaysHistory(
      {required this.convertFromCurrency, required this.convertToCurrency});

  @override
  final String convertFromCurrency;
  @override
  final String convertToCurrency;

  @override
  String toString() {
    return 'HistoricalDataGraphEvent.displayed90DaysHistory(convertFromCurrency: $convertFromCurrency, convertToCurrency: $convertToCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Displayed90DaysHistory &&
            const DeepCollectionEquality()
                .equals(other.convertFromCurrency, convertFromCurrency) &&
            const DeepCollectionEquality()
                .equals(other.convertToCurrency, convertToCurrency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(convertFromCurrency),
      const DeepCollectionEquality().hash(convertToCurrency));

  @JsonKey(ignore: true)
  @override
  _$Displayed90DaysHistoryCopyWith<_Displayed90DaysHistory> get copyWith =>
      __$Displayed90DaysHistoryCopyWithImpl<_Displayed90DaysHistory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool withError) started,
    required TResult Function(
            String convertFromCurrency, String convertToCurrency)
        displayed30DaysHistory,
    required TResult Function(
            String convertFromCurrency, String convertToCurrency)
        displayed90DaysHistory,
  }) {
    return displayed90DaysHistory(convertFromCurrency, convertToCurrency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed30DaysHistory,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed90DaysHistory,
  }) {
    return displayed90DaysHistory?.call(convertFromCurrency, convertToCurrency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool withError)? started,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed30DaysHistory,
    TResult Function(String convertFromCurrency, String convertToCurrency)?
        displayed90DaysHistory,
    required TResult orElse(),
  }) {
    if (displayed90DaysHistory != null) {
      return displayed90DaysHistory(convertFromCurrency, convertToCurrency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Displayed30DaysHistory value)
        displayed30DaysHistory,
    required TResult Function(_Displayed90DaysHistory value)
        displayed90DaysHistory,
  }) {
    return displayed90DaysHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Displayed30DaysHistory value)? displayed30DaysHistory,
    TResult Function(_Displayed90DaysHistory value)? displayed90DaysHistory,
  }) {
    return displayed90DaysHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Displayed30DaysHistory value)? displayed30DaysHistory,
    TResult Function(_Displayed90DaysHistory value)? displayed90DaysHistory,
    required TResult orElse(),
  }) {
    if (displayed90DaysHistory != null) {
      return displayed90DaysHistory(this);
    }
    return orElse();
  }
}

abstract class _Displayed90DaysHistory implements HistoricalDataGraphEvent {
  const factory _Displayed90DaysHistory(
      {required String convertFromCurrency,
      required String convertToCurrency}) = _$_Displayed90DaysHistory;

  String get convertFromCurrency;
  String get convertToCurrency;
  @JsonKey(ignore: true)
  _$Displayed90DaysHistoryCopyWith<_Displayed90DaysHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HistoricalDataGraphStateTearOff {
  const _$HistoricalDataGraphStateTearOff();

  _HistoricalDataGraphState call(
      {required double delta1,
      required double delta2,
      required double delta3,
      required List<dynamic>? historicalData,
      required String errorWarning}) {
    return _HistoricalDataGraphState(
      delta1: delta1,
      delta2: delta2,
      delta3: delta3,
      historicalData: historicalData,
      errorWarning: errorWarning,
    );
  }
}

/// @nodoc
const $HistoricalDataGraphState = _$HistoricalDataGraphStateTearOff();

/// @nodoc
mixin _$HistoricalDataGraphState {
  double get delta1 => throw _privateConstructorUsedError;
  double get delta2 => throw _privateConstructorUsedError;
  double get delta3 => throw _privateConstructorUsedError;
  List<dynamic>? get historicalData => throw _privateConstructorUsedError;
  String get errorWarning => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoricalDataGraphStateCopyWith<HistoricalDataGraphState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoricalDataGraphStateCopyWith<$Res> {
  factory $HistoricalDataGraphStateCopyWith(HistoricalDataGraphState value,
          $Res Function(HistoricalDataGraphState) then) =
      _$HistoricalDataGraphStateCopyWithImpl<$Res>;
  $Res call(
      {double delta1,
      double delta2,
      double delta3,
      List<dynamic>? historicalData,
      String errorWarning});
}

/// @nodoc
class _$HistoricalDataGraphStateCopyWithImpl<$Res>
    implements $HistoricalDataGraphStateCopyWith<$Res> {
  _$HistoricalDataGraphStateCopyWithImpl(this._value, this._then);

  final HistoricalDataGraphState _value;
  // ignore: unused_field
  final $Res Function(HistoricalDataGraphState) _then;

  @override
  $Res call({
    Object? delta1 = freezed,
    Object? delta2 = freezed,
    Object? delta3 = freezed,
    Object? historicalData = freezed,
    Object? errorWarning = freezed,
  }) {
    return _then(_value.copyWith(
      delta1: delta1 == freezed
          ? _value.delta1
          : delta1 // ignore: cast_nullable_to_non_nullable
              as double,
      delta2: delta2 == freezed
          ? _value.delta2
          : delta2 // ignore: cast_nullable_to_non_nullable
              as double,
      delta3: delta3 == freezed
          ? _value.delta3
          : delta3 // ignore: cast_nullable_to_non_nullable
              as double,
      historicalData: historicalData == freezed
          ? _value.historicalData
          : historicalData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      errorWarning: errorWarning == freezed
          ? _value.errorWarning
          : errorWarning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HistoricalDataGraphStateCopyWith<$Res>
    implements $HistoricalDataGraphStateCopyWith<$Res> {
  factory _$HistoricalDataGraphStateCopyWith(_HistoricalDataGraphState value,
          $Res Function(_HistoricalDataGraphState) then) =
      __$HistoricalDataGraphStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {double delta1,
      double delta2,
      double delta3,
      List<dynamic>? historicalData,
      String errorWarning});
}

/// @nodoc
class __$HistoricalDataGraphStateCopyWithImpl<$Res>
    extends _$HistoricalDataGraphStateCopyWithImpl<$Res>
    implements _$HistoricalDataGraphStateCopyWith<$Res> {
  __$HistoricalDataGraphStateCopyWithImpl(_HistoricalDataGraphState _value,
      $Res Function(_HistoricalDataGraphState) _then)
      : super(_value, (v) => _then(v as _HistoricalDataGraphState));

  @override
  _HistoricalDataGraphState get _value =>
      super._value as _HistoricalDataGraphState;

  @override
  $Res call({
    Object? delta1 = freezed,
    Object? delta2 = freezed,
    Object? delta3 = freezed,
    Object? historicalData = freezed,
    Object? errorWarning = freezed,
  }) {
    return _then(_HistoricalDataGraphState(
      delta1: delta1 == freezed
          ? _value.delta1
          : delta1 // ignore: cast_nullable_to_non_nullable
              as double,
      delta2: delta2 == freezed
          ? _value.delta2
          : delta2 // ignore: cast_nullable_to_non_nullable
              as double,
      delta3: delta3 == freezed
          ? _value.delta3
          : delta3 // ignore: cast_nullable_to_non_nullable
              as double,
      historicalData: historicalData == freezed
          ? _value.historicalData
          : historicalData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      errorWarning: errorWarning == freezed
          ? _value.errorWarning
          : errorWarning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HistoricalDataGraphState implements _HistoricalDataGraphState {
  const _$_HistoricalDataGraphState(
      {required this.delta1,
      required this.delta2,
      required this.delta3,
      required this.historicalData,
      required this.errorWarning});

  @override
  final double delta1;
  @override
  final double delta2;
  @override
  final double delta3;
  @override
  final List<dynamic>? historicalData;
  @override
  final String errorWarning;

  @override
  String toString() {
    return 'HistoricalDataGraphState(delta1: $delta1, delta2: $delta2, delta3: $delta3, historicalData: $historicalData, errorWarning: $errorWarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoricalDataGraphState &&
            const DeepCollectionEquality().equals(other.delta1, delta1) &&
            const DeepCollectionEquality().equals(other.delta2, delta2) &&
            const DeepCollectionEquality().equals(other.delta3, delta3) &&
            const DeepCollectionEquality()
                .equals(other.historicalData, historicalData) &&
            const DeepCollectionEquality()
                .equals(other.errorWarning, errorWarning));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(delta1),
      const DeepCollectionEquality().hash(delta2),
      const DeepCollectionEquality().hash(delta3),
      const DeepCollectionEquality().hash(historicalData),
      const DeepCollectionEquality().hash(errorWarning));

  @JsonKey(ignore: true)
  @override
  _$HistoricalDataGraphStateCopyWith<_HistoricalDataGraphState> get copyWith =>
      __$HistoricalDataGraphStateCopyWithImpl<_HistoricalDataGraphState>(
          this, _$identity);
}

abstract class _HistoricalDataGraphState implements HistoricalDataGraphState {
  const factory _HistoricalDataGraphState(
      {required double delta1,
      required double delta2,
      required double delta3,
      required List<dynamic>? historicalData,
      required String errorWarning}) = _$_HistoricalDataGraphState;

  @override
  double get delta1;
  @override
  double get delta2;
  @override
  double get delta3;
  @override
  List<dynamic>? get historicalData;
  @override
  String get errorWarning;
  @override
  @JsonKey(ignore: true)
  _$HistoricalDataGraphStateCopyWith<_HistoricalDataGraphState> get copyWith =>
      throw _privateConstructorUsedError;
}
