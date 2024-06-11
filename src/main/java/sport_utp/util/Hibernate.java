package sport_utp.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import io.github.cdimascio.dotenv.Dotenv;

public class Hibernate {
	private static final SessionFactory SESSION_FACTORY;
	
	static {
		try {
			// Load environment variables from .env file
			Dotenv env = Dotenv.configure().load();

			// Configuring Hibernate
			Configuration configuration = new Configuration();
			configuration.setProperty("hibernate.dialect", env.get("HIBERNATE_DIALECT"));
			configuration.setProperty("hibernate.connection.url", env.get("DB_URL"));
            configuration.setProperty("hibernate.connection.username", env.get("DB_USERNAME"));
            configuration.setProperty("hibernate.connection.password", env.get("DB_PASSWORD"));
            configuration.setProperty("hibernate.hbm2ddl.auto", "update");
            configuration.setProperty("hibernate.show_sql", "true");
            configuration.setProperty("hibernate.format_sql", "true");
            
            // add class annotation
            
            
            
            // build session
            
            SESSION_FACTORY = configuration.buildSessionFactory();
            
		} catch (Throwable ex) {
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory () {
		return SESSION_FACTORY;
	}
	
}
