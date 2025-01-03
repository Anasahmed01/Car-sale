import 'package:carsaleauction/src/resubale_widget/custom_text.dart';
import 'package:carsaleauction/src/utils/colors/colors.dart';
import 'package:carsaleauction/ui/views/auth/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
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
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: CustomText.customSizedText(
            text: 'CREATE ACCOUNT', fontWeight: FontWeight.w700, size: 16),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomText.customSizedText(
                  text:
                      'To be able to participate in the auction please register yourself',
                  maxLine: 2,
                  size: 20,
                  fontWeight: FontWeight.w600),
              const SizedBox(
                height: 60,
              ),
              CustomText.customSizedText(
                  text: 'Your Phone Number',
                  maxLine: 2,
                  fontWeight: FontWeight.w700),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 55,
                      width: 70,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 226, 226, 226)
                              .withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.keyboard_arrow_down_sharp),
                      ),
                    ),
                    InternationalPhoneNumberInput(
                      inputDecoration: InputDecoration(
                          hintText: "Enter phone number",
                          hintStyle: TextStyle(color: AppColors.greyColor),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          fillColor: AppColors.greyColor.withOpacity(0.2)),
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.DIALOG,
                          showFlags: false),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      initialValue: viewModel.number,
                      textFieldController: viewModel.controller,
                      formatInput: true,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      inputBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.blackColor)),
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  viewModel.navigateToOtpView();
                  viewModel.rebuildUi();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greenColor,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  alignment: Alignment.center,
                  child: CustomText.customSizedText(
                      size: 13,
                      text: 'CREATE ACCOUNT',
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'You have an account? ',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
