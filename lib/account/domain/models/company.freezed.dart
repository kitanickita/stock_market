// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Company {
  /// Company name.
  String get name => throw _privateConstructorUsedError;

  /// Company logo
  String get logo => throw _privateConstructorUsedError;

  /// Transaction  amount in currency.
  double get transaction => throw _privateConstructorUsedError;

  /// Date of transaction.
  DateTime get date => throw _privateConstructorUsedError;

  /// Currency indicator for showing in the company transaction.
  String get currency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String logo,
      double transaction,
      DateTime date,
      String currency});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  final Company _value;
  // ignore: unused_field
  final $Res Function(Company) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? logo = freezed,
    Object? transaction = freezed,
    Object? date = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$_CompanyCopyWith(
          _$_Company value, $Res Function(_$_Company) then) =
      __$$_CompanyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String logo,
      double transaction,
      DateTime date,
      String currency});
}

/// @nodoc
class __$$_CompanyCopyWithImpl<$Res> extends _$CompanyCopyWithImpl<$Res>
    implements _$$_CompanyCopyWith<$Res> {
  __$$_CompanyCopyWithImpl(_$_Company _value, $Res Function(_$_Company) _then)
      : super(_value, (v) => _then(v as _$_Company));

  @override
  _$_Company get _value => super._value as _$_Company;

  @override
  $Res call({
    Object? name = freezed,
    Object? logo = freezed,
    Object? transaction = freezed,
    Object? date = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$_Company(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Company extends _Company {
  const _$_Company(
      {required this.name,
      required this.logo,
      required this.transaction,
      required this.date,
      required this.currency})
      : super._();

  /// Company name.
  @override
  final String name;

  /// Company logo
  @override
  final String logo;

  /// Transaction  amount in currency.
  @override
  final double transaction;

  /// Date of transaction.
  @override
  final DateTime date;

  /// Currency indicator for showing in the company transaction.
  @override
  final String currency;

  @override
  String toString() {
    return 'Company(name: $name, logo: $logo, transaction: $transaction, date: $date, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Company &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.currency, currency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(transaction),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(currency));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyCopyWith<_$_Company> get copyWith =>
      __$$_CompanyCopyWithImpl<_$_Company>(this, _$identity);
}

abstract class _Company extends Company {
  const factory _Company(
      {required final String name,
      required final String logo,
      required final double transaction,
      required final DateTime date,
      required final String currency}) = _$_Company;
  const _Company._() : super._();

  @override

  /// Company name.
  String get name => throw _privateConstructorUsedError;
  @override

  /// Company logo
  String get logo => throw _privateConstructorUsedError;
  @override

  /// Transaction  amount in currency.
  double get transaction => throw _privateConstructorUsedError;
  @override

  /// Date of transaction.
  DateTime get date => throw _privateConstructorUsedError;
  @override

  /// Currency indicator for showing in the company transaction.
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyCopyWith<_$_Company> get copyWith =>
      throw _privateConstructorUsedError;
}
