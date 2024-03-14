import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo_book/utils/colors.dart';

dropdownField({
  String? hinttext,
  List<String>? items,
  String? selectedValue,
  String? fontFamily,
  void Function(String?)? onChanged,
  double? width,
}) {
  return Container(
    padding: const EdgeInsets.only(top: 2, left: 14, right: 14, bottom: 0),
    width: width,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
      color: whiteColor.withOpacity(0.2),
      border: Border.all(width: 1),
    ),
    child: DropdownButtonFormField<String>(
      value: selectedValue,
      items: items?.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item,
              style: TextStyle(
                color: blackColor,
                fontFamily: fontFamily ?? 'DefaultFontFamily',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              )),
        );
      }).toList(),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(
          color: greycolor,
          fontSize: 20,
        ),
        labelStyle: TextStyle(
          color: blackColor,
          fontFamily: fontFamily ?? 'DefaultFontFamily',
          fontSize: 14,
        ),
        border: InputBorder.none,
      ),
    ),
  );
}

appText({
  required String title,
  required double fontSize,
  String? fontFamily,
  Color? textColor,
  FontWeight? textFontWeight,
}) {
  return Container(
    alignment: Alignment.centerLeft,
    child: Text(
      softWrap: true,
      textAlign: TextAlign.left,
      title.toString(),
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily ?? 'DefaultFontFamily',
        color: textColor ?? blackColor,
        fontWeight: textFontWeight ?? FontWeight.normal,
      ),
    ),
  );
}

textfield({
  String? hinttext,
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
  Function()? ontap,
  double? Width,
  bool? obscureText,
  TextEditingController? controller,
  String? fontFamily,
}) {
  return Container(
    padding: const EdgeInsets.only(top: 8, left: 12),
    width: Width,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
      color: whiteColor.withOpacity(0.2),
      border: Border.all(width: 1),
    ),
    child: TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      style: TextStyle(
        fontSize: 20,
        color: blackColor,
        fontFamily: fontFamily ?? 'DefaultFontFamily',
      ),
      onTap: ontap,
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(color: greycolor),
        labelStyle: TextStyle(
            color: greycolor,
            fontFamily: fontFamily ?? 'DefaultFontFamily',
            fontSize: 14),
        border: InputBorder.none,
      ),
    ),
  );
}

appButton({
  Function()? ontap,
  String? buttonText,
  bool? disabled = false,
  String? fontFamily,
  String? btnType,
  Color? btnColor,
  Color? btnTextColor,
  double? btnHeight,
  double? btnWidth,
}) {
  return InkWell(
    onTap: disabled! ? null : ontap,
    child: Container(
      height: btnHeight ?? 30,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: disabled ? greycolor : btnColor,
        border: Border.all(width: 1),
      ),
      child: Center(
        child: Text(
          buttonText!,
          style: TextStyle(
            color: disabled ? whiteColor.withOpacity(0.5) : btnTextColor,
            fontSize: 17,
            fontFamily: fontFamily ?? 'DefaultFontFamily',
          ),
        ),
      ),
    ),
  );
}
