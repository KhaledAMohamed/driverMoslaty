import 'package:flutter/material.dart';
import 'package:moslaty/Screens/person/M_email.dart';
import 'package:moslaty/Widgets/drawer.dart';

import '../../Widgets/custom_textField.dart';
import '../Car/my_car.dart';
import '../S_home/S_home.dart';
import '../help.dart';

class Kabten extends StatefulWidget {
  const Kabten({Key? key}) : super(key: key);

  @override
  State<Kabten> createState() => _KabtenState();
}

class _KabtenState extends State<Kabten> {
  @override
  int currentPageIndex=2;
  GlobalKey<ScaffoldState> Scaffoldkey22 =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: Scaffoldkey22,
        drawer:const Drawer(
          child: Drawer_Widget(),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
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
            backgroundColor: Color(0xff8ecae6),
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
        body:SingleChildScrollView(
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
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:(){

                          Scaffoldkey22.currentState!.openDrawer();
                        },
                        child: const Icon(  Icons.menu,
                          size: 44,
                          color: Color(0xFA023047),
                        ),
                      ),
                      Image.asset("Images/AppIcon.jpg",
                        width: 72,
                        height: 72,
                      ),

                      IconButton(onPressed: (){Navigator.pop(context);},
                        icon: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(300)),
                            color: Color(0xD8023047),
                          ),
                          height: 40,
                          width: 40,

                          child: Image.asset("Images/img_1.png",
                            width: 46,
                            height: 46,

                          ),
                        ),
                      ),

                    ],
                  )
              ),

               SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 15,),
                    const Text("بوابة الكابتن",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),
                    ),
                    const SizedBox(height: 15,),
                    Image.asset("Images/img_6.png",
                        color: const Color(0xFA023047),
                      height: 160,
                      width: 180,
                    ),
                    const SizedBox(height: 20,),
                    const Text("  احمد عادل  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontFamily: "Inter",
                          color: Color(-16767142)
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: const Text(" تغير صورة الغلاف",
                        style: TextStyle(
                          color: Color(-16767142),
                          fontSize: 16,

                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),

                    Contener_K(
                      text2: 'رحلات انهاردة',
                      text1: '3 رحلات',
                    ),
                    const SizedBox(height: 15,),
                    Contener_K(
                      text2: 'رحلات الشهر',
                      text1: '40 رحلة',
                    ),
                    const SizedBox(height: 15,),
                    Contener_K(text1: '80 رحلة', text2:
                    'متوسط رحلاتك الشهرية'),
                  const SizedBox(height: 15,),
                    Contener_K(text1: '10 رحلات', text2:
                    'رحلات لم تكتمل/فاضى'),
                    const SizedBox(height: 15,),
                    Contener_K(text1: '350 رحلة', text2: 'اجمالى عدد المشاوير')

                  ],
                ),
              )

            ],
          ),
        )

    );
  }
}
