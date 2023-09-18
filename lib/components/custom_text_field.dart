import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key, this.hint, this.onChange, this.obsecure = false})
      : super(key: key);
  String? hint;
  Function(String)? onChange;
  bool? obsecure;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextFormField(
        obscureText: obsecure!,
        validator: (data) {
          if (data!.isEmpty) {
            return "Value Is Wrong";
          }
        },
        onChanged: onChange,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 202, 198, 198),
          ),
        ),
      ),
    );
  }
}
