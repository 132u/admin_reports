part of 'reports_bloc.dart';

abstract class ReportsState extends Equatable {
  final List<ReportEntity>? reports;
  final DioException? error;

  const ReportsState({this.reports, this.error});
  
  @override
  List<Object> get props => [];
}

class ReportsLoading extends ReportsState {
  const ReportsLoading();
}

class ReportsDone extends ReportsState {
  const ReportsDone(List<ReportEntity> reports): super(reports: reports);
}

class ReportsError extends ReportsState {
  const ReportsError(DioException error): super(error: error);
}