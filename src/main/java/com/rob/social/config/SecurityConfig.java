package com.rob.social.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
  @Autowired
  private DataSource securityDataSource;

  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth.jdbcAuthentication().dataSource(securityDataSource);
  }

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    //login
    http.authorizeRequests()
        .antMatchers("/", "/auth/register", "/auth/login", "/main.dart.js", "/styles.css").permitAll()
        .anyRequest().authenticated()
        .and().formLogin()
        .loginPage("/")
        .loginProcessingUrl("/auth/login")
        //.defaultSuccessUrl("/handle-login", true)
        .permitAll()
        .and()
        .logout().permitAll()
        .and()
        .csrf().disable();

  }
}