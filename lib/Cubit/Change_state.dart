part of 'change_cubit.dart';



abstract class ChangeState {
  const ChangeState();

}

class ChangeInitial extends ChangeState {
  const ChangeInitial();

}

class ChangeLoading extends ChangeState {

  const ChangeLoading();

}

class ChangeLoaded extends ChangeState {
  final List<String> change;
  const ChangeLoaded(this.change);


  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ChangeLoaded && o.change == Change;
  }

  @override
  int get hashCode => change.hashCode;

}

class ChangeError extends ChangeState {
  final String message;
  const ChangeError(this.message);


  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ChangeError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;

}