import 'package:clean_architecture/src/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:clean_architecture/src/presentation/bloc/user_bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListScreen extends StatefulWidget{
  const UserListScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UserListingState();
  }

}

class _UserListingState extends State<UserListScreen>{

  UserBloc? userBloc;

  @override
  void initState() {
    userBloc = BlocProvider.of<UserBloc>(context);
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<UserBloc,UserState>(builder: (BuildContext context,UserState state){

      if(state is UserListState){

      }

      return const Scaffold(
        body: Center(
          child: Text("Test"),
        ),
      );
    });
  }

}