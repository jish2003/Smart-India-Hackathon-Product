// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:scout_school/college_main_page/pdf_reader/models/document_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// import 'package:pdf_viewer/models/document_model.dart';

class ReaderScreen2 extends StatefulWidget {
  ReaderScreen2({Key? key}) : super(key: key);

  @override
  State<ReaderScreen2> createState() => _ReaderScreen2State();
}

class _ReaderScreen2State extends State<ReaderScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Seat Matrix"),
      ),
      body: Container(
        // child: SfPdfViewer.network(widget.doc.doc_url!),
        child: SfPdfViewer.asset("assets/seat_matrix_vpkbiet.pdf"),
      ),
    );
  }
}
