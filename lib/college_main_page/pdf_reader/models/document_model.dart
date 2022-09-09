// ignore_for_file: non_constant_identifier_names

class Document {
  String? doc_title;
  String? doc_url;
  String? doc_date;
  int? page_num;

  Document(this.doc_title, this.doc_url, this.doc_date, this.page_num);

  static List<Document> doc_list1 = [
    Document(
      "FEE STRUCTURE FOR THE YEAR A.Y.2021-22 (SE TO BE Regular Students)",
      "https://www.vpkbiet.org/pdf/admission-21-22/SE-BE-Fee-Struct-2021-22.pdf",
      "26-07-2021",
      1,
    ),
  ];
}
