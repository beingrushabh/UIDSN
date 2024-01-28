// ignore_for_file: must_be_immutable

part of 'community_page_bloc.dart';

/// Represents the state of CommunityPage in the application.
class CommunityPageState extends Equatable {
  CommunityPageState({this.communityPageModelObj});

  CommunityPageModel? communityPageModelObj;

  @override
  List<Object?> get props => [
        communityPageModelObj,
      ];
  CommunityPageState copyWith({CommunityPageModel? communityPageModelObj}) {
    return CommunityPageState(
      communityPageModelObj:
          communityPageModelObj ?? this.communityPageModelObj,
    );
  }
}
