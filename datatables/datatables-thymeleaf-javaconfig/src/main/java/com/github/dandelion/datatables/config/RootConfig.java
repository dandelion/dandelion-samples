package com.github.dandelion.datatables.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = { "com.github.dandelion.datatables.service", "com.github.dandelion.datatables.repository" })
public class RootConfig {
}
