import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toxicity_test/data/someappdata.dart';
import 'package:toxicity_test/providers/search_screen_provider.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({this.title});
  String title;
  TextEditingController editingController = new TextEditingController();
  SuggestionsBoxController su = new SuggestionsBoxController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image(
            image: AssetImage('assets/img/logo.png'),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * .70,
                        height: 50,
                        child: TypeAheadFormField<String>(
                            suggestionsBoxController: su,
                            textFieldConfiguration: TextFieldConfiguration(
                                cursorColor: Colors.white,
                                controller: editingController,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  focusColor: Colors.blueGrey.shade300,
                                  fillColor: Colors.blueGrey.shade300,
                                  filled: true,
                                )),
                            onSuggestionSelected: (vl) {
                              editingController.text = vl;
                            },
                            itemBuilder: (_, str) {
                              return Container(
                                color: Colors.black54,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        str,
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Divider()
                                  ],
                                ),
                              );
                            },
                            suggestionsCallback: (st) {
                              return Drug().getDrugsName(st);
                            })),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, elevation: 0),
                        label: Text(''),
                        onPressed: () {
                          context.read<SearchScreenProvider>().addSearchResult(
                              Drug()
                                  .getDrugInfoFromName(editingController.text));
                        },
                        icon: Icon(
                          FontAwesomeIcons.search,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * .74,
                  width: double.infinity,
                  color: Colors.black26,
                  child: SingleChildScrollView(
                    child: Column(
                      children:
                          context.watch<SearchScreenProvider>().searchBody,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
