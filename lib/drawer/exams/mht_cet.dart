import 'package:flutter/material.dart';

class Mht_Cet extends StatefulWidget {
  Mht_Cet({Key? key}) : super(key: key);

  @override
  State<Mht_Cet> createState() => _Mht_CetState();
}

class _Mht_CetState extends State<Mht_Cet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MHT-CET"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                child: Image.asset("assets/MHT-CET-image.jpg"),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(207, 247, 245, 245),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text(
                      "What Is MHT-CET?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text(
                      "Maharashtra Common Entrance Test (MHT-CET or MHCET) is a state-level test conducted by State Common Entrance Test Cell, Mumbai for admission to B.Tech/B.E in the state of Maharashtra. the merit list was prepared to give 50% weightage to Class 12 marks and 50% weightage to MHT-CET score.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 10,
                child: Card(
                  elevation: 3,
                  color: Color.fromARGB(207, 247, 245, 245),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        "MHT-CET 2022 Overview",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        "Maharashtra Common Entrance Test (MHT-CET)2022",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        " 1.	frequency   - One time in a year \n 2.	Modes -  Online \n 3.	Duration of examination-  90 min for each paper \n 4.	official website - http://cetcell.mahacet.org/ \n 5. Courses - B.E/B.Tech, B.Pharm and Pharm D \n 6. Subject - Physics, Chemistry, Mathematics/Biology \n 7. Question Type - Multiple Choice Questions",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Card(
                  elevation: 3,
                  color: Color.fromARGB(207, 247, 245, 245),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Eligibility Criteria",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        "The candidates who want to attempt MHT-CET must be an Indian citizen. There is no age limit to apply for MHT-CET.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Card(
                  elevation: 3,
                  color: Color.fromARGB(207, 247, 245, 245),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "MHT- CET Syllabus",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        "The MHT-CET syllabus includes all the topics from Class 12 of Maharashtra State Board and a few topics from Class 11 syllabus.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 10,
                        child: Text(
                          "Class 11 Syllabus",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                    Card(
                      child: Table(
                          columnWidths: {
                            0: FlexColumnWidth(3),
                            1: FlexColumnWidth(7)
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: TableBorder.all(
                              borderRadius: BorderRadius.circular(10)),
                          children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Subject",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Topics",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Mathematics",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Mathematical Logic, Matrices, Trigonometric functions, Pair of straight lines, Circle, Conics, Vectors, Three-dimensional geometry, Line, Plane, Linear programming problems, Continuity, Differentiation, Application of derivative, Integration, Applications of definite integral, Differential equation, Statistics, Probability distribution, Bernoulli trials and Binomial distribution.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Physics",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Circular Motion, Gravitation, Rotational motion, Oscillations, Elasticity, Surface tension, Wave motion, Stationary waves, Kinetic theory, Wave theory, Interference and diffraction, Electrostatics, Current electricity, Magnetic effects of electric current, Magnetism, Electromagnetic inductions, Electrons and Photons, Atoms, Molecules and Nuclei, Semiconductors, Communication systems.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Chemistry",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Solid State, Solutions and colligative properties, Chemical Thermodynamics and energetic, Electrochemistry, Chemical Kinetics, General Principles and Processes of Isolation of Elements, p-Block Elements, d and f Block Elements, Coordination Compounds, Halogen derivatives of alkanes (and arenes), Alcohols, Phenols and Ethers, Aldehydes, Ketones and Carboxylic Acids, Organic Compounds Containing Nitrogen, Biomolecules, Polymers, Chemistry in Everyday Life.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Biology (Botany)",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Genetic Basis of Inheritance, Gene: its nature, expression and regulation, Biotechnology: Process and Application, Enhancement in Food Production, Microbes in Human Welfare, Photosynthesis, Respiration, Reproduction in Plants, Organisms and Environment -I.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Biology (Zoology)",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Origin and the Evolution of Life, Chromosomal Basis of Inheritance, Genetic Engineering and Genomics, Human Health and Diseases, Animal Husbandry, Circulation, Excretion and osmoregulation, Control and Co-ordination, Human Reproduction, Organisms and Environment-I.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 10,
                        child: Text(
                          "Class 12 Syllabus",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                    Card(
                      child: Table(
                          columnWidths: {
                            0: FlexColumnWidth(3),
                            1: FlexColumnWidth(7)
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: TableBorder.all(
                              borderRadius: BorderRadius.circular(10)),
                          children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Subject",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Topics",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Mathematics",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Trigonometric functions, Trigonometric functions of Compound Angles, Factorization formulae, Straight line, Circle and Conics, Sets, Relations and Functions, Probability, Sequences and Series.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Physics",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Measurements, Scalars, and Vectors, Force, Friction in solids and liquids, Refraction of Light, Ray optics, Magnetic effect of electric current, Magnetism.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Chemistry",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Some basic concepts of Chemistry, States of Matter (gases and liquids), Redox reaction, Surface Chemistry, Nature of chemical bond, Hydrogen, s-Block elements (Alkali and alkaline earth metals), Basic principles and techniques in organic chemistry, Alkanes.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Biology (Botany)",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Diversity in organisms, Biochemistry of cell, Plant Water relations and Mineral Nutrition, Plant growth and development.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Text(
                                "Biology (Zoology)",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Organization of cell, Animal tissues, Human Nutrition, Human Respiration.",
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ]),
                          ]),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Card(
                  elevation: 3,
                  color: Color.fromARGB(207, 247, 245, 245),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "MHT CET 2022 Exam Pattern",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Column(
                        children: [
                          Text(
                            "Candidates applying for a particular course are required to appear for a specified set of papers. Provided below is the distribution of subjects, questions, duration, and marks in various papers:",
                            style: TextStyle(fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              child: Text(
                                  "• Engineering candidates are required to attempt or appear for PCM.\n• Pharmacy candidate are required to attempt or appear for PCM or PCB.\n• PCM/PCB are divided into 2 Groups/Slots: In Group 1, candidates will get 90 minutes to complete Physics & Chemistry. In Group 2, candidates will get 90 minutes to complete Maths/Biology."),
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      child: Table(
                          columnWidths: {
                            0: FlexColumnWidth(4),
                            1: FlexColumnWidth(7)
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: TableBorder.all(
                              borderRadius: BorderRadius.circular(10)),
                          children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Type of Group",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Total Exam Duration (in min)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "PCM Group",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                "180 mins",
                                textAlign: TextAlign.center,
                              )
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "PCB Group",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                "180 mins",
                                textAlign: TextAlign.center,
                              )
                            ])
                          ]),
                    )
                  ]),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Card(
                  elevation: 3,
                  color: Color.fromARGB(207, 247, 245, 245),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "MHT CET Application Form Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        "The MHT-CET application form can be filled on the official website. Online application form submission is done in four steps \n •	Registration \n •	Filling the application form \n •	Upload photograph and signature \n •	Payment of fees ",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        "MHT CET Application Fee",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Card(
                      child: Table(
                          columnWidths: {
                            0: FlexColumnWidth(5),
                            1: FlexColumnWidth(3)
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: TableBorder.all(
                              borderRadius: BorderRadius.circular(10)),
                          children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Categories",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Amount",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "For General Category Candidates from Maharashtra State, Outside Maharashtra State (OMS), J & K Migrant candidates",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(height: 1.3),
                                ),
                              ),
                              Text(
                                "Rs. 800 + Payment Gateway Charges",
                                textAlign: TextAlign.center,
                              )
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "For Candidates of Backward Class Categories [SC, ST, VJ/DTNT(A), NT(B), NT(C), NT(D), OBC, SBC, SEBC] and Persons with Disability Candidates belonging to Maharashtra State only.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(height: 1.3),
                                ),
                              ),
                              Text(
                                "Rs. 600 + Payment Gateway Charges",
                                textAlign: TextAlign.center,
                              )
                            ])
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
                      child: Text(
                        "Important Documents",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        "The candidates should upload the following documents with the following specification while filling the application form:",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Card(
                      child: Table(
                          columnWidths: {
                            0: FlexColumnWidth(4),
                            1: FlexColumnWidth(7)
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: TableBorder.all(
                              borderRadius: BorderRadius.circular(10)),
                          children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Type",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Specifications",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Photograph",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Size limit: 5KB to 50KB \n \n Format: JPEG/JPG",
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Signature",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Size limit: 5KB to 20KB \n \n Format: JPEG/JPG",
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ])
                          ]),
                    ),
                    Text(
                        "\n The candidates should take the printout of the admit card from the official website. It is mandatory that the candidates should take the following documents to the examination hall on the day of the examination."),
                    Text(
                        "\n •	Printout of the Admit card \n •	Original photo ID proof – Pan card, Indian Passport, Driving License, Voter’s Card, Bank Passbook, Aadhar card, School Identity card"),
                  ]),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.grey[200],
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                            child: ListView(
                              children: [
                                Container(
                                  child: Text(
                                    "Colleges under MHT-CET",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        wordSpacing: 6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: Container(
                      color: Colors.white,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              child: Card(
                            color: Colors.grey[200],
                            child: Row(children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 3,
                                child: Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 220,
                                    width: 240,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Card(
                                            child: Container(
                                              width: 240,
                                              height: 90,
                                              child: Image.asset(
                                                "assets/VIT_pune_image.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "VIT Pune-Vishwakarma Institute of Technology",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.location_pin,
                                                      color: Colors.black54,
                                                    ),
                                                    Text(
                                                      "Pune, Maharashtra",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "NIRF Ranking 122",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            color: Colors.blue,
                                            onPressed: () {},
                                            child: Text(
                                              "Explore",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 3,
                                child: Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 220,
                                    width: 240,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Card(
                                            child: Container(
                                              width: 240,
                                              height: 90,
                                              child: Image.asset(
                                                "assets/ICT_mumbai_image.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "ICT-Mumbai",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.location_pin,
                                                      color: Colors.black54,
                                                    ),
                                                    Text(
                                                      "Mumbai, Maharashtra",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "NIRF Ranking 18",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            color: Colors.blue,
                                            onPressed: () {},
                                            child: Text(
                                              "Explore",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 3,
                                child: Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 220,
                                    width: 240,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Card(
                                            child: Container(
                                              width: 240,
                                              height: 90,
                                              child: Image.asset(
                                                "assets/vjti_image.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "VJTI-Mumbai",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.location_pin,
                                                      color: Colors.black54,
                                                    ),
                                                    Text(
                                                      "Mumbai, Maharashtra",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "NIRF Ranking 82",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            color: Colors.blue,
                                            onPressed: () {},
                                            child: Text(
                                              "Explore",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 3,
                                child: Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 220,
                                    width: 240,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Card(
                                            child: Container(
                                              width: 240,
                                              height: 90,
                                              child: Image.asset(
                                                "assets/COEP_image.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Coep",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.location_pin,
                                                      color: Colors.black54,
                                                    ),
                                                    Text(
                                                      "Pune, Maharashtra",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "NIRF Ranking 50",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            color: Colors.blue,
                                            onPressed: () {},
                                            child: Text(
                                              "Explore",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 3,
                                child: Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 220,
                                    width: 240,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Card(
                                            child: Container(
                                              width: 240,
                                              height: 90,
                                              child: Image.asset(
                                                "assets/PICT_image.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "PICT-Pune Institute of Computer Technology",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.location_pin,
                                                      color: Colors.black54,
                                                    ),
                                                    Text(
                                                      "Pune, Maharashtra",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "NIRF Ranking 201-250",
                                                      style: TextStyle(
                                                          fontSize: 13.5,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            color: Colors.blue,
                                            onPressed: () {},
                                            child: Text(
                                              "Explore",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ]),
                          )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
