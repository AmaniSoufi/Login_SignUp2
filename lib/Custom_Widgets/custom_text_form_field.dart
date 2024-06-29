import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class customTextFormFeild extends StatelessWidget {
  final IconData icon;
  final String hint;
  final double width;
  const customTextFormFeild(
      {required this.icon, required this.hint, required this.width});
  String _errorMessage(String str) {
    switch (hint) {
      case 'UserName':
        return 'UserName is Empty';
      case 'Password':
        return 'Password is Empty';
      case 'Mobile Number':
        return 'Mobile Number is Empty';

      default:
        return 'Unknown error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.15),
      child: TextFormField(
        keyboardType:
            hint == 'Mobile Number' ? TextInputType.phone : TextInputType.text,
        inputFormatters: hint == 'Mobile Number'
            ? [FilteringTextInputFormatter.digitsOnly]
            : [],
        validator: (value) {
          if (value!.isEmpty) {
            return _errorMessage(hint);
          }
          if (hint == 'Mobile Number') {
            if (value.length != 10) {
              return 'The number must have exactly 10 digits ';
            }
            if (!RegExp(r'^(05|06|07)').hasMatch(value)) {
              return ' The number must start with 05, 06, or 07';
            }
          }

          if (hint == 'Password') {
            if (value.length < 8) {
              return 'The password must have 8 or more characters ';
            }
          }
        },
        decoration: InputDecoration(
            errorStyle: TextStyle(color: Colors.red),
            prefixIcon: Icon(
              icon,
              size: 18,
            ),
            prefixIconColor: Colors.white,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white, fontSize: 13),
            fillColor: Colors.yellow,
            filled: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
