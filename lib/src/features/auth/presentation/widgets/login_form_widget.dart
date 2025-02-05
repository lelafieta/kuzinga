import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/configs/themes/color_palette.dart';

class LoginFormWidget extends StatelessWidget {
  final String hintText;
  final String name;
  final TextEditingController controller;
  final String svgIconPath;
  final String? Function(String?)? validator;
  final bool obscured;

  const LoginFormWidget(
      {Key? key,
      required this.hintText,
      required this.name,
      required this.controller,
      required this.svgIconPath,
      required this.validator,
      required this.obscured})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: name,
      validator: validator,
      obscureText: obscured,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            svgIconPath,
            width: 22,
            height: 22,
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
