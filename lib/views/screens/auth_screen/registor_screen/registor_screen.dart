import 'package:code_alpha_fitness_app/views/screens/auth_screen/auth_controller/auth_controller.dart';
import '../../../../constants/app_linker/app_linker.dart';


class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final AuthController authController = Get.put(AuthController());

  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),

                Obx(() {
                  return authController.isLoading.value
                      ? LinearProgressIndicator(
                          backgroundColor: Colors.grey[300],
                          color: AppColors.primary,
                        )
                      : SizedBox.shrink();
                }),

                SizedBox(height: 20),

                CustomTextFormField(
                  controller: fullNameController,
                  hintText: AppStringAssets.fullNameHintText,
                  onValidate: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 10),

                CustomTextFormField(
                  controller: phoneNumberController,
                  hintText: AppStringAssets.phoneHintText,
                  onValidate: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 10),

                CustomTextFormField(
                  controller: emailController,
                  hintText: AppStringAssets.emailHintText,
                  onValidate: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 10),

                CustomTextFormField(
                  controller: passwordController,
                  hintText: AppStringAssets.passwordHintText,
                  onValidate: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 30),

                Obx(() {
                  return CustomButton(
                    buttonTitle: authController.isLoading.value
                        ? 'Registering...'
                        : AppStringAssets.creatAccountButton,
                    onTap: authController.isLoading.value
                        ? null
                        : () async {
                            if (formKey.currentState!.validate()) {
                              await authController.registerUser(
                                context,
                                fullNameController.text,
                                phoneNumberController.text,
                                emailController.text,
                                passwordController.text,
                              );
                            }
                          },
                    buttonColor: AppColors.primary,
                    buttonHeight: 56,
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
