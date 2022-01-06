public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763";
public void setup(){
  int count = 0;
  for(int i = 1; i < e.length()-10; i++){
     String digits = e.substring(i,i+10);
     double dNum = Double.parseDouble(digits);
     if(isPrime(dNum) == true){
       System.out.println(dNum); 
       break;
     }
  }
  for(int i = 2; i < e.length()-10; i++){
    String digits = e.substring(i,i+10);
    double dNum = Double.parseDouble(digits);
    if(sum49(dNum) == 49){
      count++;  
    }
    if(count == 5){
      System.out.println(dNum);
      break;
    }
  }
}

public boolean isPrime(double num){ //Part 1
  if(num <= 1){
    return false;
  }
  for(int i = 2; i <= Math.sqrt(num); i++){
    if(num % i == 0){
      return false;
    }
  }
  return true;
}

public int sum49(double num){ //Part 2
  int sum = 0;
  double digits = num;
  for(int i = 0; i < 12; i++){
    sum = sum + (int)(digits % 10);
    digits = (int)(digits/10);
  }
  return sum;
}
