library responsive_text;

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResponsiveText extends StatefulWidget {
  final String text;
  final double? maxTextSize;
  final double? minTextSize;
  final TextStyle? style;
  final double? scale;

  ResponsiveText({
    super.key,
    required this.text,
    this.maxTextSize,
    this.minTextSize,
    this.style,
    this.scale = 0.05,
  });

  @override
  State<ResponsiveText> createState() => _ResponsiveTextState();
}

class _ResponsiveTextState extends State<ResponsiveText> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Get the parent widget's width and height
        double parentWidth = constraints.maxWidth;
        double parentHeight = constraints.maxHeight;

        // Use the smaller of the two dimensions for calculation
        double parentSize =
            parentWidth < parentHeight ? parentWidth : parentHeight;

        // Calculate the text size based on the parent size
        double scale = widget.scale ?? 0.05;
        double calculatedTextSize =
            parentSize * scale; // Adjust the multiplier as needed

        // Set default min and max text size if not provided
        double minTextSize = widget.minTextSize ?? 12.0;
        double maxTextSize = widget.maxTextSize ?? 24.0;

        // Clamp the text size within the min and max range
        double textSize = calculatedTextSize.clamp(minTextSize, maxTextSize);

        return SizedBox(
          child: Text(
            widget.text,
            style: TextStyle(
              inherit: widget.style?.inherit ?? true,
              color: widget.style?.color,
              fontWeight: widget.style?.fontWeight,
              fontStyle: widget.style?.fontStyle,
              letterSpacing: widget.style?.letterSpacing,
              wordSpacing: widget.style?.wordSpacing,
              textBaseline: widget.style?.textBaseline,
              height: widget.style?.height,
              locale: widget.style?.locale,
              foreground: widget.style?.foreground,
              background: widget.style?.background,
              shadows: widget.style?.shadows,
              fontFeatures: widget.style?.fontFeatures,
              decoration: widget.style?.decoration,
              decorationColor: widget.style?.decorationColor,
              decorationStyle: widget.style?.decorationStyle,
              decorationThickness: widget.style?.decorationThickness,
              debugLabel: widget.style?.debugLabel,
              fontFamily: widget.style?.fontFamily,
              fontFamilyFallback: widget.style?.fontFamilyFallback,
              overflow: widget.style?.overflow,
              fontSize: textSize,
            ),
          ),
        );
      },
    );
  }
}
