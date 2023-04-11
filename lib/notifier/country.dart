import 'dart:async';

class CountryBloc {
   static StreamController languagesIndexController = StreamController<int>();
  StreamSink get countryIndexSink => languagesIndexController.sink;
  Stream get countryIndexStream => languagesIndexController.stream;

  static StreamController languageNameController = StreamController<String>();
  StreamSink get countryNameSink => languageNameController.sink;
  Stream get countryNameStream => languageNameController.stream;

  void dispose(){
    languageNameController.close();
    languagesIndexController.close();
  }




}
