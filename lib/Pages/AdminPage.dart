import 'package:flutter/material.dart';

import '../Widgets/Text.Widget.dart';

class Adminpage extends StatelessWidget {
  const Adminpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Container(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child:Icon(
                      size: 90,
                        Icons.person),
                  ),
                ),
              ),
              const SizedBox(height: 20 ,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card
                  (
                   color: Colors.grey.shade300,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Name : ', style: TextStyle(fontSize: 13)),
                        trailing: TextWidget(title: 'Vishal' ,fontsize: 14,),
                      ),
                      ListTile(
                        title: Text('Email : ',style: TextStyle(fontSize: 13),),
                        trailing: TextWidget(title: 'Vishalgarna7@gmai.com' ,fontsize: 14,)

                      ),
                      ListTile(
                        title: Text('PohoneNo : ', style: TextStyle(fontSize: 13),),
                        trailing: TextWidget(title: '7340479570' ,fontsize: 14,),
                      ),
                    ],
                  ),
                               ),
               )
            ],
          ),
        ) ,
      ),
    );
  }
}
