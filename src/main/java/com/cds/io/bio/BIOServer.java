package com.cds.io.bio;

import java.io.IOException;
import java.io.InputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class BIOServer {

	public ServerSocket server ;
	
	/**
	 * 构建一个服务器
	 * @param port
	 * @throws IOException 
	 */
	public BIOServer(int port) throws IOException{
		server = new ServerSocket(port);
		System.out.println("BIO服务已经启动，监听端口是："+port);
	}
	
	
	/**
	 * 监听客户端请求
	 * @throws IOException 
	 */
	public void listener() throws IOException{
		while(true){
			Socket client = server.accept();
			InputStream is = client.getInputStream();
			byte[] buff = new byte[1024];
			int len = is.read(buff);
			if( len > 0){
				String msg = new String(buff,0,len);
				System.out.println("接收到客户端的消息"+msg);
			}
			
		}
	}
	
	public static void main(String[] args) throws IOException {
		new BIOServer(8080).listener();
	}
}
