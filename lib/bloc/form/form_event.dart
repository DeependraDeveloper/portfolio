part of 'form_bloc.dart';

abstract class FormEvent extends Equatable {
  const FormEvent();
}

class FormSubmit extends FormEvent {
  final String name;
  final String email;
  final String subject;
  final String message;

  const FormSubmit({
    required this.name,
    required this.email,
    required this.subject,
    required this.message,
  });

  @override
  List<Object> get props => [
        name,
        email,
        subject,
        message,
      ];
}
