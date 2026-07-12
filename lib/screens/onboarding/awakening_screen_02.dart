import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../themes/app_typography.dart';
import '../../providers/onboarding_provider.dart';
import '../../widgets/onboarding_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AwakeningStepTwo extends StatelessWidget {
  const AwakeningStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF02040B),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF000000),
              Color(0x333C0366),
              Color(0xFF000000),
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                children: [
                  SizedBox(height: 90.h),

                  //-------------------------------- ICON
                  SvgPicture.asset(
                    'assets/icons/human.svg',
                    width: 200.w,
                    height: 200.w,
                  ),

                  SizedBox(height: 28.h),

                  //-------------------------------- Heading

                  FittedBox(
  fit: BoxFit.scaleDown,
  child: ShaderMask(
    shaderCallback: (bounds) => const LinearGradient(
      colors: [Color(0xFFC27AFF), Color(0xFF00D3F2)],
    ).createShader(bounds),
    child: Text(
      'CREATE PROFILE',
      textAlign: TextAlign.center,
      maxLines: 1,
      style: AppTypography.orbitron(
        color: Colors.white,
        fontSize: 30.sp,
        fontWeight: FontWeight.w400,
        height: 36 / 30,
        letterSpacing: 1.5,
      ),
    ),
  ),
),

                  SizedBox(height: 10.h),

                  Text(
                    'Register your identity with the System',
                    style: AppTypography.rajdhani(color: Colors.white54, fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          height: 22.7 / 14,
          ),
                  ),

                  SizedBox(height: 32.h),

                  //-------------------------------- Hunter Name

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'HUNTER NAME',
                      style: AppTypography.orbitron(
                        color: Colors.white70,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 20 / 14,
                        letterSpacing: 0.35,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),

                  Consumer<OnboardingProvider>(
                    builder: (context, provider, _) {
                      return TextField(
                        style: AppTypography.chakraPetch(color: Colors.white, fontSize: 15.sp),
                        onChanged: (value) => provider.setHunterName(value),
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          hintStyle: AppTypography.chakraPetch(color: Colors.white38, fontSize: 15.sp),
                          filled: true,
                          fillColor: const Color(0xFF161320),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: Color(0xFF2D2A3D)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: Color(0xFF2D2A3D)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: Color(0xFF9810FA)),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 6.h),
                  SizedBox(
  width: double.infinity,
  child: Text(
    'This name will be displayed throughout your journey',
    textAlign: TextAlign.start,
    style: AppTypography.rajdhani(color: Colors.white38, fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          height: 19.5 / 12,
          ),
  ),
),

                  SizedBox(height: 20.h),

                  //-------------------------------- Box 1: Initial Assignment

                  _InfoBox(
                    fillColor: const Color(0x3359168B),
                    topBorderColor: const Color(0x4DAD46FF),
                    titleColor: const Color(0xFFC27AFF),
                    title: 'INITIAL ASSIGNMENT',
                    body: 'Your potential will be revealed through dedication.',
                  ),
                  SizedBox(height: 14.h),

                  //-------------------------------- Box 2: System Record

                  _InfoBox(
                    fillColor: const Color(0x33104E64),
                    topBorderColor: const Color(0x4D00B8DB),
                    titleColor: const Color(0xFF00D3F2),
                    title: 'SYSTEM RECORD',
                    body: 'The System will track your progress, achievements, and growth permanently.',
                  ),

                  SizedBox(height: 32.h),

                  //-------------------------------- Continue button

                  _GradientBorderButton(
                    onPressed: () {
                      context.push('/select-path');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'CONTINUE',
                          style: AppTypography.orbitron(
                            color: Colors.white,
                            fontSize: 16.sp,
                            letterSpacing: 0.8,
                            height: 24 / 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 16.w),
                      ],
                    ),
                  ),

                  SizedBox(height: 30.h),

                  const OnboardingPageIndicator(currentPage: 1, totalPages: 4),

                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Info card with a single accented top border (1.11px) and a translucent
/// tinted fill, matching the System-record / initial-assignment tokens.
class _InfoBox extends StatelessWidget {
  final Color fillColor;
  final Color topBorderColor;
  final Color titleColor;
  final String title;
  final String body;

  const _InfoBox({
    required this.fillColor,
    required this.topBorderColor,
    required this.titleColor,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border(
          top: BorderSide(color: topBorderColor, width: 1.11),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTypography.rajdhani(
              color: titleColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 16 / 12,
              letterSpacing: 0.3,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            body,
            style: AppTypography.chakraPetch(color: const Color(0xFFD1D5DC), fontSize: 12.sp, height: 1.4),
          ),
        ],
      ),
    );
  }
}

/// CTA button with a translucent System-record fill and a 1.11px gradient
/// border (purple -> cyan), instead of a solid gradient fill.
class _GradientBorderButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const _GradientBorderButton({required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(16.r);
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        borderRadius: radius,
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF9810FA), Color(0xFF0092B8)],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF9810FA).withValues(alpha: 0.25),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: const EdgeInsets.all(1.11),
      child: Container(
  decoration: BoxDecoration(
    color: const Color(0xFF02040B),
    borderRadius: radius,
  ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: radius),
          ),
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}