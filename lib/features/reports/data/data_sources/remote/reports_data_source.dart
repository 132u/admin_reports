import 'package:auth_showcasing_app/features/reports/data/models/report.dart';

abstract class ReportsDataSource
{
  Future<ReportModel> getReports();
  Future<ReportModel> addReport(ReportModel report);
  Future<bool> deleteReport(ReportModel report);
  Future<ReportModel> editReport(ReportModel report);
}