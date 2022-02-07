import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/location");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit_location,
                        color: Colors.grey[600],
                      ),
                      Text(
                        "Edit Location",
                        style: TextStyle(color: Colors.grey[600]),
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: const TextStyle(fontSize: 28, letterSpacing: 2),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                data['time'],
                style: const TextStyle(fontSize: 60),
              )
            ],
          ),
        ),
      ),
    );
  }
}
