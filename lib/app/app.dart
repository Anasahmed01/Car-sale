import 'package:carsaleauction/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:carsaleauction/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:carsaleauction/ui/views/auth/login/login.dart';
import 'package:carsaleauction/ui/views/auth/otp_verification/otp_verification_view.dart';
import 'package:carsaleauction/ui/views/natinoalid_verification/natinoalid_verification.dart';
import 'package:carsaleauction/ui/views/welcome/welcome.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: WelcomeView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: OtpVerificationView),
    MaterialRoute(page: NatinoalidVerificationView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
