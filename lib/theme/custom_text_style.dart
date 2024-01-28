import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallff00efff => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF00EFFF),
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.whiteA700.withOpacity(0.5),
  );
  static get bodySmallWhiteA70012 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.whiteA700,
    fontSize: 12.fSize,
  );
  static get bodySmallff4800ff => theme.textTheme.bodySmall!.copyWith(
    color: Color(0XFF4800FF),
    fontSize: 12.fSize,
  );
  static get bodySmallffffffff => theme.textTheme.bodySmall!.copyWith(
    color: Color(0XFFFFFFFF),
    fontSize: 12.fSize,
  );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get acme {
    return copyWith(
      fontFamily: 'Acme',
    );
  }
}
