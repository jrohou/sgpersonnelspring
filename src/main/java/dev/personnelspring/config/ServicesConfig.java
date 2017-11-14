package dev.personnelspring.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import dev.personnelspring.spring.DataSourceMySQLConfig;


@Configuration
@ComponentScan({"dev.personnelspring.service","dev.personnelspring.spring", "dev.personnelspring.listener"})

@Import({JpaConfig.class, DataSourceMySQLConfig.class})
@EnableJpaRepositories("dev.personnelspring.repository")

public class ServicesConfig {

}