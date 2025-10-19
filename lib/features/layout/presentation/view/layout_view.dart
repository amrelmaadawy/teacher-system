import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:teacher_system/features/attendance/presentation/views/attendance_view.dart';
import 'package:teacher_system/features/home/presentation/views/home_view.dart';
import 'package:teacher_system/features/payments/presentation/views/payments_view.dart';
import 'package:teacher_system/features/students/presentation/views/students_view.dart';
import 'package:teacher_system/generated/l10n.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LayoutView> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeView(),
    StudentsView(),
    AttendanceView(),
    PaymentsView(),
  ];
  late List<Widget> titles = [
    Text(S.of(context).DashBoard),
    Text(S.of(context).Students),
    Text(S.of(context).Attendance),
    Text(S.of(context).Payments),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IndexedStack(index: _currentIndex, children: titles),
        actions: [
          IconButton(
            icon: Icon(Icons.notification_important_outlined),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.settings_outlined), onPressed: () {}),
        ],
      ),
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.dashboard_outlined),
            title:  Text(S.of(context).DashBoard),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.people_outline),
            title:  Text(S.of(context).Students),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.check_circle_outline),
            title:  Text(S.of(context).Attendance),
            selectedColor: Colors.green,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.payments_outlined),
            title:  Text(S.of(context).Payments),
            selectedColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}






