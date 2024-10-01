import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../configs/themes/color_palette.dart';
import '../../../../../core/utils/app_values.dart';

class LoginFormWidget extends StatelessWidget {
  final String hintText;
  final String name;
  final TextEditingController? controller;
  final String icon;
  const LoginFormWidget({
    super.key,
    required this.hintText,
    required this.name,
    this.controller,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Container(
          padding: const EdgeInsets.all(AppValues.s12),
          child: SvgPicture.asset(
            icon,
            width: AppValues.s12,
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
