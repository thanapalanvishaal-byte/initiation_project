import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/onboarding_page_indicator.dart';

class AwakeningScreen extends StatelessWidget {
  const AwakeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A12),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Container(
                width: 90.w,
                height: 90.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [Color(0xFF7C3AED), Color(0xFF3B82F6)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF7C3AED).withOpacity(0.5),
                      blurRadius: 30,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Icon(Icons.bolt, color: Colors.white, size: 40.w),
              ),
              SizedBox(height: 24.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1330),
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: const Color(0xFF7C3AED)),
                ),
                child: Text(
                  'SYSTEM NOTIFICATION',
                  style: TextStyle(color: const Color(0xFFD8B4FE), fontSize: 11.sp, letterSpacing: 1.2),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'YOU HAVE BEEN\nSELECTED',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'You have been chosen as a Player.',
                style: TextStyle(color: Colors.white70, fontSize: 15.sp),
              ),
              SizedBox(height: 8.h),
              Text(
                'Complete awakening to unlock unlimited growth potential.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white54, fontSize: 13.sp),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 52.h,
                child: OutlinedButton(
                  onPressed: () => context.push('/create-profile'),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF3B82F6)),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                  ),
                  child: Text(
                    'START AWAKENING',
                    style: TextStyle(color: Colors.white, fontSize: 14.sp, letterSpacing: 1),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'The System is watching. The System is waiting.',
                style: TextStyle(color: Colors.white38, fontSize: 11.sp),
              ),
              SizedBox(height: 20.h),
              const OnboardingPageIndicator(currentPage: 0, totalPages: 4),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}