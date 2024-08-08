import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../util/colors/colors.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        style: TextStyle(color: AColor.onBackground),
        decoration: InputDecoration(
            filled: true,
            contentPadding: const EdgeInsets.all(15),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: AColor.onBackground),
            fillColor: AColor.onBackground.withOpacity(0.2),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: AColor.onBackground),
      ),
    );
  }
}