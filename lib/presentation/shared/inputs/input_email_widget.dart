import 'package:flutter/material.dart';

class InputEmailWidget extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String>? validator;
  final String? currentValue;
  final FocusNode? nextFocusNode;
  final FocusNode? focusNode;

  const InputEmailWidget({
    Key? key,
    required this.onChanged,
    required this.validator,
    required this.currentValue,
    required this.nextFocusNode,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onFieldSubmitted: (_) => nextFocusNode?.requestFocus(),
      initialValue: currentValue,
      keyboardType: TextInputType.emailAddress,
      onChanged: onChanged,
      // style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: "example@email.com",
        labelText: "CPF ou CNPJ",
        // helperText: "",
      ),
      validator: validator,
    );
  }
}
