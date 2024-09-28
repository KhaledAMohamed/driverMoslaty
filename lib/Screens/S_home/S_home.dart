// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:moslaty/Widgets/CustomButon.dart';
import 'package:moslaty/Widgets/drawer.dart';


import '../../Widgets/custom_textField.dart';
import '../Car/my_car.dart';
import '../help.dart';
import '../kabten/kabten.dart';
import '../person/M_email.dart';
class S_HomePage extends StatefulWidget {
  const S_HomePage({Key? key}) : super(key: key);

  @override
  State<S_HomePage> createState() => _S_HomePageState();
}

class _S_HomePageState extends State<S_HomePage> {
  int currentPageIndex=0;

  GlobalKey<ScaffoldState> Scaffoldkey8 =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
key: Scaffoldkey8,
        drawer: const Drawer(
          child: Drawer_Widget(),
        ),
        bottomNavigationBar:  ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: NavigationBar(

            height: 65,


            onDestinationSelected: (int index) {
              setState(() {
                if(index==0){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return const S_HomePage();
                      }));
                }
                else if(index==1){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return const My_car();
                      }));
                }
                else{
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return const Kabten();
                      }));

                }

              });
            },
            indicatorColor: const Color(0xEF023047),
            backgroundColor: const Color(0xff8ecae6),
            selectedIndex: currentPageIndex,

            destinations:  <Widget>[
              const NavigationDestination(


                selectedIcon: Icon(Icons.home,
                  color:Colors.white,
                ),
                icon: Icon(Icons.home,
                  color: Colors.white,

                ),

                label: 'الرئيسيه',
              ),
              NavigationDestination(


                icon: Image.asset("Images/Car.png",
                  height: 24,

                  width: 24,
                  color:  Colors.white,
                ),
                label: 'بيانات السياره',
              ),
              NavigationDestination(

                icon: Image.asset("Images/Stat.png",
                  color: Colors.white,
                  height: 24,
                  width: 24,
                ),
                label: 'الاحصائات',
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
          Container(
          decoration: const BoxDecoration(
          color: Color(0xff8ecae6),
          borderRadius: BorderRadius.all(Radius.circular(30))

    ),

    padding: const EdgeInsets.all(10),
    height: 130,
    alignment: Alignment.center ,
    width: 7200,
    child: Row(
mainAxisAlignment: MainAxisAlignment.start,

    children:[
      GestureDetector(
          onTap:(){
            Scaffoldkey8.currentState!.openDrawer();

          },
          child: const Padding(
            padding: EdgeInsets.only(right: 130),
            child: Icon(  Icons.menu,
              size: 44,
              color: Color(0xFA023047),
            ),
          ),
      ),


      Padding(
        padding: const EdgeInsets.only(right: 100),
        child: Image.asset('Images/AppIcon.jpg'

            ,

            height: 72,

            width: 72,

        ),
      ),
    ]
    ),
    ),
                const SizedBox(height: 10,),
                const Text("مرحبا بك أحمد عادل",
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Inter',
                ),
                ),
                const SizedBox(height: 10,),
              Container(
                height: 77,
                width: 383,
                decoration: const BoxDecoration(
                    color: Color(0xFF8ECAE6),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('الدور السابع',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color:  Color(0xFA023047),
                          ),
                        ),
                        Text('أمامك 6 سيارات',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color:  Color(0xFA023047),
                          ),
                        ),
                      ],
                    ),
                    Text('دورك الحالى',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color:  Color(0xFA023047),
                      ),
                    ),

                  ],
                ),
              ),
          const SizedBox(height: 25,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                 children: [

                   Container(
                   height: 76,
                   width: 108,
                   decoration: const BoxDecoration(
                       color: Color(0xFF8ECAE6),
                       borderRadius: BorderRadius.all(Radius.circular(20))
                   ),
                     child: const Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text("خط",
                         style: TextStyle(
                           fontSize: 20,
                           color:  Color(0xFA023047),
                         ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("ابنوب-",
                             style: TextStyle(
                               color:  Color(0xFA023047)
                             ),
                             ),
                             Text("القاهره",
                             style: TextStyle(
                               color:  Color(0xFA023047)
                             ),
                             )
                           ],
                         )
                       ],
                     ),
                 ),

                   Container(
                     height: 76,
                     width: 124,
                     decoration: const BoxDecoration(
                         color: Color(0xFF8ECAE6),
                         borderRadius: BorderRadius.all(Radius.circular(20))
                     ),
                     child: const Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(height: 3,),
    Text("مدة رحلتك الحاليه",
    style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color:  Color(0xFA023047)
    ),
    ),
    Text("35 دقيقه تقريبا",
    style: TextStyle(
      color:  Color(0xFA023047)
    ),
    )
    ],
    ),
                   ),

                 ],
               ),
             const   SizedBox(height: 15,),
                Image.asset("Images/Mab.png"),
                const SizedBox(height: 20,),

    ]),
        )

    );
  }
}
