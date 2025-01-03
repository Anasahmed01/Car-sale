import 'package:carsaleauction/app/app.locator.dart';
import 'package:carsaleauction/ui/views/auth/otp_verification/otp_verification_view.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final TextEditingController controller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'Pk');
  navigateToOtpView() {
    locator<NavigationService>().navigateWithTransition(
      const OtpVerificationView(),
    );
  }
}
