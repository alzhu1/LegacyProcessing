public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
     noLoop();  
}  
public void draw()  
{   
	//not needed for this assignment
	String eNoPoint = e.substring(0,1)+e.substring(2);
	for(int i=0; i<e.length()-10; i++)
	{
		String tenDig = eNoPoint.substring(i,i+10);
		Double dNum = Double.parseDouble(tenDig);
		if(isPrime(dNum)==true)
		{
			System.out.println(tenDig);
			break;
		}
	}
}  
public boolean isPrime(double dNum)  
{   
    //to be finished later   
    for(int i=2; i<=Math.sqrt(dNum); i++)
    {
    	if(dNum%i==0)
    	{
    		return false;
    	}
    }
    return true;
} 