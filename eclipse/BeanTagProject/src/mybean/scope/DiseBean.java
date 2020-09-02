package mybean.scope;
import java.util.Random;

public class DiseBean {
	private int min;
	private int max;
	private static int counter;
	private Random rand = new Random();
	
	public int getMinNumber() {return min;}
	public void setMinNumber(int min) {this.min = min;}
	
	public int getMaxNumber() {return max;}
	public void setMaxNumber(int max) {this.max = max;}
	
	public int getCounter() {return counter++;}
	
	public int getRandomNumber() {
		return rand.nextInt(max-min+1)+min;
	}
	

}
