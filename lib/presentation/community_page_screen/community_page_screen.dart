import 'bloc/community_page_bloc.dart';
import 'models/community_page_model.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application/core/app_export.dart';
import 'package:rushabh_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:rushabh_s_application/widgets/app_bar/custom_app_bar.dart';

class CommunityPageScreen extends StatelessWidget {
  const CommunityPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CommunityPageBloc>(
      create: (context) => CommunityPageBloc(CommunityPageState(
        communityPageModelObj: CommunityPageModel(),
      ))
        ..add(CommunityPageInitialEvent()),
      child: CommunityPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommunityPageBloc, CommunityPageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: true, // Set this to true
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCoverStack(context),
                  SizedBox(height: 13.v),
                  Container(
                    width: 347.h,
                    margin: EdgeInsets.only(
                      left: 13.h,
                      right: 32.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_welcome_to_community2".tr,
                            style: CustomTextStyles.bodySmallffffffff,
                          ),
                          TextSpan(
                            text: "lbl_more".tr,
                            style: CustomTextStyles.bodySmallff4800ff,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 13.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCoverStack(BuildContext context) {
    return SizedBox(
      height: 196.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 164.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  // Full-screen image
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle24,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                  ),

                  // Custom app bar on top of the image
                  CustomAppBar(
                    height: 164.v,
                    leadingWidth: double.maxFinite,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowDown,
                      margin: EdgeInsets.fromLTRB(28.h, 44.v, 336.h, 91.v),
                    ),

                  ),
                ],
              )

            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCommunityHeader,
            height: 45.v,
            width: 366.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
