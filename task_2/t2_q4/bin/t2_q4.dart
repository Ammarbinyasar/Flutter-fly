void main(){
  String a="";
  int i=1;
  do{ 
    if(i==1){
      a+="$i";
    }
    else{
      a+=",$i";
    }
    i++;
  }while(i<=100);
  print(a);
}