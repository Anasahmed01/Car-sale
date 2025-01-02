import 'package:carsaleauction/app/app.locator.dart';
import 'package:carsaleauction/ui/views/auth/login.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WelcomeViewModel extends BaseViewModel {
  int selectedCheckbox = 0;

  navigateToLogInView() {
    locator<NavigationService>().navigateWithTransition(
      const LoginView(),
    );
  }
}
