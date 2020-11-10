import 'package:bloc/bloc.dart';
import 'package:spaza_tech_test1/Classes/changeClass.dart';

part 'Change_state.dart';

class ChangeCubit extends Cubit<ChangeState> {

  ChangeCubit() : super(ChangeInitial());

  List<String> newList = [];
  var moneyList = ["R200.00","R100.00","R50.00","R20.00","R10.00","R5.00","R2.00","R1.00","50c","20c"];


  Future<void> getChange(double payment) async {
    emit(ChangeLoading());
    List<int> changeList = [0,0,0,0,0,0,0,0,0,0];
    final amount = 485.40;
    if (payment >= amount) {
      var calc = payment - amount;
      newList.clear();
      while (calc >= 0.20) {
        if (calc >= 200) {
          calc -= 200;
          changeList[0] += 1;
        }
        else if (calc >= 100) {
          calc -= 100;
          changeList[1] += 1;
        }
        else if (calc >= 50) {
          calc -= 50;
          changeList[2] += 1;
        }
        else if (calc >= 20) {
          calc -= 20;
          changeList[3] += 1;
        }
        else if (calc >= 10) {
          calc -= 10;
          changeList[4] += 1;
        }
        else if (calc >= 5) {
          calc -= 5;
          changeList[5] += 1;
        }
        else if (calc >= 2) {
          calc -= 2;
          changeList[6] += 1;
        }
        else if (calc >= 1) {
          calc -= 1;
          changeList[7] += 1;
        }
        else if (calc >= 0.50) {
          calc -= 0.50;
          changeList[8] += 1;
        }
        else if (calc >= 0.20) {
          calc -= 0.20;
          changeList[9] += 1;
        }
      }
      for(var i = 0; i < changeList.length; i++)
        {
          if(changeList[i] != 0){
            newList.add(changeList[i].toString() + "x " + moneyList[i]);
          }
        }
      emit(ChangeLoaded(newList));
    }
    else {
      emit(ChangeError("Insufficient Funds"));
    }
  }


}