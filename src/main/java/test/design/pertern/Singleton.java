package test.design.pertern;

public class Singleton {
	
	private volatile static Singleton  instance ;
	
	public  Singleton getInstance(){
		if(instance == null){
			synchronized (Singleton.class) {
				if(instance == null){
					instance = new Singleton();
				}
			}
		}
		return instance;
	}
}


class Singleton2 {
	
	private volatile static Singleton2  instance ;
	
	public  Singleton2 getInstance(){
		if(instance == null){
			synchronized (Singleton.class) {
				if(instance == null){
					instance = new Singleton2();
				}
			}
		}
		return instance;
	}
}


