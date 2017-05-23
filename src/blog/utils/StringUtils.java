package blog.utils;

import java.text.DecimalFormat;

public class StringUtils {
	
	public static final String MINSTOP = "\\,";

	//判断为空
	public static boolean isEmpty(String str){
		return (str == null) || (str.length() == 0);
	}
	
	
	
	//判断不为空
	public static boolean isNotEmpty(String str){
		return !isEmpty(str);
	}
	
	
	
	//截取字符串
	 public static String[] castStringArray(String ids,String type){
		Object[] objArray = ids.split(type);
	    if (objArray == null) {
	    objArray = new Object[0];
	 }
	    String[] strArray = new String[objArray.length];
	    if ((objArray != null) || (objArray.length != 0)) {
	       for (int i = 0; i < objArray.length; i++) {
	        strArray[i] = castString(objArray[i],"");
	       }
	    }
	     return strArray;
	   }
	
	 
	 
	//obj转型
	  public static String castString(Object obj, String defaultValue){
		  if (obj != null) {
	      if (obj.getClass().getName().equals("java.lang.Double")) {
	      DecimalFormat format = new DecimalFormat("#");
	      return format.format(obj);
	     }
	      if (isNotEmpty(String.valueOf(obj))) {
	      return String.valueOf(obj);
	     }
	      return defaultValue;
	     }
		  return defaultValue;
	     }
}
