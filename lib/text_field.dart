import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {super.key,
      this.suffix,
      this.lable,
      this.keyboardType,
      this.hint,
      this.controller,
      this.validator,
      this.onChanged,
      this.onTap,
      this.isSecure});
  Widget? suffix;
  Widget? lable;
  TextInputType? keyboardType;
  String? hint;
  TextEditingController? controller;
  String? Function(String?)? validator;
  Function()? onTap;
  void Function(String)? onChanged;
  bool? isSecure;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
                offset: Offset(-1, -1),
                blurRadius: 5,
                blurStyle: BlurStyle.normal,
                inset: true,
                color: Colors.black38),
            BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 5,
                blurStyle: BlurStyle.normal,
                inset: true,
                color: Colors.black45)
          ]),
      child: TextFormField(
        onChanged: onChanged,
        onTap: onTap,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        obscureText: isSecure ?? false,
        decoration: InputDecoration(
          label: lable,
          border: InputBorder.none,
          hintText: hint,
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
