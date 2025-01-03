import 'package:carsaleauction/src/resubale_widget/custom_text.dart';
import 'package:carsaleauction/src/resubale_widget/textfield.dart';
import 'package:carsaleauction/src/utils/colors/colors.dart';
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              CustomText.customSizedText(
                text: 'Verify Your Identity with Nafath',
              ),
              CustomText.customSizedText(text: 'Status/Iqama ID Number'),
              AppTextfield.squareTextField(
                  controller: viewModel.controller,
                  fillColor: true,
                  hintText: 'National ID number'),
              GestureDetector(
                // onTap: () =>
                //     viewModel.navigateToNatinoalidVerificationViewView(),
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
            ],
          ),
        ));
  }

  @override
  NatinoalidVerificationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NatinoalidVerificationViewModel();
}
