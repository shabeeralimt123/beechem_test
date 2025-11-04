import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/personnel_response.dart';
import '../repositories/personnel_repository.dart';

part 'personnel_state.dart';

class PersonnelCubit extends Cubit<PersonnelState> {
  final PersonnelRepository _personnelRepository;

  PersonnelCubit(this._personnelRepository) : super(PersonnelInitial());

  Future<void> loadPersonnel() async {
    emit(PersonnelLoading());

    try {
      final response = await _personnelRepository.getPersonnelList();
      if (response.status) {
        emit(PersonnelLoaded(response.data));
      } else {
        emit(PersonnelError('Failed to load personnel'));
      }
    } catch (e) {
      emit(PersonnelError(e.toString()));
    }
  }

  void searchPersonnel(String query, List<Personnel> allPersonnel) {
    if (query.isEmpty) {
      emit(PersonnelLoaded(allPersonnel));
    } else {
      final filtered = allPersonnel.where((personnel) {
        final fullName = '${personnel.firstName} ${personnel.lastName ?? ''}'.toLowerCase();
        return fullName.contains(query.toLowerCase());
      }).toList();
      emit(PersonnelLoaded(filtered));
    }
  }
}