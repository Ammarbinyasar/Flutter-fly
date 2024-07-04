void main(){
  String a="";
  int i=1;
  while(i<=100){ 
    if(i==1){
      a+="$i";
    }
    else{
      a+=",$i";
    }
    i++;
  }
  print(a);
}