import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omar_ahmed_app/core/networking/api_error_model.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // specialization
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
          List<SpecializationsData>? specializationDataList) =
      SpecializationSuccess;
  const factory HomeState.specializationFailure(ApiErrorModel apiErrorModel) =
      SpecializationError;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors>? doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsFailure() = DoctorsError;
}
