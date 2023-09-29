import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({ Key? key }) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isPengeluaran = true;

  void openDialog() {
    showDialog(context: context, 
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Text(
                (isPengeluaran) ? "Tambah Pengeluaran" : "Tambah Pemasukan", 
                style: GoogleFonts.montserrat(
                  fontSize: 18, 
                  color: (isPengeluaran) ? Colors.red : Colors.blue),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Save"))
            ],
            )),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                IconButton(
                  onPressed: () {
                    openDialog();
                }, 
                icon: Icon(Icons.add))
              ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (isPengeluaran) 
              ? Icon(Icons.upload, color: Colors.red) 
              : Icon(Icons.download, color: Colors.blue), 
              title: Text(
                "Transpotasi",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  SizedBox(width: 10,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                ],
              ),  
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (isPengeluaran) 
              ? Icon(Icons.upload, color: Colors.red) 
              : Icon(Icons.download, color: Colors.blue), 
              title: Text(
                "Transpotasi",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  SizedBox(width: 10,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                ],
              ),  
            ),
          ),
        ),
      ],  
    ));
  }
} 
