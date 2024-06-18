import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  final int? page;
  final int? perPage;
  final int? total;
  final int? totalPages;
  final List<User>? data;

  const UserEntity({this.page,
  this.perPage,
  this.total,
  this.totalPages,
  this.data,});

  @override
  List<Object?> get props => [
    page,
    perPage,
    total,
    totalPages,
    data
  ];


}

class User extends Equatable{
  final int? id;
  final String? email;
  final String? firstName;
  final  String? lastName;
  final String? avatar;

 const User({this.id, this.email, this.firstName, this.lastName, this.avatar});

  @override
  List<Object?> get props => [
    id,
    email,
    firstName,
    lastName,
    avatar
  ];


}