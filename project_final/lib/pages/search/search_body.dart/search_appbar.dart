import 'package:flutter/material.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/routes/roures.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        Text(
          'Fruits',
          style: largeTextStyle(context, color: Colors.red),
        ),
        const Icon(
          Icons.more_vert,
          size: 30,
        ),
      ],
    );
  }
}
