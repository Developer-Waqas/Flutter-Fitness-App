import 'package:code_alpha_fitness_app/constants/app_linker/app_linker.dart';
import 'package:code_alpha_fitness_app/views/screens/home_screen/home_screen.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  List<Widget> pages = [
    HomeScreen(),
    LoginScreen(),
    RegisterScreen(),
    ForgotPasswordScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
        ),
        child: BottomNavigationBar(
            backgroundColor: AppColors.whiteColor,
            selectedItemColor: AppColors.blackColor,
            unselectedItemColor: AppColors.primary,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fastfood_rounded),
                label: 'Food',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.work_outline_rounded),
                label: 'Exercise',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ]),
      ),
      body: Column(
        children: pages,
      ),
    );
  }
}
