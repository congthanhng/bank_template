import 'dart:async';

import 'package:bank_template/domain/models/credit.dart';
import 'package:bank_template/domain/usecases/credit_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';

part 'credit_event.dart';
part 'credit_state.dart';

class CreditBloc extends Bloc<CreditEvent, CreditState> {
  CreditBloc({CreditUseCase? creditUseCase}) : super(CreditInitial()) {
    _creditUseCase = creditUseCase ?? GetIt.I<CreditUseCase>();

    on<CreditFetched>(_onFetched);
  }
  late final CreditUseCase _creditUseCase;

  _onFetched(CreditFetched event, Emitter<CreditState> emit) async {
    await _creditUseCase.fetchData().then((value) {
      if(value.isNotEmpty){
        emit(CreditFetchSuccess(value));
      }
    },);
  }
}
