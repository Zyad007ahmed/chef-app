import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_assets.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_button.dart';
import 'package:chef_app/core/widgets/custom_image.dart';
import 'package:chef_app/core/widgets/custom_text_form_field.dart';
import 'package:chef_app/features/auth/presentation/cubits/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              const CustomImage(
                imagePath: AppAssets.backgroundTwo,
                width: double.infinity,
              ),
              Text(
                AppStrings.welcomeBack.tr(context),
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
          SizedBox(height: 100.h),
          Padding(
            padding: const EdgeInsets.all(24),
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return Form(
                  key: BlocProvider.of<LoginCubit>(context).loginKey,
                  child: Column(
                    children: [
                      //! email
                      CustomTextFormField(
                        controller: BlocProvider.of<LoginCubit>(context)
                            .emailController,
                        hint: AppStrings.email.tr(context),
                        validator: (data) {
                          if (!data!.contains("@gmail.com") || data.isEmpty) {
                            return AppStrings.pleaseEnterValidEmail
                                .tr(context);
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 32.h),
                      //! password
                      CustomTextFormField(
                        controller: BlocProvider.of<LoginCubit>(context)
                            .passwordController,
                        hint: AppStrings.password.tr(context),
                        isPassword: BlocProvider.of<LoginCubit>(context)
                            .isLoginPasswordShowing,
                        icon: BlocProvider.of<LoginCubit>(context).suffixIcon,
                        suffixIconOnPressed:
                            BlocProvider.of<LoginCubit>(context)
                                .changeLoginPasswordSuffixIcon,
                        validator: (data) {
                          if (data!.length < 6 || data.isEmpty) {
                            return AppStrings.pleaseEnterValidPassword
                                .tr(context);
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Text(AppStrings.forgetPassword.tr(context)),
                        ],
                      ),
                      SizedBox(height: 32.h),
                      CustomButton(
                        onPressed: () {
                          if (BlocProvider.of<LoginCubit>(context)
                              .loginKey
                              .currentState!
                              .validate()) {
                                print("valid");
                              }
                        },
                        text: AppStrings.signIn.tr(context),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
