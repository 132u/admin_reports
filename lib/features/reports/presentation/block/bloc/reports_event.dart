part of 'reports_bloc.dart';

abstract class ReportsEvent{
  const ReportsEvent();
}

class GetReportsEvent extends ReportsEvent{
  const GetReportsEvent();
}
