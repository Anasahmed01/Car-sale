import 'package:carsaleauction/src/resubale_widget/custom_text.dart';
import 'package:carsaleauction/src/utils/colors/colors.dart';
import 'package:carsaleauction/ui/views/auth/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: CustomText.customSizedText(text: 'CREATE ACCOUNT'),
      ),
      body: Column(
        children: [
          CustomText.customSizedText(
              text:
                  'To be able to participate in the auction please register yourself',
              maxLine: 2,
              fontWeight: FontWeight.w600),
          CustomText.customSizedText(
              text: 'Your Phone Number',
              maxLine: 2,
              fontWeight: FontWeight.w600),
          Container(
            child: CustomText.customSizedText(text: 'CREATE ACCOUNT'),
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'You have an account? '),
                TextSpan(
                  text: 'Sign in',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' world!'),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
