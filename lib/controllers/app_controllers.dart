import 'package:get/get.dart';

class AppControllers extends GetxController {
  RxInt counter = 0.obs; // เปลี่ยนเป็น Observable ที่ใช้ในการติดตามและตรวจจับการเปลี่ยนแปลง
  
  increment()=> counter++;

  reduce()=> counter--;
  // void reduce() {
  //   RxInt numberrd = counter--;
  //   if(numberrd < 0){
  //     counter = 0.obs;
  //   }
  // }
}

