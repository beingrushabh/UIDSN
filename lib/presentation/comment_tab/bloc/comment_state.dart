// ignore_for_file: must_be_immutable

part of 'comment_bloc.dart';

/// Represents the state of Post in the application.
class CommentState extends Equatable {
  CommentState({this.commentModelObj});

  CommentModel? commentModelObj;
  @override
  List<Object?> get props => [
        commentModelObj,
      ];
  CommentState copyWith({CommentModel? commentModelObj}) {
    return CommentState(
      commentModelObj: commentModelObj ?? this.commentModelObj,
    );
  }
}
