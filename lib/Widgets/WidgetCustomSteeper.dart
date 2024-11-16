import 'package:flutter/material.dart';

class CustomSteeper extends StatefulWidget{
  final int lowerlimit ;
  final int upperlimit ;
  final int stepValue ;
  final double iconsize ;
   int value  ;
  final ValueChanged<dynamic> onChanged ;

   CustomSteeper({
    required this.lowerlimit,
    required this.upperlimit,
    required this.value,
    required this.iconsize,
    required this.onChanged,
    required this.stepValue,
    super.key
});

  @override
  State<CustomSteeper> createState() => _CustomSteeperState();
}

class _CustomSteeperState extends State<CustomSteeper> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 50,
        width: 113,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20)
      ),

        child: Row(
          children: [
            IconButton(onPressed: (){
              setState(() {
                // ya pe kya ho raha ek value usko of qty bhi  bol skate hai ya condition check
                // ho rhai hai ki agar value lowerlimit ke brabar ho gayi hai to value me
                // upplerlimit ki value hi assign karo nahi hui to value me stepvalue se decrement  kar do
                widget.value = widget.value == widget.lowerlimit ?
                widget.lowerlimit : widget.value -= widget.stepValue;


                widget.onChanged({
                  'qty' : widget.value,
                  'type' : '-'
                });
              });
            }, icon: const Icon(

                Icons.remove)),

            Center(
              child: SizedBox(

                width: 17,
                child: Text(widget.value.toString()),
              ),
            ),
            IconButton(
                onPressed: (){
              setState(() {
                // ya pe kya ho raha ek value usko of qty bhi  bol skate hai ya condition check
                // ho rhai hai ki agar value upplerlimit ke brabar ho gayi hai to value me
                // upplerlimit ki value hi assign karo nahi hui to value me stepvalue se increment kar do
                widget.value = widget.value == widget.upperlimit ?
                widget.lowerlimit : widget.value += widget.stepValue;

                widget.onChanged({
                  'qty' : widget.value,
                  'type' : '+'
                });
              });
            }, icon: const Icon(

                Icons.add)),

          ],
        )
      ),
    );
  }
}