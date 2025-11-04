import 'package:freezed_annotation/freezed_annotation.dart';

part 'personnel_details_state.freezed.dart';

@freezed
class PersonnelDetailsState with _$PersonnelDetailsState {
  const factory PersonnelDetailsState.initial() = _Initial;
  const factory PersonnelDetailsState.loading() = _Loading;
  const factory PersonnelDetailsState.success() = _Success;
  const factory PersonnelDetailsState.failure(String error) = _Failure;
}