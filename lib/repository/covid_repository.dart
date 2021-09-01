
import 'package:dio/dio.dart';
import 'package:flutter_covid/model/covid_model.dart';
import 'package:xml/xml.dart';

class CovidRepository {
  //api 통신
  late var _dio;

  CovidRepository() {
    _dio =
        Dio(BaseOptions(baseUrl: 'some url', queryParameters: {'key': 'some'}));
  }

  Future<CovidModel> fetchCovid() async {
    //var response = await _dio.get('/any/any');
    //print(response);

    //nodata hard coding sorry;;
    final document = XmlDocument.parse(data);
    final items = document.findAllElements('item');

    return CovidModel.fromXml(items.first);
  }

  final data = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <header>
        <resultCode>00</resultCode>
        <resultMsg>NORMAL SERVICE.</resultMsg>
    </header>
    <body>
        <items>
            <item>
                <accDefRate>1.6624163319</accDefRate>
                <accExamCnt>11343918</accExamCnt>
                <accExamCompCnt>11074422</accExamCompCnt>
                <careCnt>18967</careCnt>
                <clearCnt>163073</clearCnt>
                <createDt>2021-07-22 09:39:47.617</createDt>
                <deathCnt>2063</deathCnt>
                <decideCnt>184103</decideCnt>
                <examCnt>269496</examCnt>
                <resutlNegCnt>10890319</resutlNegCnt>
                <seq>580</seq>
                <stateDt>20210722</stateDt>
                <stateTime>00:00</stateTime>
                <updateDt>null</updateDt>
            </item>
            <item>
                <accDefRate>1.6499811252</accDefRate>
                <accExamCnt>11298677</accExamCnt>
                <accExamCompCnt>11046490</accExamCompCnt>
                <careCnt>18571</careCnt>
                <clearCnt>161634</clearCnt>
                <createDt>2021-07-21 09:38:25.219</createDt>
                <deathCnt>2060</deathCnt>
                <decideCnt>182265</decideCnt>
                <examCnt>252187</examCnt>
                <resutlNegCnt>10864225</resutlNegCnt>
                <seq>579</seq>
                <stateDt>20210721</stateDt>
                <stateTime>00:00</stateTime>
                <updateDt>null</updateDt>
            </item>
        </items>
        <numOfRows>10</numOfRows>
        <pageNo>1</pageNo>
        <totalCount>2</totalCount>
    </body>
</response>''';
}
