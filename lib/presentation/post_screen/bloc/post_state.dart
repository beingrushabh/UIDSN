// ignore_for_file: must_be_immutable

part of 'post_bloc.dart';

/// Represents the state of Post in the application.
class PostState extends Equatable {
  PostState({this.postModelObj});

  PostModel? postModelObj;

  @override
  List<Object?> get props => [
        postModelObj,
      ];
  PostState copyWith({PostModel? postModelObj}) {
    return PostState(
      postModelObj: postModelObj ?? this.postModelObj,
    );
  }
}
