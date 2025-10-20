import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/features/home/presentation/widgets/custom_dashboard_card.dart';
import 'package:teacher_system/features/home/presentation/widgets/custom_quick_action_card.dart';
import 'package:teacher_system/features/home/presentation/widgets/custom_today_summary_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcom Back!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: lightMainTextColor,
              ),
            ),
            Text(
              'Here\'s what\'s happening with your students today',
              style: TextStyle(fontSize: 15, color: lightSubTextColor),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDashBoardCard(
                  icon: Icons.group_outlined,
                  title: 'Total Students',
                  count: 30,
                  iconColor: Color(0xff2366fc),
                  circleColor: Color(0xffeff6ff),
                ),
                CustomDashBoardCard(
                  icon: Icons.attach_money_outlined,
                  title: 'Monthly Income',
                  count: 2510,
                  iconColor: Color(0xff00a63e),
                  circleColor: Color(0xfff0fdf4),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDashBoardCard(
                  icon: Icons.trending_up_outlined,
                  title: 'Attendance Rate',
                  count: 60,
                  iconColor: Color(0xffa023fa),
                  circleColor: Color(0xfffaf5ff),
                ),
                CustomDashBoardCard(
                  icon: Icons.wallet_outlined,
                  title: 'Pending Payments',
                  count: 420,
                  iconColor: Color(0xfff54900),
                  circleColor: Color(0xfffff7ed),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Quick Actions',
              style: TextStyle(color: lightMainTextColor, fontSize: 16),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomQuickActionCard(
                  icon: Icons.person_add_alt_1_outlined,
                  title: 'Add Student',
                ),
                CustomQuickActionCard(
                  icon: Icons.calendar_today_outlined,
                  title: 'Mark Attendance',
                ),
                CustomQuickActionCard(
                  icon: Icons.wallet_outlined,
                  title: 'Add Payment',
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defBorderRadius),
                color: Color(0xff55a3e8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(defPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today\'s Summary',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomTodaysSummaryWidget(title: 'Lessons', number: 8),
                        CustomTodaysSummaryWidget(title: 'Present', number: 6),
                        CustomTodaysSummaryWidget(
                          title: 'Collected',
                          number: 250,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
