import 'package:carsaleauction/src/resubale_widget/custom_text.dart';
import 'package:carsaleauction/src/resubale_widget/textfield.dart';
import 'package:carsaleauction/src/utils/colors/colors.dart';
import 'package:carsaleauction/src/utils/images/images.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'natinoalid_verification_viewmodel.dart';

class NatinoalidVerificationView
    extends StackedView<NatinoalidVerificationViewModel> {
  const NatinoalidVerificationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NatinoalidVerificationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: CustomText.customSizedText(
            text: 'CREATE ACCOUNT',
            fontWeight: FontWeight.w700,
            size: 16,
            color: AppColors.blackColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              CustomText.customSizedText(
                  text: 'Verify Your Identity with Nafath',
                  size: 20,
                  fontWeight: FontWeight.w600),
              const SizedBox(
                height: 30,
              ),
              CustomText.customSizedText(
                  text: 'Status/Iqama ID Number', fontWeight: FontWeight.w600),
              const SizedBox(
                height: 10,
              ),
              AppTextfield.squareTextField(
                  controller: viewModel.controller,
                  fillColor: true,
                  hintText: 'National ID number'),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                // onTap: () =>
                //     viewModel.navigateToNatinoalidVerificationViewView(),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.darkGreenColor),
                  child: CustomText.customSizedText(
                    text: 'VERIFY',
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.logo4),
          ),
        ),
      ),
    );
  }

  @override
  NatinoalidVerificationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NatinoalidVerificationViewModel();
}
