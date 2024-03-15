import 'package:auth_showcasing_app/features/reports/presentation/block/bloc/reports_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportsList extends StatelessWidget {
  const ReportsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),

    );
  }

  _buildAppBar()
  {
    return AppBar(
      title: const Text(
        'Reports List',
        style: TextStyle(
          color: Colors.black
        ),
      ),
    );
  }

  Widget _buildBody()
  {
    return BlocBuilder<ReportBloc, ReportsState>(
      builder: (context, state) {
        if(state is ReportsLoading){
           return const Text('ReportsLoading');
          // return const Center(child: CupertinoActivityIndicator());
        }
        if(state is ReportsError){
          // return const Center(child: Icon(Icons.refresh));
          return const Text('ReportsError');
        }
        if(state is ReportsDone){
          return const Text('ReportsDone');
          // return ListView.builder(
          //   itemCount: state.reports!.length,
          //   itemBuilder: (context, index){
          //     return ListTile(
          //       title: Text('$index'),
          //     );
          //   });
        }
        return const SizedBox();
      },
    );
  }
}