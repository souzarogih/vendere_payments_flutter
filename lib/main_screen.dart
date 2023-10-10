import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text("Selecione o pagamento:", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue[800])),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("pressionado credito");
                    },
                    child: Icon(
                      Icons.credit_card,
                      size: 130,
                      color: Colors.blue[800],
                    ),
                  ),
                  Text(
                    "CRÉDITO",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue[800]),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("pressionado débito");
                    },
                    child: Icon(
                      Icons.credit_score,
                      color: Colors.blue[800],
                      size: 130,
                    ),
                  ),
                  Text(
                    "DÉBITO",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue[800]),
                  ),
                ],
              )
            ],
          ),
          // padding: const EdgeInsets.only(top: 30),
          const Padding(padding: EdgeInsets.only(top: 1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("pressionado pix");
                    },
                    child: Icon(
                      Icons.pix,
                      color: Colors.blue[800],
                      size: 130,
                    ),
                  ),
                  Text(
                    "PIX",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue[800]),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("pressionado split");
                    },
                    child: Icon(
                      Icons.call_split,
                      color: Colors.blue[800],
                      size: 130,
                    ),
                  ),
                  Text(
                    "SPLIT",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue[800]),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
        ],
      ),
    );
  }
}
