import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:medium_clone/app/features/auth/landing/authdialog/auth_dialog_controller.dart';
import 'package:medium_clone/app/uikit/uikit.dart';
import 'package:medium_clone/app/uikit/widgets/wiz_button.dart';

class DesktopLoginLandingPage extends GetView<AuthDialogController> {
  static const double _buttonWidth = 220;

  const DesktopLoginLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Spacer(flex: 3),
          Text(
            "welcome_back".tr,
            style: Styles.headline5?.copyWith(
              color: ColorPalette.textSecondary,
            ),
          ),
          const Spacer(flex: 2),
          LoginButton(
            icon: FontAwesomeIcons.google,
            text: "sign_in_with_google".tr,
            onTap: () {},
            width: _buttonWidth,
          ),
          const SizedBox(height: 12),
          LoginButton(
            icon: FontAwesomeIcons.facebook,
            text: "sign_in_with_facebook".tr,
            onTap: () {},
            width: _buttonWidth,
          ),
          const SizedBox(height: 12),
          LoginButton(
            icon: FontAwesomeIcons.apple,
            text: "sign_in_with_apple".tr,
            onTap: () {},
            width: _buttonWidth,
          ),
          const SizedBox(height: 12),
          LoginButton(
            icon: FontAwesomeIcons.twitter,
            text: "sign_in_with_twitter".tr,
            onTap: () {},
            width: _buttonWidth,
          ),
          const SizedBox(height: 12),
          LoginButton(
            icon: FontAwesomeIcons.envelope,
            text: "sign_in_with_email".tr,
            onTap: controller.toSignInWithEmailPage,
            width: _buttonWidth,
          ),
          const Spacer(flex: 1),
          RichText(
              text: TextSpan(
            text: "No Account? ",
            style: Styles.bodyText2?.copyWith(
              color: ColorPalette.textSecondary,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "Create one",
                style: Styles.bodyText2?.copyWith(
                  color: ColorPalette.green,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = controller.toCreateAccountLandingPage,
              )
            ],
          )),
          const Spacer(flex: 3),
          _buildTncText(),
          const Spacer(flex: 3),
        ],
      ),
    );
  }

  RichText _buildTncText() {
    final textStyle = Styles.bodyText2?.copyWith(
      color: ColorPalette.textSecondary.withOpacity(0.5),
      fontSize: 13,
    );
    final greenStyle = textStyle?.copyWith(
      decoration: TextDecoration.underline,
    );
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          const TextSpan(text: "By signing up you agree to our "),
          TextSpan(text: "Terms of Service".nonBreaking, style: greenStyle),
          const TextSpan(text: " and acknowledge that\nWizdom's "),
          TextSpan(text: "Privacy Policy".nonBreaking, style: greenStyle),
          const TextSpan(text: " applies to you."),
        ],
        style: textStyle,
      ),
    );
  }
}
