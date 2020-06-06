import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BuyScreen extends StatefulWidget {
  final List list;
  final int index;
  BuyScreen({this.index, this.list});

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  TextEditingController controllerIdBarang = TextEditingController();
  TextEditingController controllerQty = TextEditingController();

  void buyProduct() {
    var url = "http://10.0.2.2/gear_up/api/addBelanja.php";
    http.post(url, body: {
      "pembeli": "panjicv4ever@gmail.com",
      "idBarang": controllerIdBarang.text,
      "qty": controllerQty.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pemesanan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: controllerIdBarang,
              decoration: InputDecoration(
                hintText: "Id Barang yang ingin kamu beli",
                labelText: "Id Barang",
              ),
            ),
            TextField(
              controller: controllerQty,
              decoration: InputDecoration(
                hintText: "Jumlah dari Id Barang yang ingin kamu beli",
                labelText: "Jumlah",
              ),
            ),
            Padding(padding: const EdgeInsets.all(10)),
            RaisedButton(
                child: Text(
                  "PESAN",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blueAccent,
                onPressed: () {
                  buyProduct();
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
