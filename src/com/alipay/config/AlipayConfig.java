package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092100562045";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDlvhcjBRrb5jckRv0YBBeKQ9HAHYpzyKW5sPEbs+WsY4JDXdn025lae9mIH1766kYdTbzljHQnBOZu4pHrgayYTlG34paFDk0nZnuyii9Eu/lje6P3Ny54n2MMieSQPpfOQUjWHcQdlROt7sXcRAREaId8zgBLoArzGyyLphM82qGP8bDtCxYCMNJSKI5xxH7ET3lWb21+U6OVOYOOzusn3M4OyapXVidwroUi/KAfyaeQg5k2ampilJR/7Yo0NB7dnJ8Igb/1wHAgiknEGk+Kh1RQcOd2mFZ1U0jG7zLEQEXJ+ScU4Iv8ZS/zU87BkiEhY2a4miblOh6pD3EWBL3rAgMBAAECggEAJYin2QXVfIWhDqE2aj0I54Lq+rsYyo/GW48H5SG/7SkYuA7WNAXIiRrg0Ddn2hB6QgFYUhxfQZywVP9ZHaPC4eMxwJwZQUWz3zMEFIg07sLTHKivgg0W34gSs5K3r8U6Ie1SjACy8K5RV8JBuxm1pMN7Fy3EqJZOE6el4G7Sh8dVDckiChGb3Eu7kxsCR3mj86+lQrRaQsFbF79Dfp4SoF6zCIAP/YaOhI/BVNCs1rEziWb95JkB9sDSe2h4aNHmrgMtTY7JN8TuQzUcHLBuMb0AfHiYGYBD62LQWSBE7mu7U+YYfRJ+sO4vydgNPO/1lisTlmxE04/KJBHNHQ5YMQKBgQDyha0/Mz3zYgyMYgqlU5uqp8v/IK4ZeCUlPm1iuk/pOuv4xBH8mP1G5Upncbo/cRi0kLrkB3gitKuYYkoBoSSTsLDBdoGjVL6/VJ90CNCAgaWVBJ29K8iVwT5095Bdhwd9+zCOuSbBFjmwus+AG8kUnF6bScF2qbgxwgJw9rC4SQKBgQDygpmRCuMcH9pAj+ojHGRgjGuLj1qKrcwJlgecCf4CasTm0BU5pf5/cd999nQYD2eQsUCVWHrQcqrQc4wPAtrDY5UEsVgCRGzUJ9Ef2yu1l0I9seSbBhAPOxruQWeI4RsvukhuM6E4G6J6UY3SPwqGVf8iSNuHFo1u2sM8KauMkwKBgQC4pzVYuIBDznS1cnSemoEct7Pn5g8JD2Rg7h5FHIx5jUZb25XCWQ4HK8+x4XKomUjxOn1B37oF2sAIP1YP1YzO8qoyMzPTk1PEw/7AT3HJVm0ngCNGBI8uDruqPVBrFcOLlXTMRocOXwi/2gzhgsZgbgrOe6LU4baAFDLdpca6GQKBgQC3eYWTzcfbrGGkfP1oiP+MaFCpatDWoP0At6iULp8l1v+XnRCh5+tvIokzNLXKykTRnLk/BI0OjeKcCP+LD97Q+tNwlHgAZyJrNKCsWFZucbzlDmTlwKV/0Hjkj0k0rxKxfl90OM2dtJKttmv1CEr/Lar0lmi4gKCKoSoap3ApzwKBgDRvTMtC6/8maMvMe2BI/vVrj1BpMcRVPPt/xKBkz8aXP7jUo3Vb9b8rKu8mnIm8053ucnxreLu/QRg/ZPd1QiMTeItxsXGefm+GCsU2VsbfZxn4H8cg6d7TtS90xtGpd3OgpYcUaGTTo6HwR68/mr+ye1RW6gd/YGAtd2rfSSDK";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyKUxEDYcU4LbXra7FgSg0MFREQmcNwFCNY0VoDIfx6355AYRnJjghxPMMMGXZwNTnNCuwFw+D7PMcXRa2kDKJ42SCqQjNdbgS/+RNl/o8yUjDUoBbeEDAykbYaonG64H6DsJlkSCeR4nPXZ29BoAaSIkdlK52MkuZK+ZpiUTj9BbMGgBMJfcyaSnX5++iqEeAVH5Hcs+rQjLiKe+SAbFdx3pHhHvkdCTeyLB3J2pxBhNWtBbZjrSRZgKTcZSCsJg1D3hsQaPM3T54295JS8db8SriOtRkaAfVwoZnZGqlK4YsD5xC0IVVWkD25JwwFv+vA7uAKcopySRkPTykLTwVQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http:localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/wmcr/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

