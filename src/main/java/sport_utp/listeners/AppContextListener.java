package sport_utp.listeners;

import io.github.cdimascio.dotenv.Dotenv;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class AppContextListener implements ServletContextListener {
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		Dotenv env = Dotenv.load();
		String APP_TITLE = env.get("APP_TITLE");
		sce.getServletContext().setAttribute("APP_TITLE", APP_TITLE);
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}
}
