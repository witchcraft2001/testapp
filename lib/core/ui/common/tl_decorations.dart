// Flutter imports:
import 'package:flutter/material.dart';

class TlDecoration {
  TlDecoration._();

  // Values
  static const brBaseValue = 12.0;
  static const brMaxValue = 3.4028e+38;

  static const brBtnBaseValue = 20.0;
  static const brBtnSmallValue = 16.0;
  static const brBtnCompactValue = 128.0;
  static const brBtnOtherValue = 8.0;

  static const brNewsValue = 16.0;

  // BorderRadiuses
  static BorderRadius brS = BorderRadius.circular(8.0);
  static BorderRadius brBase = BorderRadius.circular(brBaseValue);
  static BorderRadius brM = BorderRadius.circular(16.0);
  static BorderRadius brL = BorderRadius.circular(20.0);
  static BorderRadius brMax = BorderRadius.circular(brMaxValue);

  static BorderRadius brNone = BorderRadius.circular(0.0);
  static BorderRadius brBtnBase = BorderRadius.circular(brBtnBaseValue);
  static BorderRadius brBtnSmall = BorderRadius.circular(brBtnSmallValue);
  static BorderRadius brBtnCompact = BorderRadius.circular(brBtnCompactValue);
  static BorderRadius brBtnRounded = BorderRadius.circular(brMaxValue);
  static BorderRadius brBtnOther = BorderRadius.circular(brBtnOtherValue);

  static BorderRadius brNews = BorderRadius.circular(brNewsValue);
  static BorderRadius brNewsImage = const BorderRadius.only(
    bottomRight: Radius.circular(brNewsValue),
  );

  static BorderRadius brTextField = BorderRadius.circular(32.0);
  static BorderRadius brSearchField = BorderRadius.circular(40.0);

  static BorderRadius brTagBase = BorderRadius.circular(6.0);
  static BorderRadius brTagXl = BorderRadius.circular(36.0);

  static BorderRadius brDialogIcon = BorderRadius.circular(44.0);

  static BorderRadius brAvatarLetter = BorderRadius.circular(28.0);

  static BorderRadius brProfileCard = BorderRadius.circular(20.0);

  static BorderRadius brBottomForm = const BorderRadius.only(
    topLeft: Radius.circular(16.0),
    topRight: Radius.circular(16.0),
  );

  static BorderRadius brOnboardingBottomForm = const BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0),
  );

  // Radiuses
  static const rChatMessage = Radius.circular(24.0);
}
