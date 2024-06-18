import 'dart:convert';

import 'package:clean_architecture/src/core/network/dio_client.dart';
import 'package:clean_architecture/src/data/models/user_model/user_list_response.dart';

abstract class UserRemoteRepo{
  Future<UserListResponse> getUserList();
}

class UserRemoteRepoImp implements  UserRemoteRepo{

  final DioClient _dioClient;

  const UserRemoteRepoImp(this._dioClient);

  @override
  Future<UserListResponse> getUserList() async{
   try{
     var response  = await _dioClient.get("https://reqres.in/api/users?page=2");
     UserListResponse userListResponse = UserListResponse.fromJson(jsonDecode(response.data));
     return userListResponse;
   }catch(e){
     rethrow;
   }
  }

}