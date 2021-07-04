class Tasks{
  final String TaskTitle;
  bool isdone;

  Tasks({this.TaskTitle, this.isdone = false});
  void ToggleDone(){
    isdone=!isdone;
  }
}