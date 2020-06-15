import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class PdfPage extends StatelessWidget {
  final String link;
  PdfPage(this.link);
  loadDocument() async {
    PDFDocument document;
    document = await PDFDocument.fromURL(link);
    return document;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: loadDocument(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return PDFViewer(
              document: snapshot.data,
              lazyLoad: true,
              scrollDirection: Axis.vertical,
              
            );
          }
          return Scaffold(
            body: Container(
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }
}
