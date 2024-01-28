import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rushabh_s_application/presentation/post_screen/models/post_model.dart';
part 'post_event.dart';
part 'post_state.dart';

/// A bloc that manages the state of a Post according to the event that is dispatched to it.
class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(PostState initialState) : super(initialState) {
    on<PostInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PostInitialEvent event,
    Emitter<PostState> emit,
  ) async {}
}
