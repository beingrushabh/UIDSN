import 'bloc/post_bloc.dart';
import 'models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application/core/app_export.dart';
import 'package:rushabh_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:rushabh_s_application/widgets/app_bar/appbar_title.dart';
import 'package:rushabh_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:rushabh_s_application/presentation/comment_tab/comment_widget.dart';
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
                  //Post Profile ID
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
                  //post caption
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
                  //post photo/media
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle27,
                    height: 242.v,
                    width: 392.h,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  SizedBox(height: 10.v),
                  //Post reactions
                  _buildPostRow(context),
                  SizedBox(height: 19.v),
                  //comment section, this is the section where the error is
                  // SizedBox(
                  //   child: CommentScreen(),
                  // )
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
//UI corrected
  /// Section Widget
  Widget _buildPostRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        children: [
          //Below id Upvote icon with upvote count
          SizedBox(
            height: 30.v,
            width: 70.h,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                    size: 23.0,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    "32",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10.h),
          //down vote button
          SizedBox(
            height: 30.v,
            width: 40.h,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Icon(
                      Icons.arrow_downward_rounded,
                      color: Colors.white,
                      size: 23.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //comment button
          SizedBox(width: 10.h),
          SizedBox(
            height: 30.v,
            width: 140.h,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.comment,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "Comment",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            height: 30.adaptSize,
            width: 40.adaptSize,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                      size:22,
                    ),
                  ),
                ],
              ),
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
