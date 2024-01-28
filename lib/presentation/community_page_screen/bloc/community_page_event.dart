// ignore_for_file: must_be_immutable

part of 'community_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CommunityPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CommunityPageEvent extends Equatable {}

/// Event that is dispatched when the CommunityPage widget is first created.
class CommunityPageInitialEvent extends CommunityPageEvent {
  @override
  List<Object?> get props => [];
}
