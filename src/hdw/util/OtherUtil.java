package hdw.util;

import java.util.ArrayList;
import java.util.List;

import hdw.bean.Product;

public class OtherUtil {
	public static List<Product> randomTopic(List<Product> list, int count) {  
	    // 创建一个长度为count(count<=list)的数组,用于存随机数  
	    int[] a = new int[count];  
	    // 利于此数组产生随机数  
	    int[] b = new int[list.size()];  
	    int size = list.size();  
	  
	    // 取样填充至数组a满  
	    for (int i = 0; i < count; i++) {  
	        int num = (int) (Math.random() * size); // [0,size)  
	        int where = -1;  
	        for (int j = 0; j < b.length; j++) {  
	            if (b[j] != -1) {  
	                where++;  
	                if (where == num) {  
	                    b[j] = -1;  
	                    a[i] = j;  
	                }  
	            }  
	        }  
	        size = size - 1;  
	    }  
	    // a填满后 将数据加载到rslist  
	    List<Product> rslist = new ArrayList<Product>();  
	    for (int i = 0; i < count; i++) {  
	        Product df = (Product) list.get(a[i]);  
	        rslist.add(df);  
	    }  
	    return rslist;  
	}  
}
