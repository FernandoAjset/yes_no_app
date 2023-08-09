import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      hintText: 'Escribe un mensaje',
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          print('Sent a message');
        },
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value: $value');
      },
      onChanged: (value) {
        print('Changed: $value');
      },
    );
  }
}
