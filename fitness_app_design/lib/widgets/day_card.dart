import 'package:flutter/material.dart';

class DayCardWidget extends StatefulWidget {
  bool isSelected;
  DayCardWidget({super.key, required this.isSelected});

  @override
  State<DayCardWidget> createState() => _DayCardWidgetState();
}

class _DayCardWidgetState extends State<DayCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        height: 100,
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Wed",
              style: TextStyle(color: !widget.isSelected ? Colors.black : Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "14",
              style: TextStyle(
                  color: !widget.isSelected ? Colors.black : Colors.white, fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: !widget.isSelected ? Colors.white : Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
          border: !widget.isSelected ? Border.all(color: Colors.grey.shade300, width: 1) : null,
        ),
      ),
    );
  }
}
