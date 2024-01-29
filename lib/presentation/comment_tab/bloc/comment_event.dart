// ignore_for_file: must_be_immutable

part of 'comment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Post widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CommentEvent extends Equatable {}

/// Event that is dispatched when the Post widget is first created.
class CommentInitialEvent extends CommentEvent {
  @override
  List<Object?> get props => [];
}
