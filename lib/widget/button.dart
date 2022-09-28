import 'package:flutter/material.dart';

import '../shared/theme.dart';

class SizeButton extends StatelessWidget {
  final String size;
  final bool isSelected;
  const SizeButton({
    Key? key,
    required this.size,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelected == false
        ? Container(
            width: 85,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 1),
                borderRadius: BorderRadius.circular(6)),
            child: Center(
              child: Text(
                size,
                style: primaryTextStyle.copyWith(
                    fontSize: 25, fontWeight: reguler),
              ),
            ),
          )
        : Container(
            width: 85,
            height: 60,
            decoration: BoxDecoration(
                color: primaryColor,
                border: Border.all(color: primaryColor, width: 1),
                borderRadius: BorderRadius.circular(6)),
            child: Center(
              child: Text(
                size,
                style:
                    whiteTextStyle.copyWith(fontSize: 25, fontWeight: reguler),
              ),
            ),
          );
    ;
  }
}
