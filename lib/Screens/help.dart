import 'package:flutter/material.dart';

// import '../Widgets/drawer.dart';
// import 'Car/my_car.dart';
// import 'S_home/S_home.dart';
// import 'kabten/kabten.dart';
// import 'person/M_email.dart';
class help_page extends StatefulWidget {
  const help_page({Key? key}) : super(key: key);

  @override
  State<help_page> createState() => _help_pageState();
}




class _help_pageState extends State<help_page> {
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
    height: 130,
    alignment: Alignment.center ,
    width: 7200,
    child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Center(
            child: Image.asset("Images/AppIcon.jpg",
              width: 72,
              height: 72,
            ),
          ),
        ),

        Padding(

          padding: const EdgeInsets.only(left: 100),
          child: IconButton(onPressed: (){Navigator.pop(context);},
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
        ),

      ],
    )
),
  const SizedBox(height: 120,),
  Center(
    child: Container(

      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50))
      ),

      height: 200,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(

            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color(0xDA0B517A),
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            height: 70,
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(

                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.phone, color: Colors.white,),
                ),
                SizedBox(width: 10,),
                Text('01000201000',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Inter',
                ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color(0xDA0B517A),
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            height: 70,
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.email, color: Colors.white,),
                ),
                SizedBox(width: 10,),
                Text('www.email@gmaikl.com',style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w900,
      fontFamily: 'Inter',
      ))
              ],
            ),
          ),
        ],
      ),
    ),
  )
],
      ),
    );
  }
}
