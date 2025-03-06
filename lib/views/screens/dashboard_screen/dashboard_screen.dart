import 'package:code_alpha_fitness_app/constants/app_linker/app_linker.dart';
import 'package:code_alpha_fitness_app/widgets/drawer/drawer_widget.dart';

class DashboardScreen extends StatelessWidget {
   DashboardScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
       drawer: DrawerWidget(),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 247,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Stack(
                children: [
                  // SIde menu / Navigation Drawer
                  Positioned(
                    top: 40,
                    left: 10,
                    child: CustomIconButton(
                      image: AppIconAssets.menuIcon,
                      imageHeight: 16.69,
                      imageWidth: 20.86,
                      onTap: () {
                        print('Button Clicked!');
                        _scaffoldKey.currentState?.openDrawer(); 
                      },
                    ),
                  ),
                  Positioned(
                      top: 40,
                      left: 55,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage(AppImagesAssets.profileImage),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
