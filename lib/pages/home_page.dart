import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          //dashboard total pemasukan dan pengeluaran
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                children: [
                Row(
                  children: [
                  Container(
                    child: Icon(Icons.download, color: Colors.purple),
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pemasukan", 
                        style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        Text("Rp.5.900.000",
                            style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 14)), 
                      ],
                  )
                ],
                ),
                Row(
                  children: [
                  Container(
                    child: Icon(Icons.upload, color: Colors.red),
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pengeluaran", 
                        style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        Text("Rp.5.900.000",
                            style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 14)), 
                      ],
                  )
                ],
                )
              ]),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(16)), 
              ),
          ),

          //text transaksi
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Transaksi",
              style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
              ),
          ),

          //list transaksi
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete), 
                    SizedBox(
                      width: 10,
                      ),
                    Icon(Icons.edit)
                    ],
                ),
                title: Text("Rp. 30.000"),
                subtitle: Text("Makan Malam"),
                leading: Container(
                        child: Icon(Icons.upload, color: Colors.red),
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete), 
                    SizedBox(
                      width: 10,
                      ),
                    Icon(Icons.edit)
                    ],
                ),
                title: Text("Rp. 25.000.000"),
                subtitle: Text("Gaji Bulanan"),
                leading: Container(
                        child: Icon(Icons.upload, color: Colors.blue),
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          )
        ],
        )),
    );
  }
}