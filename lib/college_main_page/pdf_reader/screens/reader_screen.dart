// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:scout_school/college_main_page/pdf_reader/models/document_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// import 'package:pdf_viewer/models/document_model.dart';

class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc, {Key? key}) : super(key: key);
  Document doc;

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.doc.doc_title!),
      ),
      body: Container(
        child: SfPdfViewer.network(widget.doc.doc_url!),
        // child: SfPdfViewer.asset("assets/seat_matrix_vpkbiet.pdf"),
      ),
    );
  }
}
