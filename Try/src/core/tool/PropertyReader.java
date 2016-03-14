package core.tool;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;

public class PropertyReader {
	private String flieName;

	public String getFlieName() {
		return flieName;
	}

	public void setFlieName(String flieName) {
		this.flieName = flieName;
	}
	
	public HashMap<String, String> getHasMap() {
		HashMap<String, String> sourceMap = new HashMap<String, String>();
		Properties myProperties = new Properties(); // 实例化
		InputStream in;
		try {
			 in = getClass().getResourceAsStream(this.flieName);
			myProperties.load(in);
			// 得到所有的主键信息（这里的主键信息主要是简化的主键，也是信息的关键）
			Enumeration<?> enmObject = myProperties.keys();
			// 对每一个主键信息进行检索处理，跟传入的返回值信息是否有相同的地方（如果有相同的地方，取出主键信息的属性，传回给返回信息）
			while (enmObject.hasMoreElements()) {
				String curKey = (String) enmObject.nextElement();
				String curMessage = myProperties.getProperty(curKey);
				sourceMap.put(curKey, curMessage);
			}
			return sourceMap;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 用list<Map<String,String>>中键数的大小进行升序，即比较第一个String转换成数字比较，小值的Map在前
	 * */
	public List<Map.Entry<String, String>> getSortedList(Map<String, String> map) {
		List<Map.Entry<String, String>> list = new ArrayList<Map.Entry<String, String>>(
				map.entrySet());
		Collections.sort(list, new Comparator<Map.Entry<String, String>>() {
			// 升序排序
			public int compare(Entry<String, String> o1,
					Entry<String, String> o2) {
				int t1 = Integer.parseInt(o1.getKey());
				int t2 = Integer.parseInt(o2.getKey());
				if (t1 < t2) {
					return -1;
				}
				if (t1 > t2) {
					return 1;
				}
				return 0;
			}
		});
		return list;
	}
}
