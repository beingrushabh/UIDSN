import 'package:flutter/material.dart';
import 'package:rushabh_s_application/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 88.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 88.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgGradientnameblack900nameblack900opacity0:
        return Container(
          height: 88.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.black900.withOpacity(1),
                appTheme.black900.withOpacity(0),
              ],
            ),
          ),
        );
      default:
        return null;
    }
  }
}
class FullScreenImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Image.network(
        'https://example.com/your-image.jpg', // Replace with your image URL
        fit: BoxFit.cover,
      ),
    );
  }
}

enum Style {
  bgGradientnameblack900nameblack900opacity0,
}
