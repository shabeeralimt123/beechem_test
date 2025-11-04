import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/auth_cubit.dart';
import '../cubits/personnel_cubit.dart';
import '../models/personnel_response.dart';
import './personnel_add_screen.dart';

class PersonnelListScreen extends StatefulWidget {
  const PersonnelListScreen({super.key});

  @override
  State<PersonnelListScreen> createState() => _PersonnelListScreenState();
}

class _PersonnelListScreenState extends State<PersonnelListScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Personnel> _allPersonnel = [];

  @override
  void initState() {
    super.initState();
    context.read<PersonnelCubit>().loadPersonnel();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String _getFullName(Personnel personnel) {
    return '${personnel.firstName} ${personnel.lastName ?? ''}'.trim();
  }

  String _getFullAddress(Personnel personnel) {
    final address = personnel.address;
    final suburb = personnel.suburb;
    final state = personnel.state;
    final postcode = personnel.postcode;
    final country = personnel.country;

    final addressParts = [address, suburb, state, postcode, country]
        .where((part) => part != null && part.isNotEmpty)
        .toList();

    return addressParts.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personnel List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthCubit>().logout();
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search by name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      context.read<PersonnelCubit>().searchPersonnel(value, _allPersonnel);
                    },
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    context.read<PersonnelCubit>().searchPersonnel(_searchController.text, _allPersonnel);
                  },
                  child: const Text('GO'),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<PersonnelCubit, PersonnelState>(
              builder: (context, state) {
                if (state is PersonnelLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is PersonnelError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.message),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            context.read<PersonnelCubit>().loadPersonnel();
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                } else if (state is PersonnelLoaded) {
                  if (_allPersonnel.isEmpty) {
                    _allPersonnel = state.personnel;
                  }

                  if (state.personnel.isEmpty) {
                    return const Center(child: Text('No personnel found'));
                  }

                  return ListView.builder(
                    itemCount: state.personnel.length,
                    itemBuilder: (context, index) {
                      final personnel = state.personnel[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _getFullName(personnel),
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Role: ${personnel.roleDetails.isNotEmpty ? personnel.roleDetails.first.role : 'N/A'}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Contact: ${personnel.contactNumber ?? 'N/A'}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Address: ${_getFullAddress(personnel)}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PersonnelAddScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}