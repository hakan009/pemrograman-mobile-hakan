//import 'package:hakan_ifelse/hakan_loop_dart.dart' as hakan_loop_dart;
import 'dart:io';

void main() {
  int bintang = 10;
  //While 
  print("While Loop");
    while(bintang >= 1){
      print('*' * bintang);
      bintang--;
    }
  bintang = 10;
  print("");

  //Do-While
  print("Do-While Loop");
    do{
      print('*' * bintang);
      bintang--;
    }while(bintang >= 1);
}
