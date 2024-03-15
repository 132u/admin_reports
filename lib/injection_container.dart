import 'package:auth_showcasing_app/features/reports/data/repository/report_repository_implementation.dart';
import 'package:auth_showcasing_app/features/reports/domain/repository/report_repository.dart';
import 'package:auth_showcasing_app/features/reports/domain/usecases/reports_usecases.dart';
import 'package:auth_showcasing_app/features/reports/presentation/block/bloc/reports_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async 
{
  final fireStore = FirebaseFirestore.instance;
  sl.registerSingleton<Dio>(Dio(sl()));
  sl.registerSingleton<ReportRepository>(ReportRepositoryImplementation(sl()));
  sl.registerSingleton<GetAllReportsUseCase>(GetAllReportsUseCase(sl()));
  sl.registerFactory<ReportBloc>(() => ReportBloc(sl()));
}