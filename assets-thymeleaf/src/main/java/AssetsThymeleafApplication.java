import com.github.dandelion.thymeleaf.dialect.DandelionDialect;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

public class AssetsThymeleafApplication {

    private static TemplateEngine templateEngine;

    static {
        initializeTemplateEngine();
    }

    private static void initializeTemplateEngine() {
        ServletContextTemplateResolver templateResolver = new ServletContextTemplateResolver();
        templateResolver.setTemplateMode("HTML5");
        templateResolver.setPrefix("/WEB-INF/templates/");
        templateResolver.setSuffix(".html");
        templateResolver.setCacheTTLMs(3600000L);
        templateResolver.setCacheable(false);

        templateEngine = new TemplateEngine();
        templateEngine.setTemplateResolver(templateResolver);

        // add dandelion dialect
        templateEngine.addDialect(new DandelionDialect());
    }

    public static TemplateEngine getTemplateEngine() {
        return templateEngine;
    }
}
