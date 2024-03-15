import 'package:auth_showcasing_app/core/resources/data_state.dart';
import 'package:auth_showcasing_app/features/reports/domain/entities/report.dart';
import 'package:auth_showcasing_app/features/reports/domain/repository/report_repository.dart';

import '../../../../core/resources/data_state.dart';
import '../entities/report.dart';
import '../repository/report_repository.dart';

class GetAllReportsUseCase
{
  final ReportRepository _repository;
  GetAllReportsUseCase(this._repository);

  Future<Stream<List<ReportEntity>>> call() async {
    return _repository.getReports();
  }
}


class AddReportUseCase
{
  final ReportRepository repository;
  AddReportUseCase(this.repository);

  Future<DataState<ReportEntity>> call(ReportEntity report) async {
    return repository.addReport(report);
  }
}

class DeleteReportUseCase
{
  final ReportRepository repository;
  DeleteReportUseCase(this.repository);

  Future<void> call(ReportEntity report) async {
    repository.deleteReport(report);
  }
}

class EditReportUseCase
{
  final ReportRepository repository;
  EditReportUseCase(this.repository);

  Future<void> call(ReportEntity report) async {
    repository.editReport(report);
  }
}