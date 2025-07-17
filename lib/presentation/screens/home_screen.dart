import 'package:flutter/material.dart';
import 'package:app_translate/presentation/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ColoredBox(
                    color: Colors.blueGrey,
                    child: Row(
                      children: [
                        CustomDropdownMenu(
                          languages: [
                            "English",
                            "Spanish",
                            "French",
                            "German",
                            "Chinese",
                            "Japanese",
                          ],
                          initialSelection: 'English',
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white),
                        CustomDropdownMenu(
                          languages: [
                            "English",
                            "Spanish",
                            "French",
                            "German",
                            "Chinese",
                            "Japanese",
                          ],
                          initialSelection: 'Spanish',
                        ),
                      ],
                    ),
                  ),
                ),

                ColoredBox(
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextField(maxLines: 6),
                      Spacer(),

                      Divider(indent: 10, endIndent: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
