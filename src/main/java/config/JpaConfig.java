package config;

import jakarta.persistence.EntityManagerFactory;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.data.jpa.repository.config
        .EnableJpaRepositories;

import org.springframework.jdbc.datasource
        .DriverManagerDataSource;

import org.springframework.orm.jpa.JpaTransactionManager;

import org.springframework.orm.jpa
        .LocalContainerEntityManagerFactoryBean;

import org.springframework.orm.jpa.vendor
        .HibernateJpaVendorAdapter;

import org.springframework.transaction.PlatformTransactionManager;

import org.springframework.transaction.annotation
        .EnableTransactionManagement;

import javax.sql.DataSource;

import java.util.Properties;

@Configuration

@EnableTransactionManagement

@EnableJpaRepositories(
        basePackages = "repository"
)

public class JpaConfig {

    @Bean
    public DataSource dataSource(){

        DriverManagerDataSource ds =
                new DriverManagerDataSource();

        ds.setDriverClassName(
                "org.postgresql.Driver"
        );

        ds.setUrl(
                "jdbc:postgresql://localhost:5432/SMS_DB"
        );

        ds.setUsername(
                "postgres"
        );

        ds.setPassword(
                "root"
        );

        return ds;
    }

    @Bean
    public LocalContainerEntityManagerFactoryBean
    entityManagerFactory(){

        LocalContainerEntityManagerFactoryBean emf =
                new LocalContainerEntityManagerFactoryBean();

        emf.setDataSource(
                dataSource()
        );

        emf.setPackagesToScan(
                "entity"
        );

        HibernateJpaVendorAdapter vendorAdapter =
                new HibernateJpaVendorAdapter();

        emf.setJpaVendorAdapter(
                vendorAdapter
        );

        Properties props =
                new Properties();

        props.put(
                "hibernate.hbm2ddl.auto",
                "update"
        );

        props.put(
                "hibernate.show_sql",
                "true"
        );

        props.put(
                "hibernate.dialect",
                "org.hibernate.dialect.PostgreSQLDialect"
        );

        emf.setJpaProperties(props);

        return emf;
    }

    @Bean
    public PlatformTransactionManager
    transactionManager(

            EntityManagerFactory emf
    ){

        JpaTransactionManager tm =
                new JpaTransactionManager();

        tm.setEntityManagerFactory(emf);

        return tm;
    }
}