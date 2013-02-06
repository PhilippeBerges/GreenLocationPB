package Controller;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.concurrent.Executor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.net.httpserver.HttpContext;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

import modele.*;

public class EtatController extends HttpServer {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.getOutputStream().println("test");
	}

	@Override
	public void bind(InetSocketAddress arg0, int arg1) throws IOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public HttpContext createContext(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HttpContext createContext(String arg0, HttpHandler arg1) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public InetSocketAddress getAddress() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Executor getExecutor() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeContext(String arg0) throws IllegalArgumentException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeContext(HttpContext arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setExecutor(Executor arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void start() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void stop(int arg0) {
		// TODO Auto-generated method stub
		
	}
}