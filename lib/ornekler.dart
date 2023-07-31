import 'dart:io';

void main(){
  print("enter name : ");
  String name =stdin.readLineSync()!;
  for (var i=0; i<5; i++){
    print("name : $name");
  }
  var i=0;
  while (i<5){
    print("${i+1} . name $name ");
    i++;
  }
// ------------------------------------------------------------
  print("enter a number ");
  int num= int.parse(stdin.readLineSync()!);
  if(num%2==1){
    print("the numbe is odd");

  }
  else{
    print("the number is even ");
  }



}