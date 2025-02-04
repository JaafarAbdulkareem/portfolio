import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/core/utils/validator_function.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/contact/custom_form_field_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/contact/custom_twice_button.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/contact/head_contact_section.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({super.key});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
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
    double width = MediaQuery.sizeOf(context).width;
    return Form(
      key: controller.formState,
      child: AspectRatio(
        aspectRatio: 420 / 215,
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
                  // minLine: 2,
                  // maxLine: null,
                  maxLine: ConstantScale.numberLine(width) ,
                  label: KeyLanguage.message,
                  controller: controller.message,
                  validator: (value) => ValidatorFunction.validatorEmpty(
                    context,
                    value,
                  ),
                ),
                Flexible(
                  child: CustomTwiceButton(
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
