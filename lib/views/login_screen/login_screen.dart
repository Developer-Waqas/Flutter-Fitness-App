import '../../constants/app_linker/app_linker.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                children: [
                    Text(
                        'Welcome to Pro Fitness!',
                        
                    ),
                ],
            ),
        ),
    );
  }
}