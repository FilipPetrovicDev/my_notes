import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_notes/style/app_style.dart';

class NoteReaderScreen extends StatefulWidget {
  NoteReaderScreen(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<NoteReaderScreen> createState() => _NoteReaderScreenState();
}

bool edit = false;

class _NoteReaderScreenState extends State<NoteReaderScreen> {
  // set note_content(String note_content) {}
  TextEditingController _mainController = TextEditingController();
  String date = DateFormat('yyyy.MM.dd kk:mm a').format(DateTime.now());

  @override
  void initState() {
    _mainController.text = widget.doc["note_content"];
    date = date;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      floatingActionButton: edit
          ? FloatingActionButton(
              onPressed: () async {
                await FirebaseFirestore.instance
                    .collection("Notes")
                    .doc("7w1jWN86WTmPBOj7L6f9")
                    .update({
                  "note_content": _mainController.text,
                  "creation_date": date
                });
              },
              child: Icon(Icons.save_rounded),
            )
          : null,
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
        title: Text('Edit Note', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: AppStyle.cardsColor[color_id],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            transform: Matrix4.translationValues(0, -20.0, 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  transform: Matrix4.translationValues(0.0, 20.0, 0.0),
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.teal;
                        return Color.fromARGB(255, 237, 75, 75);
                      },
                    )),
                    onPressed: () {
                      setState(
                        () {
                          edit = !edit;
                        },
                      );
                    },
                    child: Icon(
                      Icons.edit,
                      size: 24.0,
                    ),
                  ),
                ),
              ]),
              Container(
                transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Text(
                    widget.doc["note_title"],
                    style: AppStyle.mainTitle,
                  ),
                ),
              ),
              SizedBox(height: 1.0),
              Text(
                widget.doc["creation_date"],
                style: AppStyle.dateTitle,
              ),
              SizedBox(height: 28.0),
              TextFormField(
                controller: _mainController,
                // widget.doc["note_content"],
                enabled: edit,
                onChanged: (_val) {
                  var note_content = _val;
                },
                maxLines: 20,
                style: AppStyle.mainContent,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
