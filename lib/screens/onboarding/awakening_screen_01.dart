import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../themes/app_typography.dart';
import '../../widgets/onboarding_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AwakeningScreen extends StatelessWidget {
  const AwakeningScreen({super.key});

  static const _screenBackground = Color(0xFF07040F);
  static const _headlineStart = Color(0xFFB995FF);
  static const _headlineEnd = Color(0xFF00CFFF);
  static const _bodyPrimary = Color(0xFFBAC3D8);
  static const _bodySecondary = Color(0xFF7C869D);
  static const _hintText = Color(0xFF5E667A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _screenBackground,
      body: Stack(
        children: [
          Container(color: _screenBackground),

          Positioned.fill(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF11031E),
                    Color(0xFF07040F),
                    Color(0xFF07040F),
                  ],
                  stops: [0.0, 0.36, 1.0],
                ),
              ),
            ),
          ),

          Positioned(
            top: -180,
            left: -120,
            right: -120,
            child: Container(
              height: 600,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  radius: 0.8,
                  colors: [
                    Color(0x339810FA),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraints.maxHeight),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24.w, 72.h, 24.w, 32.h),
                      child: Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 345.w),
                          child: Column(
                            children: [
                              SizedBox(height: 54.h),

                    //-------------------------------- ICON
                              SvgPicture.asset(
                                'assets/icons/lightning_bolt.svg',
                                width: 200.w,
                                height: 200.w,
                              ),

                              SizedBox(height: 34.h),

                    //-------------------------------- Badge

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
                                decoration: BoxDecoration(
                                  color: const Color(0x2E8A15D6),
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: const Color(0x66A742FF),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/star_sparkle.svg',
                                      width: 13.w,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "SYSTEM NOTIFICATION",
                                      style: AppTypography.orbitron(
                                        color: const Color(0xFFDABEFF),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        height: 16 / 12,
                                        letterSpacing: 0.6,
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              SizedBox(height: 26.h),

                    //-------------------------------- Heading

                             Column(
  children: [
    ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFC27AFF),
            Color(0xFF00D3F2),
          ],
        ).createShader(bounds);
      },
      child: Text(
        "YOU HAVE BEEN",
        textAlign: TextAlign.center,
        style: AppTypography.orbitron(
          color: Colors.white,
          fontSize: 30.sp,
          fontWeight: FontWeight.w400,
          height: 36 / 30,
          letterSpacing: 1.5,
        ),
      ),
    ),
    ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF00D3F2),
            Color(0xFFC27AFF),
          ],
        ).createShader(bounds);
      },
      child: Text(
        "SELECTED",
        textAlign: TextAlign.center,
        style: AppTypography.orbitron(
          color: Colors.white,
          fontSize: 30.sp,
          fontWeight: FontWeight.w400,
          height: 36 / 30,
          letterSpacing: 1.5,
        ),
      ),
    ),
  ],
),
                              SizedBox(height: 18.h),

                              Text(
                                "You have been chosen as a Player.",
                                textAlign: TextAlign.center,
                                style: AppTypography.rajdhani(
                                  color: _bodyPrimary,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 26 / 16,
                                  
                                ),
                              ),

                              SizedBox(height: 10.h),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 18.w),
                                child: Text(
                                  "Complete awakening to unlock unlimited growth potential.",
                                  textAlign: TextAlign.center,
                                  style: AppTypography.rajdhani(
                                    color: _bodySecondary,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 22.7 / 14,
                                    
                                  ),
                                ),
                              ),

                              SizedBox(height: 40.h),

                    //-------------------------------- Button

                              Container(
                                height: 62.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF9810FA),
                                      Color(0xFF0094BB),
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x669810FA),
                                      blurRadius: 35,
                                      spreadRadius: 4,
                                    )
                                  ],
                                ),
                                padding: const EdgeInsets.all(1.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      context.push('/create-profile');
                                    },
                                    child: Text(
                                      "START AWAKENING",
                                      style: AppTypography.orbitron(
                                        color: const Color(0xFFE5E7EB),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        height: 24 / 16,
                                        letterSpacing: 0.8,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 24.h),

                              Text(
                                "The System is watching. The System is waiting.",
                                textAlign: TextAlign.center,
                                style: AppTypography.rajdhani(
                                  color: _hintText,
                                  fontSize: 12.sp,
                                  height: 19.5 / 12,
                                ),
                              ),

                              SizedBox(height: 28.h),

                              const OnboardingPageIndicator(
                                currentPage: 0,
                                totalPages: 4,
                              ),

                              SizedBox(height: 18.h),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}