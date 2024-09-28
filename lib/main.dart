import 'package:flutter/material.dart';
import 'package:moslaty/Network/dio_helper/dio.dart';
import 'package:moslaty/Screens/HomePage/Home.dart';

void main() {DioHelper.init();
  runApp(const Moslaty());
}

class Moslaty extends StatelessWidget {
  const Moslaty({super.key});

  @override
  Widget build(BuildContext context) {
    return(
     MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
          indicatorShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          indicatorColor: const Color(0xEF023047),
          backgroundColor: const Color(0xff8ecae6),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(color: Colors.white), // لون النص
          ),
        ),
      ),

      debugShowCheckedModeBanner: false,
      home: const Home(),
    )

    );
  }

}
