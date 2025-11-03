import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/app_cubit.dart';
import 'ranking_screen.dart';

class ImportScreen extends StatelessWidget {
  const ImportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Scaffold(
      appBar: AppBar(title: const Text('Import Trip')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Select Folder'),
          onPressed: () async {
            // call folder picker stub
            await cubit.importAndRank('/path/to/trip');
            if (context.mounted) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RankingScreen()),
              );
            }
          },
        ),
      ),
    );
  }
}