import 'package:flutter/material.dart';

class WorkStaffScreen extends StatefulWidget {
  const WorkStaffScreen({Key? key}) : super(key: key);

  @override
  _WorkStaffScreenState createState() => _WorkStaffScreenState();
}

class _WorkStaffScreenState extends State<WorkStaffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Work Staff',
          style: TextStyle(
            color: Colors.grey.shade800,
          ),
        ),
        centerTitle: true,
        leadingWidth: 80,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: CircleAvatar(
            backgroundColor: Color(0xff0597db),
            radius: 40,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0.0, 1.0),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                child: Row(
                  children: [
                    CircleAvatar(),
                    Column(
                      children: [
                        Text(''),
                        Text(''),
                        Row(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
