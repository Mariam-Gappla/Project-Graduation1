import 'package:flutter/material.dart';

class CustomTextFieldCenterlable extends StatefulWidget {
  const CustomTextFieldCenterlable({
    Key? key,
    required this.lable,
    this.onChange,
    this.obscure = false,
    this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixPressed,
    this.ispassword,
    bool? isPassword,
    TextInputType? type,
    this.fillColor,
    this.showBorder = true,
  }) : super(key: key);

  final bool showBorder;
  final Color? fillColor;
  final String? lable;
  final Function(String)? onChange;
  final bool? obscure;
  final TextInputType? inputType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? suffixPressed;
  final bool? ispassword;

  @override
  State<CustomTextFieldCenterlable> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextFieldCenterlable> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextFormField(
        onTap: widget.suffixPressed,
        obscureText: widget.obscure!,
        keyboardType: widget.inputType,
        validator: (data) {
          if (data!.isEmpty) {
            return "Value Is Wrong";
          }
        },
        onChanged: widget.onChange,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor,
          label: Center(child: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(widget.lable!,textAlign: TextAlign.center,),
          )),
          labelStyle: const TextStyle(
            fontSize: 20.0,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 50),
          border: widget.showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              : InputBorder.none,
          prefixIcon:
              widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          suffixIcon:
              widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,
        ),
      ),
    );
  }
}
