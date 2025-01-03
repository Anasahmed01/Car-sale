import 'package:carsaleauction/src/resubale_widget/custom_text.dart';
import 'package:carsaleauction/src/utils/colors/colors.dart';
import 'package:carsaleauction/src/utils/images/images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        leading: GestureDetector(
          onTap: () {},
          child: const SizedBox(
            width: 30,
            child: Icon(
              Icons.keyboard_arrow_left_rounded,
              size: 45,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(AppImages.logo3))),
              ),
            ),
            CustomText.customSizedText(
                text: 'Phone Verification',
                fontWeight: FontWeight.w800,
                size: 26),
            // const Text(
            //   "Phone Verification",
            //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            // ),
            const SizedBox(
              height: 10,
            ),
            CustomText.customSizedText(
                text: 'We sent a verification code to\n Phone Number',
                maxLine: 2,
                fontWeight: FontWeight.w500,
                size: 16,
                textAlign: TextAlign.center),
            const SizedBox(
              height: 30,
            ),
            Pinput(
              length: 4,
              focusedPinTheme: PinTheme(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 60,
                height: 60,
                // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.deepPurpleAccent, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              defaultPinTheme: PinTheme(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 60,
                height: 60,
                // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.greyColor.withOpacity(0.3), width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              mainAxisAlignment: MainAxisAlignment.center,
              showCursor: true,
              onChanged: (value) {
                viewModel.code = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Didn’t receive the code? ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor.withOpacity(0.6)),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // viewModel.navigateToOtpView();
                        },
                      text: 'Resend',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: GestureDetector(
        onTap: () => viewModel.navigateToNatinoalidVerificationViewView(),
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.sizeOf(context).width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.darkGreenColor),
          child: CustomText.customSizedText(
            text: 'Confirm',
            fontWeight: FontWeight.w700,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }

  @override
  OtpVerificationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OtpVerificationViewModel();
}
