package org.springframework.samples.petclinic;

import java.util.Locale;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.servlet.WebMvcProperties.LocaleResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

@SpringBootApplication()
public class PetclinicApplication {

	public static void main(String[] args) {
		SpringApplication.run(PetclinicApplication.class, args);
	}
	@Bean // <--- 1
	public CookieLocaleResolver localeResolver() {
		Locale locale =  new Locale("es", "ES");
		CookieLocaleResolver localeResolver = new CookieLocaleResolver(); // <--- 2
		localeResolver.setDefaultLocale(locale); // <--- 3
		return localeResolver;
	}
}
