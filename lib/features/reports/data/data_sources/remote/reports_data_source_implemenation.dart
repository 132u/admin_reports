import 'package:auth_showcasing_app/features/reports/data/data_sources/remote/reports_data_source.dart';
import 'package:auth_showcasing_app/features/reports/data/models/report.dart';

const String REPORTS_COLLECTION_REF = "reports";

class ReportsDataSourceImplementation implements ReportsDataSource
{
  @override
  Future<ReportModel> addReport(ReportModel report) {
    // TODO: implement addReport
    throw UnimplementedError();
  }
  
  @override
  Future<bool> deleteReport(ReportModel report) {
    // TODO: implement deleteReport
    throw UnimplementedError();
  }
  
  @override
  Future<ReportModel> editReport(ReportModel report) {
    // TODO: implement editReport
    throw UnimplementedError();
  }
  
  @override
  Future<ReportModel> getReports() {
    // TODO: implement getReports
    throw UnimplementedError();
  }
}