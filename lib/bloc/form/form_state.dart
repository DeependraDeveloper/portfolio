// ignore_for_file: override_on_non_overriding_member

part of 'form_bloc.dart';

final class MessageFormState {
  final bool isLoading;
  const MessageFormState({this.isLoading = false});

  MessageFormState copyWith({
    bool? isLoading,
  }) {
    return MessageFormState(
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object> get props => [
        isLoading,
      ];
}
