package com.shinhan.model;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;
import com.shinhan.dto.PayVO;

import lombok.Getter;
import lombok.ToString;

@Service
public class PayService {

	// JSON내부 response 파싱
	@ToString
	@Getter
	private class Response {
		public PaymentInfo getResponse() {
			return response;
		}

		private PaymentInfo response;
	}

	// JSON에서 금액 가져오는 객체
	@ToString
	@Getter
	private class PaymentInfo {
		public int getAmount() {
			return amount;
		}

		private int amount;
	}

	@Autowired
	PayDAOMybatis dao;

	public int insertPay(PayVO pay) {
		return dao.insertPay(pay);
	}

	public int selectPayCount() {
		return dao.selectPayCount();
	}
	
	public int updatePayStatus(String impUid) {
		return dao.updatePayStatus(impUid);
	}

	public int paymentInfo(String impUid, String accessToken) throws IOException {
		HttpsURLConnection conn = null;
		URL url = new URL("https://api.iamport.kr/payments/" + impUid);
		conn = (HttpsURLConnection) url.openConnection();
		
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Authorization", accessToken);
		conn.setDoOutput(true);
		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
		Gson gson = new Gson();
		
		// json to Object
		Response response = gson.fromJson(br.readLine(), Response.class);
		br.close();
		conn.disconnect();
		
		System.out.println("response : " + response.getResponse());
		
		return response.getResponse().getAmount();
		
	}

	// @Value("${imp_key}")
	//private String impKey = "2473561448647236";
	
	@Value("${imp_key}")
	private String impKey;
	 
	 @Value("${imp_secret}")
	 private String impSecret;


	// @Value("${imp_secret}")
	//private String impSecret = "e3h05uZuutCJFe3JxCpFkqH5Qp90bvbNdPUC9j6Szr9uKb79mewNzS74gQgDVgI39qIUajRB58SQ6BTj";

	// 유저의 Token을 가져오는 메서드
	public String getUserToken() throws Exception {
		HttpsURLConnection conn = null;
		URL url = new URL("https://api.iamport.kr/users/getToken");
		conn = (HttpsURLConnection) url.openConnection();

		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setDoOutput(true);

		JsonObject json = new JsonObject();
		json.addProperty("imp_key", impKey);
		json.addProperty("imp_secret", impSecret);

		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		bw.write(json.toString());
		bw.flush();
		bw.close();

		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
		StringBuilder responseStringBuilder = new StringBuilder();
		String inputLine;

		while ((inputLine = br.readLine()) != null) {
			responseStringBuilder.append(inputLine);
		}

		br.close();
		String response = responseStringBuilder.toString();

		Gson gson = new Gson();
		JsonObject jsonResponse = gson.fromJson(response, JsonObject.class);
		String token = jsonResponse.getAsJsonObject("response").get("access_token").getAsString();
		System.out.println("Response : " + response);
		System.out.println("Token : " + token);

		br.close();
		conn.disconnect();
		return token;
	}
	
	public void paymentCancel(String accessToken, String impUid, int amount, String reason)  throws IOException {
		HttpsURLConnection conn = null;
		URL url = new URL("https://api.iamport.kr/payments/cancel");
		conn = (HttpsURLConnection) url.openConnection();
		
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setRequestProperty("Authorization", accessToken);
		conn.setDoOutput(true);
		
		JsonObject json = new JsonObject();
		json.addProperty("reason", reason);
		json.addProperty("imp_uid",  impUid);
		json.addProperty("amount", amount);
		json.addProperty("checksum", amount);
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		bw.write(json.toString());
		
		System.out.println("결제 취소 : " +json.toString());
		
		bw.flush();
		bw.close();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
		br.close();
		conn.disconnect();
		
	}

	public int subOrderInsert(OrderVO order) {
		return dao.subOrderInsert(order);
		
	}

	public int subOrderDetailInsert(OrderdetailVO orderdetail) {
		// TODO Auto-generated method stub
		return dao.subOrderDetailInsert(orderdetail);
	}
	
	public PayVO statusCheck(int order_no) {
		return dao.statusCheck(order_no);
	}

	public int updateOrder_no(MemVO mem) {
		// TODO Auto-generated method stub
		return dao.updateOrder_no(mem);
	}

	public int updateOrder(int order_no) {
		return dao.updateOrder(order_no);
		
	}

	public int updateOrderStatus() {
		return dao.updateOrderStatus();
	}

}
