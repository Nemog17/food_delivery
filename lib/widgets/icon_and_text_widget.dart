import 'package:flutter/material.dart';
import 'package:del_colmado_rd/utils/dimensions.dart';
import 'package:del_colmado_rd/widgets/small.text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColors;

  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColors,
          size: Dimensions.iconSize24,
        ),
        SizedBox(width: 5),
        SmallText(text: text),
      ],
    );
  }
}
