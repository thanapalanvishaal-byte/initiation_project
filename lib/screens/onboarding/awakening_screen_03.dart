import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../models/player_class_model.dart';
import '../../providers/onboarding_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AwakeningStepThree extends StatelessWidget {
  const AwakeningStepThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF02040B),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 40.h),

              //-------------------------------- Heading
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Color(0xFFC27AFF), Color(0xFF00D3F2)],
                ).createShader(bounds),
                child: Text(
                  'SELECT YOUR\nPATH',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.orbitron(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Choose your combat specialization. This determines your initial stat distribution.',
                textAlign: TextAlign.center,
                style: GoogleFonts.chakraPetch(color: Colors.white54, fontSize: 13.sp),
              ),

              SizedBox(height: 28.h),

              //-------------------------------- Class Cards
              ...PlayerClass.all.map((playerClass) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: _ClassCard(playerClass: playerClass),
                );
              }),

              //-------------------------------- Note box
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: const Color(0x1A9810FA),
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: const Color(0x4DAD46FF)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NOTE',
                      style: GoogleFonts.orbitron(
                        color: const Color(0xFFC27AFF),
                        fontSize: 11.sp,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Your class choice affects initial stats but does not limit your growth. All stats can be improved through training and quests.',
                      style: GoogleFonts.chakraPetch(color: Colors.white60, fontSize: 13.sp, height: 1.5),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24.h),

              //-------------------------------- Confirm button
              Consumer<OnboardingProvider>(
                builder: (context, provider, _) {
                  final canConfirm = provider.selectedClass != null;
                  return Container(
                    height: 56.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF9810FA), Color(0xFF0092B8)],
                      ),
                      boxShadow: canConfirm
                          ? [
                              BoxShadow(
                                color: const Color(0xFF9810FA).withValues(alpha: 0.4),
                                blurRadius: 20,
                                spreadRadius: 2,
                              ),
                            ]
                          : [],
                    ),
                    padding: const EdgeInsets.all(1.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF02040B),
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      child: TextButton(
                        onPressed: canConfirm
                            ? () async {
                                await provider.completeOnboarding();
                                // TODO: navigate to home/dashboard once built
                              }
                            : null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CONFIRM SELECTION',
                              style: GoogleFonts.chakraPetch(
                                color: Colors.white,
                                fontSize: 14.sp,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Icon(Icons.arrow_forward, color: Colors.white, size: 16.w),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),

              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}

class _ClassCard extends StatelessWidget {
  final PlayerClass playerClass;

  const _ClassCard({required this.playerClass});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingProvider>(
      builder: (context, provider, _) {
        final isSelected = provider.selectedClass?.id == playerClass.id;

        return GestureDetector(
          onTap: () => provider.selectClass(playerClass),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(
                color: isSelected ? playerClass.color : playerClass.color.withValues(alpha: 0.4),
                width: isSelected ? 2 : 1,
              ),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: playerClass.color.withValues(alpha: 0.35),
                        blurRadius: 16,
                        spreadRadius: 1,
                      ),
                    ]
                  : [],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top accent stripe
                Container(
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: playerClass.color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13.r),
                      topRight: Radius.circular(13.r),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(18.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      playerClass.iconIsSelfContained
    ? SvgPicture.asset(
        playerClass.iconPath,
        width: 80.w,
        height: 80.w,
      )
    : Container(
        width: 56.w,
        height: 56.w,
        decoration: BoxDecoration(
          color: playerClass.color,
          borderRadius: BorderRadius.circular(14.r),
        ),
        padding: EdgeInsets.all(14.w),
        child: SvgPicture.asset(
          playerClass.iconPath,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              playerClass.name.toUpperCase(),
                              style: GoogleFonts.orbitron(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              playerClass.description,
                              style: GoogleFonts.chakraPetch(color: Colors.white60, fontSize: 13.sp, height: 1.4),
                            ),
                            SizedBox(height: 14.h),
                            _Tag(text: playerClass.focus, color: const Color(0xFFD946EF)),
                            SizedBox(height: 8.h),
                            _Tag(text: playerClass.ability, color: const Color(0xFF00D3F2)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Tag extends StatelessWidget {
  final String text;
  final Color color;

  const _Tag({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Text(
        text,
        style: GoogleFonts.chakraPetch(color: color, fontSize: 12.sp),
      ),
    );
  }
}