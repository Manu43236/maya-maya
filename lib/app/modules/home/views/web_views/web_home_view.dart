import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/modules/home/controllers/home_controller.dart';

class WebHomeView extends GetView<HomeController> {
   WebHomeView({Key? key}) : super(key: key);

   final List<Widget> _widgetOptions =  <Widget>[
    Container(height: Get.width,width: Get.width,color: Colors.red,),
    Container(height: Get.width,width: Get.width,color: Colors.blue,),
    Container(height: Get.width,width: Get.width,color: Colors.yellow,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.blue,
          onTap: (val) => controller.onItemTapped(val),
        ),
        body: Center(
          child: Obx(
              () => _widgetOptions.elementAt(controller.selectedIndex.value)),

          // Row(
          //   children: [
          //     Expanded(
          //         flex: 1,
          //         child: Container(
          //           color: Colors.green,
          //           child: InkWell(
          //             onTap: () {
          //               Get.rootDelegate.toNamed(Routes.ABOUT_US);

          //             },
          //             child: Text('TEST'),
          //           ),
          //         )),
          //     Expanded(
          //       flex: 4,
          //       child: Container(
          //         color: Colors.red,
          //       ),
          //     ),
          //   ],
          // ),
        ));
  }
}
