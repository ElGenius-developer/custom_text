library custom_text;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final double? size, height, wordSpacing;
  final TextOverflow? textOverflow;
  final Locale? locale;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final EdgeInsets? padding;
  final TextDecoration? textDecoration;
  final List<Shadow>? shadows;

  const CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.fontFamily,
      this.size,
      this.fontStyle,
      this.padding,
      this.fontWeight,
      this.locale,
      this.textDecoration,
      this.textOverflow,
      this.height,
      this.wordSpacing,
      this.shadows})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: AutoSizeText(
        text,
        style: TextStyle(
            decoration: textDecoration ?? TextDecoration.none,
            color: color ?? Theme.of(context).textTheme.bodyText1!.color,
            fontFamily: fontFamily,
            fontSize: size ?? 18,
            fontWeight: fontWeight,
            fontStyle: fontStyle ?? FontStyle.normal,
            locale: locale,
            height: height,
            overflow: textOverflow ?? TextOverflow.ellipsis,
            shadows: shadows,
            wordSpacing: wordSpacing),
      ),
    );
  }

  // double getadaptiveTextSize(BuildContext context, double value) {
  //   // 720 is medium screen height
  //   return (value / 720) * MediaQuery.of(context).size.height;
}
