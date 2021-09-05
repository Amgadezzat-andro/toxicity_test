import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toxicity_test/data/someappdata.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({required this.title});
  String? title;
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
        leading: Image(
          image: AssetImage('assets/img/logo.png'),
        ),
        title: Text(
          title!,
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
                child: Container(
                    width: MediaQuery.of(context).size.width * .75,
                    height: 60,
                    child: TypeAheadFormField<String>(
                        suggestionsBoxController: su,
                        textFieldConfiguration: TextFieldConfiguration(
                          controller: editingController,
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              fillColor: Colors.blueGrey.shade900,
                              filled: true,
                              suffixIcon: InkWell(
                                onTap: () {
                                  print('Searching');

                                  su.close();
                                },
                                child: Icon(
                                  FontAwesomeIcons.search,
                                  color: Colors.white,
                                ),
                              )),
                        ),
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
                          return Durg().getDrugsName(st);
                        })),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .73,
                color: Colors.black26,
                child: Center(
                    child: Text(
                  'Search result',
                  style: TextStyle(fontSize: 22),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
