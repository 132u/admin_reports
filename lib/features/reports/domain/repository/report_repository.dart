import 'package:auth_showcasing_app/core/resources/data_state.dart';
import 'package:auth_showcasing_app/features/reports/domain/entities/report.dart';

abstract class ReportRepository{
  Stream<List<ReportEntity>> getReports();
  Future<DataState<ReportEntity>> addReport(ReportEntity report);
  Future<DataState> deleteReport(ReportEntity report);
  Future<DataState> editReport(ReportEntity report);
}