import 'package:xml/xml.dart';

class XmlUtils {
  static String searchResult(XmlElement x, String name) {
    return x.findAllElements(name).map((e) => e.text).first.isEmpty
        ? ""
        : x.findAllElements(name).map((e) => e.text).first;
  }
}