import 'package:callx/view/call_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
final TextEditingController nameController = TextEditingController(text: "Your Name");
final TextEditingController idController = TextEditingController(text: "01");

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Call with Love",style: TextStyle(color: Colors.black),), centerTitle: true,
      elevation: 2,backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(controller: nameController,),
            TextField(controller: idController,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.video_call),
          onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) => CallPage(callID: idController.text, uName: nameController.text)));
      }),
    );
  }
}
