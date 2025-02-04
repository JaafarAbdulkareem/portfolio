import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/core/utils/validator_function.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/contact/custom_form_field_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/contact/custom_twice_button.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/contact/head_contact_section.dart';

class MobileContactCard extends StatefulWidget {
  const MobileContactCard({super.key});

  @override
  State<MobileContactCard> createState() => _MobileContactCardState();
}

class _MobileContactCardState extends State<MobileContactCard> {
  final HomePageControllerImp controller = Get.find<HomePageControllerImp>();

  @override
  void initState() {
    super.initState();
    controller.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    controller.onClose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formState,
      autovalidateMode: controller.autovalidateMode,
      child: AspectRatio(
        aspectRatio: 1 / 2,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImage.imagesBackgroundCard,
                ),
              ),
              color: AppColor.primary
              // const Color(0xFF4EB7F2),
              ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 28,
              right: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HeadContactSection(),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomFormFieldWidget(
                        label: KeyLanguage.name,
                        controller: controller.name,
                        validator: (value) => ValidatorFunction.validatorEmpty(
                          context,
                          value,
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox(width: 12)),
                  ],
                ),
                Row(
                  children: [
                    const Expanded(child: SizedBox(width: 12)),
                    Expanded(
                      flex: 2,
                      child: CustomFormFieldWidget(
                        label: KeyLanguage.email,
                        controller: controller.email,
                        validator: (value) => ValidatorFunction.validatorEmail(
                          context,
                          value,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                CustomFormFieldWidget(
                  minLine: 15,
                  maxLine: 15,
                  label: KeyLanguage.message,
                  controller: controller.message,
                  validator: (value) => ValidatorFunction.validatorEmpty(
                    context,
                    value,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: CustomTwiceButton(
                    send: () async {
                      if (controller.formState.currentState!.validate()) {
                        await controller.sendEmailToAdmin(context);
                      } else {
                        controller.autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                    clean: controller.clean,
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
