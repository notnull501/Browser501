package ch11_el;
//270
import java.text.DecimalFormat;
//EL에서 static() 사용하기
public class FormatUtil {

	public static String number(long number,String pattern) {
		
		DecimalFormat format = new DecimalFormat(pattern);
		
		return format.format(number);//123456 =>123,456
		
	}
}
