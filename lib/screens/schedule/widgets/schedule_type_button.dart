import 'package:flutter/material.dart';

class ScheduleTypeButton extends StatelessWidget {
  bool _isactive = false;
  String text;
  ScheduleTypeButton(this.text, this._isactive);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(72, 148, 254, 0.1),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: _isactive
                  ? const Color.fromRGBO(72, 148, 254, 1)
                  : Colors.grey,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
