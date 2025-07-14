import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  const CustomDropdownMenu({
    super.key, this.onSelected, required this.languages, required this.initialSelection,
  });

  final void Function(String?)? onSelected ;
  final List<String> languages;

  final String? initialSelection;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      onSelected: onSelected,
      
            
      menuStyle: MenuStyle(alignment: Alignment.center),
      textAlign: TextAlign.center,
      textStyle: const TextStyle(
        color: Colors.white,
      ),
    
      initialSelection: initialSelection,
      trailingIcon: const Icon(Icons.arrow_drop_down, color: Colors.white),
      selectedTrailingIcon: const Icon(Icons.arrow_drop_up, color: Colors.white),
      
      inputDecorationTheme: InputDecorationTheme(border: InputBorder.none),
      dropdownMenuEntries: languages.map(
        (language) => DropdownMenuEntry(
          value: language,
          label: language,
        ),
      ).toList(),);
  }
}