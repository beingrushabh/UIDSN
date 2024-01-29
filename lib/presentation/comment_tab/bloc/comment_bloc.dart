import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rushabh_s_application/presentation/comment_tab/models/comment_model.dart';
part 'comment_event.dart';
part 'comment_state.dart';

/// A bloc that manages the state of a Comment according to the event that is dispatched to it.
class CommentBloc extends Bloc<CommentEvent, CommentState> {
  CommentBloc(CommentState initialState) : super(initialState) {
    on<CommentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CommentInitialEvent event,
    Emitter<CommentState> emit,
  ) async {}
}
