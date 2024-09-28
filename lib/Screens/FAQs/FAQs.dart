// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:moslaty/Widgets/drawer.dart';

import '../../Widgets/Item.dart';
import '../Car/my_car.dart';
import '../S_home/S_home.dart';

import '../kabten/kabten.dart';
class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  final List<Item> _items = <Item>[
    Item(headerValue: 'السؤال الاول', expandedValue: 'Details for Item 1'),
    Item(headerValue: 'السؤال الثاني', expandedValue: 'Details for Item 2'),
    Item(headerValue: 'السؤال الثالث', expandedValue: 'Details for Item 3'),
  ];
  int currentPageIndex=0;
  GlobalKey<ScaffoldState> Scaffoldkey6 =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffoldkey6,
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
        body:Column(
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

                      Scaffoldkey6.currentState!.openDrawer();
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
            Image.asset("Images/mos.png"),
            SingleChildScrollView(
              child: ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _items[index].isExpanded = !isExpanded;
                  });
                },
                children: _items.map<ExpansionPanel>((Item item) {
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(item.headerValue,style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFA023047),
                          fontSize: 20,

                        ),),
                      );
                    },
                    body: SizedBox(
                      height: 20,
                      child:  Text(item.expandedValue,style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFA023047),
                        fontSize: 20,

                      ),),
                    ),
                    isExpanded: !item.isExpanded,
                  );
                }).toList(),
              ),
            ),

          ],
        )

    );
  }
}
