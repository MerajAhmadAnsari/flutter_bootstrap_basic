import "package:flutter/material.dart";

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool switchValue = true;
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter in Detail"),
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.upcoming)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/ev.jpg',
              height: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.black),
            Container(
              color: Colors.amber,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Dummy Text",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber, foregroundColor: Colors.red),
                onPressed: switchValue
                    ? () {
                        debugPrint("pressed elevated button");
                      }
                    : null,
                child: const Text("Elevated Button")),
            OutlinedButton(
                onPressed: () {
                  debugPrint("pressed outlined button");
                },
                child: const Text("Outlined Button")),
            TextButton(
                onPressed: () {
                  debugPrint("pressed TextButton button");
                },
                child: const Text("Text Button")),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Gesture detected on Row");
              },
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                    Text('Fire Department'),
                    Icon(Icons.fire_extinguisher, color: Colors.pink)
                  ]),
            ),
            Switch(
                value: switchValue,
                onChanged: (bool value) {
                  setState(() {
                    switchValue = value;
                  });
                  debugPrint("switch value changed");
                }),
            Checkbox(
                value: isChecked,
                onChanged: (bool? checked) {
                  setState(() {
                    isChecked = checked;
                  });
                  debugPrint("checkbox value changed");
                }),
            Image.network(
                "https://plus.unsplash.com/premium_photo-1682437950549-cea05d4844ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1155&q=80")
          ],
        ),
      ),
    );
  }
}
