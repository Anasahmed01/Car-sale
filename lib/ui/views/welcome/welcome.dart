import 'package:carsaleauction/src/resubale_widget/custom_text.dart';
import 'package:carsaleauction/src/utils/colors/colors.dart';
import 'package:carsaleauction/ui/views/welcome/welcome_viewmodel.dart';
import 'package:carsaleauction/ui/views/welcome/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeView extends StackedView<WelcomeViewModel> {
  const WelcomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    WelcomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greenColor,
        backgroundColor: AppColors.greenColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => viewModel.navigateToLogInView(),
              child: CustomText.customSizedText(
                text: 'Login',
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomText.customSizedText(
                text: 'Sell Your Car', color: AppColors.white)
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.backgroundColor),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.45,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/welcome/logo.png'),
                  ),
                ),
              ),
              Row(
                children: [
                  auctionInfoRadio(
                    title: 'Closed Auctions',
                    value: viewModel.selectedCheckbox == 0,
                    onChanged: (value) {
                      viewModel.selectedCheckbox = value == true ? 0 : 1;
                      viewModel.rebuildUi();
                    },
                  ),
                  auctionInfoRadio(
                    title: 'Open Auctions',
                    value: viewModel.selectedCheckbox == 1,
                    onChanged: (value) {
                      viewModel.selectedCheckbox = value == true ? 1 : 1;
                      viewModel.rebuildUi();
                    },
                  ),
                  auctionInfoRadio(
                    title: 'Upcoming Auctions',
                    value: viewModel.selectedCheckbox == 2,
                    onChanged: (value) {
                      viewModel.selectedCheckbox = value == true ? 2 : 1;
                      viewModel.rebuildUi();
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.23,
                // padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText.customSizedText(
                        text: 'Next Auction Starts in',
                        size: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackColor),
                    CustomText.customSizedText(
                        size: 40,
                        fontWeight: FontWeight.w700,
                        text: "10 hrs 28 min",
                        color: AppColors.blackColor),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => viewModel.navigateToLogInView(),
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColors.yellowColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: CustomText.customSizedText(
                      text: 'MAKE BID',
                      size: 14,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  WelcomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WelcomeViewModel();
}
