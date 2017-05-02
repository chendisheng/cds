package com.cds.io.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class NIOServer {
	
	int port = 8081;
	
	ServerSocketChannel server;
	
	Selector selector ;
	
	ByteBuffer receiveBuffer = ByteBuffer.allocate(1024);
	ByteBuffer sendBuffer = ByteBuffer.allocate(1024);
	
	Map<SelectionKey,String> sessionMsg = new HashMap<SelectionKey,String>();
	
	public NIOServer(int port) throws IOException{
		
		// 把高速公路修起来
		server = ServerSocketChannel.open();
		
		//关卡打开，可以多路复用
		server.socket().bind(new InetSocketAddress(this.port));
		
		//默认是阻塞的，手动设置为非阻塞，它才是非阻塞的
		server.configureBlocking(false);
		
		//管家开始营业
		selector = Selector.open();
		
		//高速管家，BOSS已经准备就绪，等会儿客人来了，要通知我一下
		server.register(selector, SelectionKey.OP_ACCEPT);
		
		System.out.println("NIO服务已经启动，监听端口："+this.port);
	}
	
	public void listener() throws IOException{
		//轮询
		while(true){
			//判断一下，当前有没有客户来注册，有没有排队的，有没有取号的
			int i = selector.select();
			if( i == 0) {
				continue;
			}
			
			Set<SelectionKey> keys = selector.selectedKeys();
			
			Iterator<SelectionKey> iterator = keys.iterator();
			
			while( iterator.hasNext() ){
				//来一个处理一个
				process(iterator.next());
				//处理完只有打发走
				iterator.remove();
			}
		}
	}
	
	private void process(SelectionKey key) throws IOException{
		
		//判断客户有么有跟我们的BOSS建立连接
		if(key.isAcceptable()){
			SocketChannel client = server.accept();
			client.configureBlocking(false);
			client.register(selector, SelectionKey.OP_READ);
		}
		
		
		//判断是否可以读数据了
		else if(key.isReadable()){
			receiveBuffer.clear();
			SocketChannel client = (SocketChannel)key.channel();
			int len = client.read(receiveBuffer);
			if( len > 0){
				String msg = new String(receiveBuffer.array(),0,len);
				
				sessionMsg.put(key, msg);
				
				System.out.println("获取客户端发送来的消息："+msg);
			}
			
			client.register(selector, SelectionKey.OP_WRITE);
		}
		//判断是否可以写数据了
		else if(key.isWritable()){
			
			if(!sessionMsg.containsKey(key)){
				return;
			}
			
			SocketChannel client = (SocketChannel)key.channel();
			
			sendBuffer.clear();
			
			sendBuffer.put(new String(sessionMsg.get(key)+",你好，您的请求已处理完成").getBytes());
			
			sendBuffer.flip();//共用缓冲区
			
			client.write(sendBuffer);
			
			client.register(selector, SelectionKey.OP_READ);
		}
		
	}
	
	public static void main(String[] args) throws IOException {
		new NIOServer(8081).listener();
	}
}
