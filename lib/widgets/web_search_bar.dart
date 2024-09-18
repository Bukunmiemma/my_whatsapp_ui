import 'package:flutter/material.dart';
import 'package:prof_whatsapp_ui/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          hintText: 'Search or start new chat',
          hintStyle: const TextStyle(
            fontSize: 10,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Icon(
              Icons.search,
              size: 12,
            ),
          ), 
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
