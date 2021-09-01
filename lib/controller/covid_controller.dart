import 'package:flutter_covid/model/covid_model.dart';
import 'package:flutter_covid/repository/covid_repository.dart';
import 'package:get/get.dart';

class CovidController extends GetxController {
  late CovidRepository _covidRepository;

  Rx<CovidModel> covidData = CovidModel().obs;

  @override
  void onInit() {
    super.onInit();

    _covidRepository = CovidRepository();
    fetchCovid();
  }

  void fetchCovid() async{
    var result = await _covidRepository.fetchCovid();
    covidData(result);
  }
}
