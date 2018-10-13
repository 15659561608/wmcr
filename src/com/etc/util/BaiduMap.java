package com.etc.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;

import com.besjon.pojo.JsonRootBean;
import com.google.gson.Gson;
import com.sun.javafx.collections.MappingChange.Map;

public class BaiduMap {
	static String url = "http://api.map.baidu.com/geocoder/v2/?output=json&ak=dfY6LWsD1xGtVTxskQXrUlYHPiH9AKP6&callback=showLocation";

	public String connectURL(String dest_url, String commString) {
		String rec_string = "";
		URL url = null;
		HttpURLConnection urlconn = null;
		OutputStream out = null;
		BufferedReader rd = null;
		try {
			url = new URL(dest_url);
			urlconn = (HttpURLConnection) url.openConnection();
			urlconn.setReadTimeout(1000 * 30);
			urlconn.setRequestMethod("POST");
			urlconn.setDoInput(true);
			urlconn.setDoOutput(true);
			out = urlconn.getOutputStream();
			out.write(commString.getBytes("UTF-8"));
			out.flush();
			out.close();
			rd = new BufferedReader(new InputStreamReader(urlconn.getInputStream(), "UTF-8"));
			StringBuffer sb = new StringBuffer();
			int ch;
			while ((ch = rd.read()) > -1)
				sb.append((char) ch);
			rec_string = sb.toString();
		} catch (Exception e) {

			return "";
		} finally {
			try {
				if (out != null) {
					out.close();
				}
				if (urlconn != null) {
					urlconn.disconnect();
				}
				if (rd != null) {
					rd.close();
				}
			} catch (Exception e) {

			}
		}
		return rec_string;
	}

	public String getResponse(String serverUrl) {
		// 用JAVA发起http请求，并返回json格式的结果
		StringBuffer result = new StringBuffer();
		try {
			URL url = new URL(serverUrl);
			URLConnection conn = url.openConnection();
			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));

			String line;
			while ((line = in.readLine()) != null) {
				result.append(line);
			}
			in.close();

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result.toString();
	}

	public String unicode2Str(String theString) {
		char aChar;
		int len = theString.length();
		StringBuffer outBuffer = new StringBuffer(len);
		for (int x = 0; x < len;) {
			aChar = theString.charAt(x++);
			if (aChar == '\\') {
				aChar = theString.charAt(x++);
				if (aChar == 'u') {
					int value = 0;
					for (int i = 0; i < 4; i++) {
						aChar = theString.charAt(x++);
						switch (aChar) {
						case '0':
						case '1':
						case '2':
						case '3':
						case '4':
						case '5':
						case '6':
						case '7':
						case '8':
						case '9':
							value = (value << 4) + aChar - '0';
							break;
						case 'a':
						case 'b':
						case 'c':
						case 'd':
						case 'e':
						case 'f':
							value = (value << 4) + 10 + aChar - 'a';
							break;
						case 'A':
						case 'B':
						case 'C':
						case 'D':
						case 'E':
						case 'F':
							value = (value << 4) + 10 + aChar - 'A';
							break;
						default:
							throw new IllegalArgumentException("Malformed      encoding.");
						}

					}
					outBuffer.append((char) value);
				} else {
					if (aChar == 't') {
						aChar = '\t';
					} else if (aChar == 'r') {
						aChar = '\r';
					} else if (aChar == 'n') {
						aChar = '\n';
					} else if (aChar == 'f') {
						aChar = '\f';
					}
					outBuffer.append(aChar);
				}
			} else {
				outBuffer.append(aChar);
			}

		}
		return outBuffer.toString();

	}

	public JsonRootBean getJsonRootBean(String address) {
		String result = connectURL("http://api.map.baidu.com/geocoder/v2/?address=" + address
				+ "&output=json&ak=dfY6LWsD1xGtVTxskQXrUlYHPiH9AKP6&callback=showLocation", "");
		result = unicode2Str(result);
		
		result = result.substring(result.indexOf("{"), result.lastIndexOf("}")+1);
		Gson gson = new Gson();
		JsonRootBean rr = gson.fromJson(result, JsonRootBean.class);
		return rr;

	}
	/**
	 * 地理编码
	 * @param address
	 * @return
	 */
	public static Map<String, Double> getLatLon(String address){
		String result = new BaiduMap().connectURL("http://api.map.baidu.com/geocoder/v2/?address=环岛东路商业街17号&output=json&ak=dfY6LWsD1xGtVTxskQXrUlYHPiH9AKP6&callback=showLocation", "");
		result = new BaiduMap().unicode2Str(result);
		result = result.substring(result.indexOf("{"), result.lastIndexOf("}") + 1);
		Gson gson = new Gson();
		JsonRootBean rr = gson.fromJson(result, JsonRootBean.class);
		if(rr.getStatus()!=0) {
			return null;
		}
		HashMap<String, Double> hashmap=new HashMap<>();
		hashmap.put("lat", rr.getResult().getLocation().getLat());
		hashmap.put("lon", rr.getResult().getLocation().getLng());
		return (Map<String, Double>) hashmap;
	}
	public static void main(String[] args) {
		String result = new BaiduMap().connectURL("http://api.map.baidu.com/geocoder/v2/?address=环岛东路商业街17号&output=json&ak=dfY6LWsD1xGtVTxskQXrUlYHPiH9AKP6&callback=showLocation", "");
		result = new BaiduMap().unicode2Str(result);
		System.out.println(result);
		result = result.substring(result.indexOf("{"), result.lastIndexOf("}") + 1);
		Gson gson = new Gson();
		JsonRootBean rr = gson.fromJson(result, JsonRootBean.class);
		System.out.println(rr.getResult().getLocation().getLat());
	}
}
