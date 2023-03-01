part of 'credit_bloc.dart';

abstract class CreditState {}

class CreditInitial extends CreditState {}

class CreditFetchSuccess extends CreditState{
  CreditFetchSuccess(this.data);

  final List<Credit> data;
}
