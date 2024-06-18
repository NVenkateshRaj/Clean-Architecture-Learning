import 'package:clean_architecture/src/data/models/user_model/user_list_response.dart';
import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable{
  @override
  List<Object?> get props => [];
}

class UserInitState extends UserState{}
class UserLoadingState extends UserState{}

class UserListState extends UserState{
  final UserListResponse userListResponse;
  UserListState(this.userListResponse);
}
