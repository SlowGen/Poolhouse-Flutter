import 'package:flutter/material.dart';
import '../constants.dart';

class AddServerForm extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final String? Function(String?) validator;
  final Function(String?) onSaved;
  final bool isNum;

  AddServerForm({
    required this.hintText,
    required this.icon,
    required this.validator,
    required this.onSaved,
    this.isNum = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: kTextStyleServerTileName,
      autofocus: isNum ? false : true,
      textAlign: TextAlign.center,
      onSaved: onSaved,
      validator: validator,
      keyboardType: isNum ? TextInputType.number : TextInputType.name,
      decoration: InputDecoration(
        isDense: true,
        focusColor: Colors.lightGreenAccent,
        icon: icon,
        hintText: hintText,
        hintStyle: kTextStyleServerTileName,
      ),
    );
  }
}
