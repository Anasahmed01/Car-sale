import 'package:carsaleauction/app/app.locator.dart';
import 'package:carsaleauction/ui/views/natinoalid_verification/natinoalid_verification.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OtpVerificationViewModel extends BaseViewModel {
  var code = '';
  navigateToNatinoalidVerificationViewView() {
    locator<NavigationService>().navigateWithTransition(
      const NatinoalidVerificationView(),
    );
  }
}
