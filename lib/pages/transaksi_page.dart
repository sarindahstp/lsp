import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({ Key? key }) : super(key: key);

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  bool isPengeluaran = true;
  List<String> list = ['Makan dan Jajan', 'Transpotasi', 'Nonton Film'];
  late String dropDownValue = list.first;
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Transaksi")),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,    
        children: [
          Row(
            children: [
              Switch(
                value: isPengeluaran, 
                onChanged: (bool value) {
                  setState(() {
                    isPengeluaran = value;
                  });
                }, 
                inactiveTrackColor: Colors.blue[200], 
                inactiveThumbColor: Colors.blue,
                activeColor: Colors.red,
                ),
                Text(isPengeluaran ? 'Pengeluaran' : 'Pemasukan', 
                style: GoogleFonts.montserrat(fontSize: 14),
                )
              ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText : "Amount"),
            ),
          ), 
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
                  'Kategori', 
                  style: GoogleFonts.montserrat(fontSize: 16),
                ),
          ),  
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DropdownButton<String>(
              value: dropDownValue,
              isExpanded: true,
              icon: Icon(Icons.arrow_downward),
              items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value, 
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? value) {}),
          ),
           SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              readOnly: true,
              controller: dateController,
              decoration: InputDecoration(labelText: "Enter Date"),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context, 
                initialDate: DateTime.now(), 
                firstDate: DateTime(2020), 
                lastDate: DateTime(2099));

              if(pickedDate != null) {
                String formattedDate = 
                    DateFormat('yyyy-MM-dd').format(pickedDate);

                dateController.text = formattedDate;
              }
            },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(child: ElevatedButton(onPressed: () {}, child: Text("Save")))
        ],
      ))),
    );
  }
}
