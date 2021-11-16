import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectBirthDayTextField extends StatefulWidget {
  const SelectBirthDayTextField({
    Key? key,
    required this.textEditingController,
    required this.focusNode,
    required this.onChanged,
    required this.hint,
    required this.formatter,
    required this.enabled,
    // required this.onTap,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final void Function(String value) onChanged;

  // final void Function() onTap;
  final String hint;
  final String formatter;
  final bool enabled;

  @override
  State<SelectBirthDayTextField> createState() => _SelectBirthDayTextFieldState();
}

class _SelectBirthDayTextFieldState extends State<SelectBirthDayTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onTap: widget.onTap,
      inputFormatters: [
        // FilteringTextInputFormatter.digitsOnly,
        FilteringTextInputFormatter.allow(RegExp('[${widget.formatter}]')),
      ],
      style: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      controller: widget.textEditingController,
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      maxLength: 1,
      keyboardType: TextInputType.number,

      // keyboardType: TextInputType.numberWithOptions(decimal: true),
      // textAlign: TextAlign.center,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        counterText: '',
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabled: widget.enabled,
      ),
    );
  }
}
