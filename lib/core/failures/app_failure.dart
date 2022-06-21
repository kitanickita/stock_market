import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_failure.freezed.dart';

/// Represents app failures class.
@freezed
class AppFailure with _$AppFailure {
  const AppFailure._();
  const factory AppFailure.api(String message, [int? errorCode]) = _Api;
}
