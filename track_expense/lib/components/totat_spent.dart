import 'package:flutter/material.dart';
import 'package:track_expense/utis/format.dart';

class TotalSpent extends StatelessWidget {
    TotalSpent({Key? key, required this.total}) : super(key: key);
  
  final double total;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCalendarPicker(),
          _buildTotalDisplay(),
        ],
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
    return Text( Format.formatValue(total, 'KES'),
      style: const TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 50,)
      );
    
  
  
  }
}
