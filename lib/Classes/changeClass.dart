import 'package:meta/meta.dart';


class ChangeC{
  final List<String> changeDenote;

  ChangeC({
    @required this.changeDenote
});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ChangeC && o.changeDenote == changeDenote;
  }

  @override
  int get hashCode => changeDenote.hashCode;
}