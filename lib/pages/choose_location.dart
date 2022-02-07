import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('youshi');
    });
    print("Statement");
  }

  @override
  void initState() {
    super.initState();
    // print("this is inside initState");
    getData();
  }

  @override
  Widget build(BuildContext context) {
    // print("this is inside build");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: TextButton(onPressed: () {}, child: Text('Counter is')),
    );
  }
}
