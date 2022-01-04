import 'package:flutter/material.dart';
import 'package:registion_pad/pages/login_page.dart';
import 'package:registion_pad/pages/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(children: [
            RegistrationPage(),
            Container(),
            LoginPage(),
          ]),
          backgroundColor: Colors.blue,
          bottomNavigationBar: TabBar(tabs: [
            Tab(
              text: 'หน้าลงทะเบียน',
            ),
            Tab(
              text: 'รายชื่อ',
            ),
            Tab(
              text: 'login',
            )
          ]),
        ));
  }
}
