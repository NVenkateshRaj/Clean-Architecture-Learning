import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_architecture/src/presentation/bloc/user_bloc/user_events.dart';
import 'package:clean_architecture/src/presentation/bloc/user_bloc/user_state.dart';

class UserBloc extends Bloc<UserEvents,UserState>{


  UserBloc():super(UserInitState()){
    on((event, emit) async{
      if(event == UserEvents.fetchUserList){

      }
    });
  }

}