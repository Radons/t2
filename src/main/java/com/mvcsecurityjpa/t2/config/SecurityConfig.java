package com.mvcsecurityjpa.t2.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.session.security.web.authentication.SpringSessionRememberMeServices;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
    private BCryptPasswordEncoder passwordEncoder;
    @Autowired
    private DataSource dataSource;

    @Value("${spring.queries.users-query}")
    private String usersQuery;

    @Value("${spring.queries.roles-query}")
    private String rolesQuery;

    @Override
    protected void configure(AuthenticationManagerBuilder auth)
            throws Exception {
    	auth
    	.jdbcAuthentication()
    	.usersByUsernameQuery(usersQuery)
    	.authoritiesByUsernameQuery(rolesQuery)
    	.dataSource(dataSource)
    	.passwordEncoder(passwordEncoder);
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http
    		.rememberMe()
    		.rememberMeServices(rememberMeServices())
    		.and()
    		.requiresChannel().anyRequest().requiresSecure()
    		.and()
    		.authorizeRequests()
    		.antMatchers("/admin/**").authenticated()
    		//.hasRole("admin")
    		.antMatchers("/","/home","/login").permitAll()
    		.anyRequest().permitAll()
    		.and()
    		.formLogin();
/*    			.loginPage("/login")
    			.usernameParameter("userName")
    		 	.passwordParameter("userPwd")
    		 	.defaultSuccessUrl("/home")
    		.and()
    		.csrf();*/
    		
    }
    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
    }
    @Bean
    public SpringSessionRememberMeServices rememberMeServices() {
    	SpringSessionRememberMeServices rememberMeServices =
    			new SpringSessionRememberMeServices();
    	// optionally customize
    	rememberMeServices.setAlwaysRemember(true);
    	return rememberMeServices;
    }
    
}




/*@EnableWebSecurity
public class WebSecurityConfig implements WebMvcConfigurer {

    @Bean
    public UserDetailsService userDetailsService() throws Exception {
        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
        manager.createUser(User.withDefaultPasswordEncoder().username("user").password("password").roles("USER").build());
        return manager;
    }
}*/





