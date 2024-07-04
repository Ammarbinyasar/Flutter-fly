void main(){
  String a="";
  int i=1;
  for(i=1;i<=100;i++){
    if(i==1){
      a+="$i";
    }
    else{
      a+=",$i";
    }
  }
  print(a);
}