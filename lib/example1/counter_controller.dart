import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CounterController extends GetxController{
  RxInt count = 0.obs;


  increment(){
    count.value++;
  }


}