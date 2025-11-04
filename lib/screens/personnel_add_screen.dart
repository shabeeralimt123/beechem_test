import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/personnel_details.dart';
import '../models/role_response.dart';
import '../cubits/personnel_details_cubit.dart';
import '../cubits/personnel_details_state.dart';
import '../repositories/role_repository.dart';

class PersonnelAddScreen extends StatefulWidget {
  const PersonnelAddScreen({super.key});

  @override
  State<PersonnelAddScreen> createState() => _PersonnelAddScreenState();
}

class _PersonnelAddScreenState extends State<PersonnelAddScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _addressController = TextEditingController();
  final _suburbController = TextEditingController();
  final _stateController = TextEditingController();
  final _postcodeController = TextEditingController();
  final _countryController = TextEditingController();
  final _contactNumberController = TextEditingController();
  final _additionalNotesController = TextEditingController();
  bool _isActive = true;
  String? _selectedRoleId;
  List<Role> _roles = [];
  double? _latitude;
  double? _longitude;

  // Mock location for demonstration - in real app, use geolocator package
  ({double latitude, double longitude})? _getCurrentLocation() {
    // For demo purposes, return fixed coordinates
    // In production, use geolocator package to get real location
    return (latitude: _latitude ?? -33.8688, longitude: _longitude ?? 151.2093); // Sydney coordinates as example
  }

  @override
  void initState() {
    super.initState();
    _loadRoles();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _addressController.dispose();
    _suburbController.dispose();
    _stateController.dispose();
    _postcodeController.dispose();
    _countryController.dispose();
    _contactNumberController.dispose();
    _additionalNotesController.dispose();
    super.dispose();
  }

  Future<void> _loadRoles() async {
    try {
      final roleRepository = RepositoryProvider.of<RoleRepository>(context, listen: false);
      final roles = await roleRepository.fetchRoles();
      setState(() {
        _roles = roles;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading roles: $e')),
      );
      // TODO: Handle error properly in production
      print('Error loading roles: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PersonnelDetailsCubit, PersonnelDetailsState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          success: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Personnel added successfully')),
            );
            Navigator.of(context).pop();
          },
          failure: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: $error')),
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Personnel'),
        ),
        body: BlocBuilder<PersonnelDetailsCubit, PersonnelDetailsState>(
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _firstNameController,
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter first name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _lastNameController,
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter last name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _addressController,
                      decoration: const InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _suburbController,
                      decoration: const InputDecoration(
                        labelText: 'Suburb',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _stateController,
                      decoration: const InputDecoration(
                        labelText: 'State',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _postcodeController,
                      decoration: const InputDecoration(
                        labelText: 'Postcode',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _countryController,
                      decoration: const InputDecoration(
                        labelText: 'Country',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _contactNumberController,
                      decoration: const InputDecoration(
                        labelText: 'Contact Number',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _additionalNotesController,
                      decoration: const InputDecoration(
                        labelText: 'Additional Notes',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                    ),
                    const SizedBox(height: 16),
                    // Role Dropdown - Fetched from API
                    DropdownButtonFormField<String>(
                      initialValue: _selectedRoleId,
                      decoration: const InputDecoration(
                        labelText: 'Role',
                        border: OutlineInputBorder(),
                      ),
                      items: [
                        const DropdownMenuItem(
                          value: null,
                          child: Text('Select Role'),
                        ),
                        ..._roles.map((role) => DropdownMenuItem(
                          value: role.id.toString(),
                          child: Text(role.role),
                        )),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedRoleId = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select a role';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Text('Status:'),
                        const SizedBox(width: 16),
                        Switch(
                          value: _isActive,
                          onChanged: (value) {
                            setState(() {
                              _isActive = value;
                            });
                          },
                        ),
                        Text(_isActive ? 'Active' : 'Inactive'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Display Latitude and Longitude
                    Text('Latitude: ${_getCurrentLocation()?.latitude ?? 'Not available'}'),
                    const SizedBox(height: 4),
                    Text('Longitude: ${_getCurrentLocation()?.longitude ?? 'Not available'}'),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: state.maybeWhen(
                            loading: () => null,
                            orElse: () => _savePersonnel,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          ),
                          child: state.maybeWhen(
                            loading: () => const CircularProgressIndicator(),
                            orElse: () => const Text('Save'),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          ),
                          child: const Text('Cancel'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _savePersonnel() {
    if (_formKey.currentState!.validate()) {
      final personnelDetails = PersonnelDetails(
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        address: _addressController.text,
        suburb: _suburbController.text.isEmpty ? null : _suburbController.text,
        state: _stateController.text.isEmpty ? null : _stateController.text,
        postcode: _postcodeController.text.isEmpty ? null : _postcodeController.text,
        country: _countryController.text.isEmpty ? null : _countryController.text,
        contactNumber: _contactNumberController.text.isEmpty ? null : _contactNumberController.text,
        additionalNotes: _additionalNotesController.text.isEmpty ? null : _additionalNotesController.text,
        status: _isActive ? 'active' : 'inactive',
        roleIds: _selectedRoleId != null ? [_selectedRoleId!] : [],
      );

      // Call cubit to save personnel
      context.read<PersonnelDetailsCubit>().addPersonnel(personnelDetails);
    }
  }
}