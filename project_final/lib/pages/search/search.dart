import 'package:flutter/material.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/pages/search/search_body.dart/search_appbar.dart';
import 'package:project_final/pages/search/search_body.dart/search_category.dart';
import 'package:project_final/pages/search/search_body.dart/search_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const SearchAppbar(),
                spaceHeight(context),
                const SearchButton(),
                spaceHeight(context),
                const SearchCategory(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
