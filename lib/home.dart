import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vendere_payments_flutter/payment_calculator.dart';

import 'main_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        centerTitle: true,
        title: const Text(
          "Vendere",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              size: 30,
            ),
            onPressed: () {
              print("ação account");
            },
          ),
          const Padding(padding: EdgeInsets.only(right: 15)),
        ],
      ),
      body: const MainScreen(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        // elevation: 10,
        icon: const Icon(
          Icons.calculate,
          size: 30,
        ),
        label: const Text("Calculadora", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
        onPressed: () {
          log("Navigating to calculator");
          Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentCalculator()));
        },
        // mini: true,
        // child: const Icon(Icons.add),
        // onPressed: () {
        //   print("Pressionado");
        // },
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        // shape: const CircularNotchedRectangle(), //shape para botão circular
        child: Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 16)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.note_add, size: 30, color: Colors.blue[800]),
            ),
            const Padding(padding: EdgeInsets.only(left: 10)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.payment, size: 30, color: Colors.blue[800]),
            ),
            const Padding(padding: EdgeInsets.only(left: 165)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle, size: 30, color: Colors.blue[800]),
            ),
            const Padding(padding: EdgeInsets.only(left: 5)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_business, size: 30, color: Colors.blue[800]),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 1),
          child: SafeArea(
              child: Column(
            children: [
              const ListTile(
                  // dense: true,
                  // title: Image.asset("images/ps-paystore.png", height: 40),
                  // onTap: () {
                  //   //action when this menu is pressed
                  // },
                  ),
              const Divider(color: Colors.grey),
              ListTile(
                dense: true,
                title: Text("DADOS DO TERMINAL", style: TextStyle(fontSize: 16, color: Colors.blue[800])),
                leading: Icon(Icons.person, color: Colors.blue[800]),
                onTap: () {
                  //action when this menu is pressed
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const TerminalData()));
                },
              ),
              ListTile(
                dense: true,
                title: Text("INICIALIZAR", style: TextStyle(fontSize: 16, color: Colors.blue[800])),
                leading: Icon(Icons.send, color: Colors.blue[800]),
                onTap: () {
                  const CircularProgressIndicator();
                  //action when this menu is pressed
                },
              ),
              ListTile(
                dense: true,
                title: Text("PAGAMENTOS", style: TextStyle(fontSize: 16, color: Colors.blue[800])),
                leading: Icon(Icons.payments, color: Colors.blue[800]),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const Payments()));
                },
              ),
              ListTile(
                dense: true,
                title: Text("My Favourites", style: TextStyle(fontSize: 16, color: Colors.blue[800])),
                leading: Icon(Icons.monitor_heart, color: Colors.blue[800]),
                onTap: () {
                  //action when this menu is pressed
                },
              ),
              ExpansionTile(
                title: Text("CONFIGURAÇÕES", style: TextStyle(fontSize: 16, color: Colors.blue[800])),
                leading: Icon(Icons.settings, color: Colors.blue[800]), //add icon
                childrenPadding: const EdgeInsets.only(left: 60), //children padding
                children: [
                  ListTile(
                    title: const Text("Child Category 1", style: TextStyle(fontSize: 16)),
                    onTap: () {
                      //action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Child Category 2", style: TextStyle(fontSize: 16)),
                    onTap: () {
                      //action on press
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "V1.0.0",
                  style: TextStyle(fontSize: 16, color: Colors.blue[800]),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
