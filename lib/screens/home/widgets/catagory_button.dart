import 'package:flutter/material.dart';

class CatagoryButton extends StatelessWidget {
  final IconData _icon;
  final String _text;
  const CatagoryButton(this._icon, this._text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
            child: Icon(
              _icon,
              color: const Color.fromRGBO(72, 148, 254, 0.9),
            ),
          ),
          const SizedBox(height: 5),
          Text(_text)
        ],
      ),
    );
  }
}
