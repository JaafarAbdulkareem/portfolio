import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';

class CustomFormFieldWidget extends StatelessWidget {
  const CustomFormFieldWidget({
    super.key,
    required this.label,
    this.validator,
    required this.controller,
    this.minLine = 1,
    this.maxLine = 1,
    this.maxLength,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.onSaved,
  });

  final String label;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final int? minLine;
  final int? maxLine;
  final int? maxLength;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextFormField(
        onSaved: onSaved,
        style: AppStyles.styleIBMRegular16(context).copyWith(
          color: AppColor.cardBackground,
        ),
        obscureText: obscureText,
        minLines: minLine,
        maxLines: maxLine,
        maxLength: maxLength,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          // contentPadding:
          //     EdgeInsets.all(getResponsiveText(context, fontSize: 10)),
          // isDense:
          //     MediaQuery.sizeOf(context).width < ConstantSizeLayout.tabletLayout
          //         ? true
          //         : false,
          labelText: label.tr(context),
            labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
        ),
      ),
    );
  }

  InputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: const BorderSide(
        color: AppColor.cardBackground,
        style: BorderStyle.solid,
      ),
    );
  }
}
