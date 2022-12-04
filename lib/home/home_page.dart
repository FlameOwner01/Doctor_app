import 'package:doctor_app/auth/screens/login_page.dart';
import 'package:doctor_app/constants/Patients.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home-page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Patients> patients = [
    Patients(name: "Alen K.", illness: "common cold", time: "16:00"),
    Patients(name: "Amy F.", illness: "right arm pain", time: "16:30"),
    Patients(name: "Kim H.", illness: "Covid 19", time: "16:30"),
  ];

  @override
  Widget build(BuildContext context) {
    logOut() {
      Navigator.pushNamed(context, LoginPage.routeName);
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: logOut,
            child: const Icon(Icons.logout_outlined),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Doctor: John doe",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.network(
              "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=100"),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Pacients ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Today: ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
