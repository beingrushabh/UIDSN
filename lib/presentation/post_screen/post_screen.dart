import 'bloc/post_bloc.dart';
import 'models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application/core/app_export.dart';
import 'package:rushabh_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:rushabh_s_application/widgets/app_bar/appbar_title.dart';
import 'package:rushabh_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:rushabh_s_application/widgets/custom_icon_button.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PostBloc>(
      create: (context) => PostBloc(PostState(
        postModelObj: PostModel(),
      ))
        ..add(PostInitialEvent()),
      child: PostScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 15.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: _buildProfileRow(
                      context,
                      username: "lbl_rohan_das".tr,
                      handle: "msg_indian_football".tr,
                      timestamp: "lbl_30_min_ago".tr,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Container(
                    width: 355.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      right: 26.h,
                    ),
                    child: Text(
                      "msg_your_mobile_ui".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle27,
                    height: 242.v,
                    width: 392.h,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  SizedBox(height: 10.v),
                  _buildPostRow(context),
                  SizedBox(height: 19.v),
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
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 67.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgBackButton,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 35.v,
          bottom: 5.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_indian_football".tr,
        margin: EdgeInsets.only(
          top: 47.v,
          bottom: 14.v,
        ),
      ),
      styleType: Style.bgGradientnameblack900nameblack900opacity0,
    );
  }

  /// Section Widget
  Widget _buildPostRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        children: [
          SizedBox(
            height: 30.v,
            width: 57.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUpvote,
                  height: 30.v,
                  width: 57.h,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUpvoteIcon,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 6.h),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgPostDownvoteButtonWhiteA700,
              ),
            ),
          ),
          Container(
            height: 30.v,
            width: 100.h,
            margin: EdgeInsets.only(left: 16.h),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPostShareButton,
                  height: 30.v,
                  width: 100.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUpvoteIcon,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCommentText,
                          height: 8.v,
                          width: 56.h,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            top: 3.v,
                            bottom: 4.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            child: CustomImageView(
              imagePath: ImageConstant.imgPostShareButton,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
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
