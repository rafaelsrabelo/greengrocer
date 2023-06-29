import 'package:flutter/material.dart';

class CustomTextiField extends StatefulWidget {

  final IconData icon;
  final String label;
  final bool isSecret;

  const CustomTextiField({super.key, required this.icon, required this.label, this.isSecret = false});

  @override
  State<CustomTextiField> createState() => _CustomTextiFieldState();
}

class _CustomTextiFieldState extends State<CustomTextiField> {

  bool isObscure = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.isSecret ? 
            IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              }, 
              icon: Icon( isObscure ? Icons.visibility : Icons.visibility_off)) : null,
            labelText: widget.label,
            isDense: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
      ),
    );
  }
}
