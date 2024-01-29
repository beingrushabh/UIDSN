// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [comment_widget],
/// and is typically used to hold data that is passed between different parts of the application.
class CommentModel extends Equatable {
  CommentModel() {}

  CommentModel copyWith() {
    return CommentModel();
  }

  @override
  List<Object?> get props => [];
}
