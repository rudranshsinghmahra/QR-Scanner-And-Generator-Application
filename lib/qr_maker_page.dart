import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRMaker extends StatefulWidget {
  const QRMaker({Key? key}) : super(key: key);

  @override
  _QRMakerState createState() => _QRMakerState();
}

class _QRMakerState extends State<QRMaker> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Generator"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 200,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              buildTextField(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: controller,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          decoration: InputDecoration(
            hintText: "Enter The Data",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                )),
            suffixIcon: IconButton(
              color: Theme.of(context).accentColor,
              icon: Icon(
                Icons.done,
                size: 30,
              ),
              onPressed: () => setState(() {}),
            ),
          ),
        ),
      );
}
