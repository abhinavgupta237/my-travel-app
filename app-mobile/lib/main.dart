import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'state/app_cubit.dart';
import 'screens/import_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      home: BlocProvider(create: (_) => AppCubit(), child: const ImportScreen()),
    );
  }
}