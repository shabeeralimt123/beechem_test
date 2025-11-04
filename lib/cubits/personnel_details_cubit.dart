import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/personnel_details.dart';
import '../repositories/personnel_details_repository.dart';
import 'personnel_details_state.dart';

class PersonnelDetailsCubit extends Cubit<PersonnelDetailsState> {
  final PersonnelDetailsRepository _repository;

  PersonnelDetailsCubit(this._repository) : super(const PersonnelDetailsState.initial());

  Future<void> addPersonnel(PersonnelDetails personnelDetails) async {
    emit(const PersonnelDetailsState.loading());

    try {
      final success = await _repository.addPersonnel(personnelDetails);
      if (success) {
        emit(const PersonnelDetailsState.success());
      } else {
        emit(const PersonnelDetailsState.failure('Failed to add personnel'));
      }
    } catch (e) {
      emit(PersonnelDetailsState.failure(e.toString()));
    }
  }
}