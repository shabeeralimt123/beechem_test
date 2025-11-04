part of 'personnel_cubit.dart';

abstract class PersonnelState {}

class PersonnelInitial extends PersonnelState {}

class PersonnelLoading extends PersonnelState {}

class PersonnelLoaded extends PersonnelState {
  final List<Personnel> personnel;

  PersonnelLoaded(this.personnel);
}

class PersonnelError extends PersonnelState {
  final String message;

  PersonnelError(this.message);
}