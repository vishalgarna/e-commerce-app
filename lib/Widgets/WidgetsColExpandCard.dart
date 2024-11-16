import 'package:flutter/material.dart';

class WidgetColexpandCard extends StatefulWidget {
  final String title; // Made variables final for better performance
  final String content;
  const WidgetColexpandCard({super.key, required this.title, required this.content});

  @override
  State<WidgetColexpandCard> createState() => _WidgetColexpandCardState();
}

class _WidgetColexpandCardState extends State<WidgetColexpandCard> {
  bool showcontent = false; // Moved to state

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      child: Column(
        children: [
          ListTile(
            title: Text(widget.title),
            trailing: IconButton(
              icon: Icon(showcontent ? Icons.arrow_drop_up : Icons.arrow_drop_down), // Corrected the icons
              onPressed: () {
                setState(() {
                  showcontent = !showcontent;
                });
              },
            ),
          ),
          showcontent
              ? Container(
            padding:const  EdgeInsets.all(16.0), // Added padding for better UI
            child: Text(widget.content),
          )
              : Container(),
        ],
      ),
    );
  }
}
