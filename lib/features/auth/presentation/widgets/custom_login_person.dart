import 'package:flutter/material.dart';

class CutsomLoginPerson extends StatelessWidget {
  const CutsomLoginPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xffadd1e6), width: 1.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person_outlined, color: Color(0xff64748b), size: 30),
          Text(
            'Teacher',
            style: TextStyle(color: Color(0xff64748b), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
