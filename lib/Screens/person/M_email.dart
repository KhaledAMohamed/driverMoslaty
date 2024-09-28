import 'package:flutter/material.dart';

import 'package:moslaty/Screens/S_home/S_home.dart';
import 'package:moslaty/Screens/kabten/kabten.dart';
import 'package:moslaty/Widgets/drawer.dart';

import '../../Widgets/CustomButon.dart';
import '../Car/my_car.dart';
import '../help.dart';

class My_email extends StatefulWidget {
  const My_email({Key? key}) : super(key: key);

  @override
  State<My_email> createState() => _My_emailState();
}
int currentPageIndex=0;

GlobalKey<ScaffoldState> Scaffoldkey1 =GlobalKey<ScaffoldState>();

class _My_emailState extends State<My_email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:Scaffoldkey1 ,
     drawer: const Drawer(
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
          crossAxisAlignment: CrossAxisAlignment.center,
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

                      Scaffoldkey1.currentState!.openDrawer();
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
                      height: 60,
                      width: 60,

                      child: Image.asset("Images/img_1.png",
                        width: 46,
                        height: 46,

                      ),
                    ),
                  ),

                ],
              )
              ),
            const SizedBox(height: 15,),
            Image.asset("Images/img_2.png",
            height: 96,
              width: 96,
            ),
            GestureDetector(
              onTap: (){},
              child: const Text(" تغير صورة الغلاف",
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 16,

                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Text("أحمد عادل",style: TextStyle(
              color: Color(0xFA023047),
              fontSize: 25,
              fontWeight: FontWeight.w900,
              fontFamily: 'Inter',
            ),),

            Container(
             decoration: const BoxDecoration( color:Color (0xff8ecae6),
             borderRadius: BorderRadius.all(Radius.circular(20))
             ),
              height: 80,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: const Text(" تاريخ تسجيل الدخول: 13/12/2023  ",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Color(0xFA023047),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
              ),
              ),
            ),
            Container(
              decoration: const BoxDecoration( color:Color (0xff8ecae6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 80,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: const Text("رقم الرخصة: 222",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration( color:Color (0xff8ecae6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 80,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: const Text("رقم الكابتن: 222",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
            ),

         Container(
             decoration: const BoxDecoration( color:Color (0xff8ecae6),
              borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    height: 80,
    width: double.infinity,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(20),
              child: const Text("الرقم القومى: 29502171502905",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration( color:Color (0xff8ecae6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 90,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                    mainAxisAlignment:MainAxisAlignment.end ,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: const Text(" تغير رقم الهاتف",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,

                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      const Text("  رقم الهاتف   ",
                        style: TextStyle(
                          color: Color(0xFA023047),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),

                    ],
            ),
                   const Text("      0100002652                       ",
                      style: TextStyle(
                        color: Color(0xFA023047),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),


            Container(
              decoration: const BoxDecoration( color:Color (0xff8ecae6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 90,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end ,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: const Text(" تغير كلمة المرور",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,

                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      const Text("  كلمة المرور   ",
                        style: TextStyle(
                          color: Color(0xFA023047),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),

                    ],
                  ),
                  const Text("###########",
                    style: TextStyle(
                      color: Color(0xFA023047),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),


            Container(
              decoration: const BoxDecoration( color:Color (0xff8ecae6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 95,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: const Text(" تغير محل الاقامه",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,

                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      const Text("  محل الاقامه   ",
                        style: TextStyle(
                          color: Color(0xFA023047),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),

                    ],
                  ),
                  const Text("           الحصري      ",
                    style: TextStyle(
                      color: Color(0xFA023047),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),
            CustomButon(
              width: 144,
              hight: 60,
              color:const Color(0xFA023047) ,
              colorText:Colors.white ,
              text:"حفظ" ,

            )







          ],
        ),
      )

    );
  }
}
