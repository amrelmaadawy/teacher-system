import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
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
      floatingActionButton: FloatingActionButton.extended(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(defBorderRadius),
        ),
        backgroundColor: lightBottonColor,
        isExtended: true,
        onPressed: () {},
        label: Text(
          'Add Student',
          style: TextStyle(color: lightWhiteColor, fontWeight: FontWeight.w600),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
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
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.dashboard_outlined),
            title: Text(S.of(context).DashBoard),
            selectedColor: lightBottonColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.people_outline),
            title: Text(S.of(context).Students),
            selectedColor: lightBottonColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.check_circle_outline),
            title: Text(S.of(context).Attendance),
            selectedColor: lightBottonColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.payments_outlined),
            title: Text(S.of(context).Payments),
            selectedColor: lightBottonColor,
          ),
        ],
      ),
    );
  }
}
