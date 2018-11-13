package br.com.treinamento.MSCConfigServer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class MscConfigServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(MscConfigServerApplication.class, args);
	}
}
