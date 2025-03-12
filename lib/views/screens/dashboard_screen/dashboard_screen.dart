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
                      backgroundImage: AssetImage(AppImagesAssets.profileImage),
                    ),
                  ),
                  Positioned(
                      right: 10,
                      top: 40,
                      child: CustomIconButton(
                          imageHeight: 17.79,
                          imageWidth: 15.64,
                          image: AppIconAssets.notificationIcon,
                          onTap: () {})),
                  Positioned(
                    top: 90,
                    left: 13,
                    child: Text(
                      'Hello, Good Morning',
                      style: AppStyle.tertaryStyle3,
                    ),
                  ),
                  Positioned(
                    top: 105,
                    left: 13,
                    child: Text(
                      'Waqas !',
                      style: AppStyle.tertaryStyle3.copyWith(fontSize: 20),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 13,
                    child: Container(
                      height: 52.14,
                      width: 332,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: CustomTextFormField(
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.primary2,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.whiteColor)),
                        hintText: 'Search',
                        hintTextStyle: AppStyle.tartaryStyle4,
                        borderEnabled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.whiteColor)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
