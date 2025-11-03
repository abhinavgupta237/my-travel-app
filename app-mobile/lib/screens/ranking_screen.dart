import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/app_cubit.dart';
import '../state/app_state.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (state.loading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        return Scaffold(
          appBar: AppBar(title: const Text('Ranked Items')),
          body: ListView.builder(
            itemCount: state.media.length,
            itemBuilder: (context, index) {
              final item = state.media[index];
              return ListTile(
                title: Text('ID: ${item.id}'),
                subtitle: Text(
                    'Quality: ${item.qualityScore.toStringAsFixed(2)}  Engagement: ${item.engagementScore.toStringAsFixed(2)}'),
              );
            },
          ),
        );
      },
    );
  }
}