import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';

void showCustomMessage({
  required BuildContext context,
  required String title,
  required String body,
  Color backgroundColor = AppColor.correct,
  Color textColor = AppColorText.primary,
  IconData icon = Icons.check_circle,
}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(icon, color: textColor),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.tr(context),
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    body.tr(context),
                    style: TextStyle(
                      color: textColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  });
}
