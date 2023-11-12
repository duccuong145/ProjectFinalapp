import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Tìm kiếm',
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
      ),
    );
  }
}
