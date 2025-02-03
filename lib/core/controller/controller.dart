import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/core/utils/send_email.dart';
import 'package:my_portfolio/core/utils/show_custom_message.dart';
// import 'package:personal_portfolio/shared/custom_snakbar.dart';
// import 'package:personal_portfolio/shared/sendEmail.dart';

mixin MethodsHomePageController {
  GlobalKey currectKey(int index);
  void soctrol({required GlobalKey keys});
  sendEmailToAdmin(BuildContext context);
  cleanField();
  // changeDrawerIcon();
}
mixin VaraiableHomePageController {
  final GlobalKey keyHome = GlobalKey();
  final GlobalKey keyAbouteUs = GlobalKey();
  final GlobalKey keySkills = GlobalKey();
  final GlobalKey keyWorks = GlobalKey();
  final GlobalKey keyContacts = GlobalKey();
  //*--------------
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  //*--------------
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController userEmail;
  late TextEditingController message;
  //*--------------
  IconData icon = Icons.menu;
}

class HomePageComtrollerImp extends GetxController
    with VaraiableHomePageController, MethodsHomePageController {
  @override
  void onInit() {
    userName = TextEditingController();
    userEmail = TextEditingController();
    message = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    userName.dispose();
    userEmail.dispose();
    message.dispose();
    super.onClose();
  }

  @override
  void soctrol({required GlobalKey keys}) {
    Scrollable.ensureVisible(
      keys.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

  @override
  GlobalKey currectKey(int index) {
    switch (index) {
      case 0:
        return keyHome;
      case 1:
        return keyAbouteUs;
      case 2:
        return keySkills;
      case 3:
        return keyWorks;
      case 4:
        return keyContacts;
      default:
        return keyHome;
    }
  }

  @override
  sendEmailToAdmin(BuildContext context) async {
    if (formState.currentState!.validate()) {
      await sendEmail(
        userName: userName.text,
        userEmail: userEmail.text,
        message: message.text,
      );
      if (!context.mounted) return;
      showCustomMessage(
        context: context,
        title: KeyLanguage.successfully,
        body: KeyLanguage.successSendMessage,
      );
      userName.clear();
      userEmail.clear();
      message.clear();
    } else {
      showCustomMessage(
        backgroundColor: AppColor.wrong,
        icon: Icons.close,
        context: context,
        title: KeyLanguage.failed,
        body: KeyLanguage.failedSendMessage,
      );
    }
  }

  @override
  cleanField() {
    userName.clear();
    userEmail.clear();
    message.clear();
  }

  // @override
  // changeDrawerIcon() {
  //   icon = icon == Icons.cancel ? Icons.menu : Icons.cancel;
  //   update();
  // }
}
