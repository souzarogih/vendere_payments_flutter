import 'package:flutter/material.dart';

class PaymentCalculator extends StatefulWidget {
  const PaymentCalculator({super.key});

  @override
  State<PaymentCalculator> createState() => _PaymentCalculatorState();
}

class _PaymentCalculatorState extends State<PaymentCalculator> {
  final TextEditingController _paymentValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const TextField(decoration: InputDecoration(border: InputBorder(borderSide: BorderSide(color: Colors.red)))),
          TextField(
            controller: _paymentValue,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 44),
            decoration: const InputDecoration(
              labelText: "R\$ 80,00",
              // prefixIconColor: Colors.blue[700],
              // suffixIconColor: Colors.blue[700],
              // iconColor: Colors.blue[700],
              alignLabelWithHint: true,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              // contentPadding: EdgeInsets.only(top: 20, bottom: 20, left: 22, right: 22),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () => print("var 1"), icon: Text("1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
              IconButton(onPressed: () => print("var 2"), icon: Text("2", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
              IconButton(onPressed: () => print("var 3"), icon: Text("3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () => print("var 4"), icon: Text("4", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
              IconButton(onPressed: () => print("var 5"), icon: Text("5", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
              IconButton(onPressed: () => print("var 6"), icon: Text("6", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () => print("var 7"), icon: Text("7", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
              IconButton(onPressed: () => print("var 8"), icon: Text("8", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
              IconButton(onPressed: () => print("var 9"), icon: Text("9", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () => print("var backspace"), icon: Icon(Icons.backspace, color: Colors.orange[800]), iconSize: 65),
              IconButton(onPressed: () => print("var 0"), icon: Text("0", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.blue[800])), iconSize: 65),
              IconButton(onPressed: () => print("var ="), icon: Icon(Icons.check, color: Colors.green[600]), iconSize: 65),
            ],
          ),
        ],
      ),
    );
  }
}
