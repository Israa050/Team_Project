
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/loading.dart';
import '../../logic/cubit/crisis_cubit.dart';
import '../../logic/cubit/crisis_state.dart';
import 'crisis_list_view.dart';

class CrisisBlocBuilder extends StatefulWidget {
  const CrisisBlocBuilder({super.key});

  @override
  State<CrisisBlocBuilder> createState() => _CrisisBlocBuilderState();
}

class _CrisisBlocBuilderState extends State<CrisisBlocBuilder> {

  @override
  void initState() {
    context.read<CrisisCubit>().emiCrisisSuccess();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrisisCubit, CrisisState>(
      buildWhen: (previous, current) =>
          current is CrisisSuccess || current is CrisisError,
      builder: (context,state){
        return state.maybeWhen(
          success: (crisis) {
            return CrisisListView(crisis: crisis);
          },
          error: (error) {
            return setupError(error);
          },
          orElse: () {
            return LoadingPage();
          }
        );
      }
    );
  }

   Widget setupError(String message) {
    return Center(child: Text('Error $message'));
  }
}