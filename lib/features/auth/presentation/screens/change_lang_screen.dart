import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_assets.dart';
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/bloc/cubit/global_cubit.dart';
import '../../../../core/widgets/custom_button.dart';

class ChangeLangScreen extends StatelessWidget {
  const ChangeLangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // background image
            const CustomImage(
              imagePath: AppAssets.background,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  SizedBox(height: 116.h),
                  CustomImage(
                    imagePath: AppAssets.appLogo,
                    height: 120.h,
                    width: 120.w,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    AppStrings.welcomeToChefApp.tr(context),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 54.h),
                  Text(
                    AppStrings.pleaseChooseYourLanguage.tr(context),
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(height: 120.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        text: 'English',
                        onPressed: () {
                          BlocProvider.of<GlobalCubit>(context).changeLang('en');
                        },
                        width: 140,
                        backgroundColor: AppColors.black,
                      ),
                      CustomButton(
                        text: 'العربية',
                        onPressed: () {
                          BlocProvider.of<GlobalCubit>(context).changeLang('ar');
                        },
                        width: 140,
                        backgroundColor: AppColors.black,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
