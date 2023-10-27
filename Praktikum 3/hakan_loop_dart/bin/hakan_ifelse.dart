//import 'package:hakan_ifelse/hakan_loop_dart.dart' as hakan_loop_dart;
import 'dart:io';

void main(){
  print(mainCode());
}

int mainCode() {
  // declaration variable
  var telur = 1;
  int oilThatShouldBuy = 0;

  // ---[ Tulis kodemu setelah baris ini ]---
  stdout.writeln("Nak belikan minyak 1 botol, kalau ada telur ambil 6");
  if(telur == 1){
    oilThatShouldBuy = 6;
    stdout.writeln("Ada telur");
  }else {
    oilThatShouldBuy = 1;
    stdout.writeln("Tidak ada telur");
  }

  // ---[ Jangan menulis atau mengubah kode di bawah ini ]---
  return oilThatShouldBuy;
}