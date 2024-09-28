import 'package:flutter/material.dart';
import 'package:moslaty/Screens/Sign_up/sign_up.dart';
import 'package:moslaty/Screens/help.dart';
import 'package:moslaty/Widgets/CustomButon.dart';

import '../LoginScreen/login_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff8ecae6),
              borderRadius: BorderRadius.all(Radius.circular(30))

            ),

            padding: const EdgeInsets.all(10),
            height: 90,
alignment: Alignment.center ,
width: 7200,
child: Padding(

  padding: const EdgeInsets.all(8.0),
  child:   Image.asset('Images/AppIcon.jpg'

  ,

  height: 92,

    width: 92,

  ),
),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset("Images/img.png",
          width: 350,
          ),
          const SizedBox(height: 30,),
           const Text("اهلا بك في تطبيق مواصلاتي",
           textAlign:TextAlign.center,
           style:
           TextStyle(

             fontSize: 30.0,
             color: Color(0xF4023047),
           ) ,
           ),
         const SizedBox(height: 15,),

          CustomButon(
            ontap: ()
            {

              Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return  const Sign_UpPage();
                  }));
            },
width: 360,
            text: "طلب اشتراك سائق جديد",
            color: const Color(0xFF8ECAE6),
            hight: 40,

              colorText: const Color(0xF4023047)
              ,),
          const SizedBox(height: 15,),
          CustomButon(
            width: 360,
            text:
          "تسجيل دخول",
              colorText: Colors.white,
              color: const Color(0xF4023047),
          ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return  const LoginScreen();
                }));
          },
          ),
    const SizedBox(height: 5,),
    GestureDetector(
      onTap: (){

        Navigator.push(context,
            MaterialPageRoute(builder: (context){
              return const help_page();
            }));
      },

      child: const Text("طلب المساعد",
      style: TextStyle(
        color: Color(-580755617),
        fontSize: 25
      ),
      ),
    ),


        ],
      ),

    );
  }
}
