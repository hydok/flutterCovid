import 'package:flutter_covid/repository/covid_repository.dart';
import 'package:get/get.dart';

class CovidController extends GetxController {
  late CovidRepository _covidRepository;

  @override
  void onInit() {
    super.onInit();

    _covidRepository = CovidRepository();
    fetchCovid();
  }

  void fetchCovid() {
    _covidRepository.fetchCovid();
  }
}
