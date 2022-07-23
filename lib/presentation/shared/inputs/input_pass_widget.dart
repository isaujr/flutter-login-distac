import 'package:flutter/material.dart';
import 'package:teste_flutter/constants/colors/AppColors.dart';

class InputPassWidget extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String> validator;
  final String labelText;
  final String? currentValue;
  final FocusNode? nextFocusNode;
  final FocusNode? focusNode;

  const InputPassWidget({
    Key? key,
    required this.labelText,
    required this.onChanged,
    required this.validator,
    required this.currentValue,
    required this.nextFocusNode,
    required this.focusNode,
  }) : super(key: key);

  @override
  State<InputPassWidget> createState() => _InputPassWidgetState();
}

class _InputPassWidgetState extends State<InputPassWidget> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      focusNode: widget.focusNode,
      onFieldSubmitted: (_) => widget.nextFocusNode?.requestFocus(),
      obscureText: _obscurePassword,
      initialValue: widget.currentValue,
      validator: widget.validator,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        focusColor: AppColors.hintGrey,
        border: const OutlineInputBorder(),
        labelText: widget.labelText,
        suffixIcon: IconButton(
          onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
          icon: Icon(
            _obscurePassword ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
}
