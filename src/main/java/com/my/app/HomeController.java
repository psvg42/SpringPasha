package com.my.app;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.my.app.db.Connector;
import com.my.app.db.News;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String getNews(Locale locale, Model model) {
		
		List<News> newsList = Connector.getConnect().getNews();
		
		model.addAttribute("news", newsList);
		
		return "news_page";
	}
	
	@RequestMapping(value = "/add_news", method = RequestMethod.GET)
	public String showAddNews(Locale locale, Model model) {
		return "add_news";
	}
	
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String AddNews(Model model, @RequestParam("title") String title, @RequestParam("text") String text) {
		News news = new News(title,text,new Date());
		Connector.getConnect().addNews(news);
		model.addAttribute("addOK", "OK");
		return "add_news";
	}
	
	
	
}
