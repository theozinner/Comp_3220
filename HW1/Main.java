public class Main { 
  
    static int printPFsInPairs(int n) 
    { 
      int sum = 0;
        for (int i = 1; i * i <= n; i++) 
            if (n % i == 0) 
                sum++; 
            return sum;
    } 
  
    // Driver code 
    public static void main(String[] args) 
    { 
      int output = 0;
      output = printPFsInPairs(456); 
      System.out.print(output);
    } 
} 
