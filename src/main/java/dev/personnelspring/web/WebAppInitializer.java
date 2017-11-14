package dev.personnelspring.web;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import dev.personnelspring.config.WebAppConfig;

public class WebAppInitializer implements WebApplicationInitializer {

	
	public void onStartup(ServletContext servletContext) throws ServletException {
		
		AnnotationConfigWebApplicationContext webContext = new 
				AnnotationConfigWebApplicationContext();
		webContext.register(WebAppConfig.class);
		
		ServletRegistration.Dynamic dispatcher = servletContext.addServlet
				("dispatcher", new DispatcherServlet(webContext));
		dispatcher.setLoadOnStartup(1);

		
		dispatcher.addMapping("/mvc/*");
		
		servletContext.addListener(new ContextLoaderListener(webContext));
	
}
}
