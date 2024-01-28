import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rushabh_s_application/presentation/community_page_screen/models/community_page_model.dart';
part 'community_page_event.dart';
part 'community_page_state.dart';

/// A bloc that manages the state of a CommunityPage according to the event that is dispatched to it.
class CommunityPageBloc extends Bloc<CommunityPageEvent, CommunityPageState> {
  CommunityPageBloc(CommunityPageState initialState) : super(initialState) {
    on<CommunityPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CommunityPageInitialEvent event,
    Emitter<CommunityPageState> emit,
  ) async {}
}
