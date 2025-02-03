import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/core/utils/validator_function.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/contact/custom_form_field_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/contact/custom_twice_button.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/contact/send_me_message_design.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({super.key});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController message;
  @override
  void initState() {
    super.initState();
    name = TextEditingController();
    email = TextEditingController();
    message = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    name.dispose();
    email.dispose();
    message.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
              const SendMeMessageDesign(),
              const SizedBox(height: 24),
              Text(
                KeyLanguage.contactDescription.tr(context),
                textAlign: TextAlign.center,
                style: AppStyles.styleUbuntuRegular20(context),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomFormFieldWidget(
                      label: KeyLanguage.name,
                      controller: name,
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
                      controller: email,
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
                maxLine: 5,
                label: KeyLanguage.message,
                controller: message,
                validator: (value) => ValidatorFunction.validatorEmpty(
                  context,
                  value,
                ),
              ),
              Flexible(
                child: CustomTwiceButton(
                  clean: clean,
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  void clean() {
    name.clear();
    email.clear();
    message.clear();
  }
}
