import 'package:auth_showcasing_app/features/reports/domain/entities/report.dart';
import 'package:auth_showcasing_app/features/reports/domain/usecases/reports_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'reports_event.dart';
part 'reports_state.dart';

class ReportBloc extends Bloc<ReportsEvent, ReportsState> {
  final GetAllReportsUseCase _allReportsUseCase;
  ReportBloc(this._allReportsUseCase) : super(ReportsLoading()){
    //register event 
    on<GetReportsEvent>(onGetReports);
  }

  void onGetReports(GetReportsEvent event, Emitter<ReportsState> emit) async {
    final state = await _allReportsUseCase.call();
    // if(!state.isEmpty)
    // {
      emit(ReportsDone(state.toList() as List<ReportEntity>));
    // }
  }
}
