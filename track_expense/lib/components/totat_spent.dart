import 'package:flutter/material.dart';

class TotalSpent extends StatelessWidget {
  const TotalSpent({Key? key, required this.total}) : super(key: key);
  
  final double total;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        child: Column(
          children: [
            _buildCalendarPicker(),
            _buildTotalDisplay(),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendarPicker() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Your calendar picker widget
      ],
    );
  }

  Widget _buildTotalDisplay() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text.rich(
          TextSpan(
            children: <InlineSpan>[
              TextSpan(
                text: 'KES',
                style: TextStyle(
                  color: Colors.teal.shade100,
                ),
              ),
              TextSpan(
                text: ' $total',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
