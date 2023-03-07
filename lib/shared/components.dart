import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

Widget createSvgLabel({
  required assetName,
  required label,
  required width,
  required height,
}) =>
    Column(
      children: [
        SvgPicture.asset(
          assetName,
          width: width,
        ),
        SizedBox(height: height),
        Text(
          label.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'NunitoBold',
            color: GallaxColors.textRed,
            fontSize: 17,
            fontWeight: FontWeight.w700,
            height: .9,
          ),
        ),
      ],
    );

Widget drawGallaxButton({
  required text,
  required onPressed,
  minWidth = 135.0,
  height = 62.0,
}) =>
    ButtonTheme(
      minWidth: minWidth,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 20.0,
            ),
            backgroundColor: GallaxColors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            elevation: 0,
            textStyle: const TextStyle(color: Colors.white)),
        onPressed: onPressed,
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
