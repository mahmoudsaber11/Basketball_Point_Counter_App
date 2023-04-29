import 'package:basketball_point_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(AppInitailState());
  static CounterCubit get(context) => BlocProvider.of(context);
  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamAandBIncrement(int buttomNumber, String team) {
    if (team == 'A') {
      teamAPoints += buttomNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttomNumber;
      emit(CounterBIncrementState());
    }
  }

  void removeteamAandBIncrement() {
    teamAPoints = 0;
    emit(CounterRemoveAIncrementState());
    teamBPoints = 0;
    emit(CounterRemoveBIncrementState());
  }
}
