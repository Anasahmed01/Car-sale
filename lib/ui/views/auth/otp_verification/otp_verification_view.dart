import 'package:carsaleauction/src/utils/colors/colors.dart';
import 'package:carsaleauction/src/utils/images/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'otp_verification_viewmodel.dart';

class OtpVerificationView extends StackedView<OtpVerificationViewModel> {
  const OtpVerificationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OtpVerificationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: SvgPicture.asset(AppImages.logo2),
          ),
        ],
      ),
    );
  }

  @override
  OtpVerificationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OtpVerificationViewModel();
}
