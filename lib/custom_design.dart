library custom_design;

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hint;
  const SearchBar({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(36, 0, 36, 0),
      height: 56,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26, //New
            blurRadius: 5.0,
            offset: Offset(0, 9),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 16,
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
          )),
          const Icon(Icons.search),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
