import 'package:flutter/material.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Pdf_page extends StatefulWidget {
  Pdf_page({Key? key}) : super(key: key);

  @override
  State<Pdf_page> createState() => _Pdf_pageState();
}

class _Pdf_pageState extends State<Pdf_page> {
  String seat_matrix_pdf = "assets/seat_matrix_vpkbiet.pdf";
  // PdfDocumentLoadedDetails _doc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Seat Matrix CAP-I PDF"),
        ),
        body: Center(
            // child: PDF.assets("assets/seat_matrix_vpkbiet.pdf"),
            ));
  }
}
