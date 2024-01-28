import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application/core/app_export.dart';
import 'package:rushabh_s_application/widgets/custom_elevated_button.dart';
import 'package:rushabh_s_application/domain/googleauth/google_auth_helper.dart';
import 'package:rushabh_s_application/domain/facebookauth/facebook_auth_helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child:
                      Column(children: [Spacer(), _buildLoginTab(context)]))));
    });
  }

  /// Section Widget
  Widget _buildLoginTab(BuildContext context) {
    return Container(
        height: 386.v,
        width: double.maxFinite,
        decoration: AppDecoration.outlinePrimaryContainer,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 381.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(15.h)))),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 29.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_pick_a_name".tr,
                            style: theme.textTheme.headlineMedium),
                        SizedBox(height: 2.v),
                        Container(
                            width: 308.h,
                            margin: EdgeInsets.only(right: 26.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_hey_its_not_much".tr,
                                      style: theme.textTheme.bodySmall),
                                  ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 39.v),
                        Text("lbl_sign_in_up_with".tr,
                            style: theme.textTheme.bodyLarge),
                        SizedBox(height: 9.v),
                        CustomElevatedButton(
                            text: "lbl_google".tr,
                            leftIcon: Container(
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgMaskGroup,
                                    height: 25.v,
                                    width: 24.h)),
                            onPressed: () {
                              onTapGoogle(context);
                            }),
                        SizedBox(height: 7.v),
                        CustomElevatedButton(
                            text: "lbl_facebook".tr,
                            leftIcon: Container(
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFacebookF,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize)),
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            onPressed: () {
                              onTapFacebook(context);
                            }),
                        SizedBox(height: 7.v),
                        CustomElevatedButton(
                            text: "lbl_apple".tr,
                            leftIcon: Container(

                                child: CustomImageView(
                                    imagePath: ImageConstant.imgApplewhite1,
                                    height: 30.v,
                                    width: 24.h)),
                            buttonStyle:
                                CustomButtonStyles.fillOnPrimaryContainer)
                      ])))
        ]));
  }

  onTapGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
