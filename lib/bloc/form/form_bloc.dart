import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:personalportfolio/message_sheets_api.dart';
import 'package:personalportfolio/models/message.dart';

part 'form_event.dart';
part 'form_state.dart';

class FormBloc extends Bloc<FormEvent, MessageFormState> {
  FormBloc() : super(const MessageFormState()) {
    on<FormSubmit>(_onFormSubmit);
  }

  Future<FutureOr<void>> _onFormSubmit(
      FormSubmit event, Emitter<MessageFormState> emit) async {
    emit(state.copyWith(isLoading: true));

    final message = {
      Message.name: event.name,
      Message.email: event.email,
      Message.subject: event.subject,
      Message.message: event.message,
    };

    await MessageSheetsApi.insert([message]);

    emit(state.copyWith(isLoading: false));
  }
}
