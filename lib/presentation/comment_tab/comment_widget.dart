import 'bloc/comment_bloc.dart';
import 'package:rushabh_s_application/presentation/comment_tab/models/comment_model.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application/core/app_export.dart';


class CommentScreen extends StatelessWidget {
  const CommentScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<CommentBloc>(
      create: (context) =>
      CommentBloc(CommentState(
        commentModelObj: CommentModel(),
      ))
        ..add(CommentInitialEvent()),
      child: CommentScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentBloc, CommentState>(
      builder: (context, state) {
        return SafeArea(child: Scaffold(
          body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 15.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildProfileRow(
                      context,
                      username: "lbl_rohan_das".tr,
                      handle: "msg_indian_football".tr,
                      timestamp: "lbl_30_min_ago".tr,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 372.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 4.h,
                      ),
                      child: Text(
                        "msg_your_mobile_ui".tr,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 30.v,
                            width: 84.h,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 30.v,
                                  width: 84.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                          ImageConstant.imgReplyArrow,
                                          height: 18.v,
                                          width: 20.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 3.h),
                                          child: Text(
                                            "lbl_reply".tr,
                                            style: CustomTextStyles
                                                .bodyMediumWhiteA700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 30.v,
                            width: 58.h,
                            margin: EdgeInsets.only(left: 17.h),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 30.v,
                                  width: 58.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.h,
                                      bottom: 5.v,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                          ImageConstant.imgUpvoteIcon16x15,
                                          height: 16.v,
                                          width: 15.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 3.h),
                                          child: Text(
                                            "lbl_32".tr,
                                            style: CustomTextStyles
                                                .bodyMediumWhiteA700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgTwitter,
                            height: 30.v,
                            width: 36.h,
                            margin: EdgeInsets.only(left: 17.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              )
          
          ),
        )

        );
      },
    );
  }
  Widget _buildProfileRow(
      BuildContext context, {
        required String username,
        required String handle,
        required String timestamp,
      }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPlay,
          height: 35.adaptSize,
          width: 35.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                handle,
                style: CustomTextStyles.bodySmallWhiteA700.copyWith(
                  color: appTheme.whiteA700.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 7.h,
            top: 4.v,
            bottom: 17.v,
          ),
          child: Text(
            timestamp,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.whiteA700.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}
