import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/theme/app_colors.dart';
import '../dashboard/serviceman_dashboard_screen.dart';
import '../jobs/serviceman_job_list_screen.dart';
import '../chat/serviceman_chat_list_screen.dart';
import '../profile/serviceman_profile_screen.dart';

class ServicemanMainTabScreen extends StatefulWidget {
  const ServicemanMainTabScreen({super.key});

  @override
  State<ServicemanMainTabScreen> createState() => _ServicemanMainTabScreenState();
}

class _ServicemanMainTabScreenState extends State<ServicemanMainTabScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ServicemanDashboardScreen(),
    const ServicemanJobListScreen(),
    const ServicemanChatListScreen(),
    const ServicemanProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(0, CupertinoIcons.home, 'Dashboard'),
                _buildNavItem(1, CupertinoIcons.briefcase, 'Jobs'),
                _buildNavItem(2, CupertinoIcons.chat_bubble_2, 'Chats'),
                _buildNavItem(3, CupertinoIcons.person, 'Profile'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = _currentIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.secondary.withValues(alpha: 0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: isSelected ? AppColors.secondary : AppColors.neutral400, size: 24),
            const SizedBox(height: 4),
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected ? AppColors.secondary : AppColors.neutral400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
