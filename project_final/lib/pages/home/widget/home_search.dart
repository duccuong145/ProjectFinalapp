import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_final/routes/roures.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.profilePage);
      },
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search beverages or foods',
          border: OutlineInputBorder(),
          prefixIcon: Icon(CupertinoIcons.search),
          fillColor: Colors.grey,
        ),
      ),
    );
  }
}
