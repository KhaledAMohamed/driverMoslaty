// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:moslaty/Screens/help.dart';
import 'package:moslaty/Screens/person/M_email.dart';
import 'package:moslaty/Widgets/drawer.dart';

import '../S_home/S_home.dart';
import '../kabten/kabten.dart';
class My_car extends StatefulWidget {
  const My_car({Key? key}) : super(key: key);

  @override
  State<My_car> createState() => _My_carState();
}

class _My_carState extends State<My_car> {
  @override
  GlobalKey<ScaffoldState> Scaffoldkey3 =GlobalKey<ScaffoldState>();

  int currentPageIndex=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffoldkey3,
        drawer: const Drawer(
          child: Drawer_Widget(),
        ),
        bottomNavigationBar:ClipRRect(
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
            crossAxisAlignment: CrossAxisAlignment.end,
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

                        Scaffoldkey3.currentState!.openDrawer();
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
                            width: 36,
                            height: 36,

                          ),
                        ),
                      ),

                    ],
                  )
              ),
           const   SizedBox(height: 15,),
              const Center(
                child: Text("سيارتي",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
                ),
                
              ),
              const Text("  معلومات المركبة  ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontFamily: "Inter",
                color: Color(-16767142)
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
                 child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("25441",
                        style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: "Inter",
                        color: Color(-16767142))),
                    SizedBox(width: 50,),
                    Text("رقم السياره",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: "Inter",
                            color: Color(-16767142))),


                  ],
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [


                    Text(" ج ب 441",
                        style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))),
                    SizedBox(width: 50,),
                    Text("رقم اللوحه",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color(-16767142))),

                  ],
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [



                    Text("ازرق",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color(-16767142))),
                    SizedBox(width: 80,),
                    Text("اللون",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color(-16767142))

                    ),
                  ],
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [


                    Text("12",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color(-16767142))
                    ),
                    SizedBox(width: 50,),
                    Text("عدد الركاب",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color(-16767142))
                    ),
                  ],
                ),
              ),


              Container(
                decoration: const BoxDecoration( color:Color (0xff8ecae6),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                height: 80,
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),              child: const Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [


                    Text("2022",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color(-16767142))),
                    SizedBox(width: 50,),
                    Text("سنة الصنع",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color(-16767142))),
                  ],
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [


                    Text("1H2B36G2N5U8I8O9S4W",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color(-16767142))),
                    SizedBox(width: 50,),
                    Text("رقم الشاسيه",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color(-16767142))
                    ),
                  ],
                ),
              ),



            ],
          ),
        )

    );
  }
}
