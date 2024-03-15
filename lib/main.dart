import 'package:auth_showcasing_app/config/themes/app_themes.dart';
import 'package:auth_showcasing_app/features/reports/presentation/block/bloc/reports_bloc.dart';
import 'package:auth_showcasing_app/features/reports/presentation/pages/home/reports_list.dart';
import 'package:auth_showcasing_app/injection_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:auth_showcasing_app/firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await initializeDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReportBloc>(
      create: (context) => sl()..add(GetReportsEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: const ReportsList(),
      ),
    );
  }
}

