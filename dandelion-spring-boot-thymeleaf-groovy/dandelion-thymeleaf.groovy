package samples

import com.github.dandelion.core.asset.AssetType
import com.github.dandelion.core.asset.cache.AssetsCacheSystem
import com.github.dandelion.core.utils.DandelionUtils
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.beans.factory.annotation.Autowired

import com.github.dandelion.core.asset.web.AssetsRequestContext
import com.github.dandelion.core.asset.wrapper.DelegateLocationWrapper
import com.github.dandelion.core.asset.wrapper.DelegateContent
import com.github.dandelion.thymeleaf.dialect.DandelionDialect
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

import javax.servlet.ServletException
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse


//@Grab("org.springframework:spring-webmvc:3.2.4.RELEASE"),
@Grab("com.github.dandelion:dandelion-thymeleaf:0.3.0-SNAPSHOT")
@Grab("org.thymeleaf:thymeleaf-spring3:2.0.16")
@Grab("org.apache.tomcat.embed:tomcat-embed-core:7.0.42")
@Grab("org.apache.tomcat.embed:tomcat-embed-logging-juli:7.0.42")

@Controller
class DandelionController {

    @Autowired
    private HttpServletRequest context;

    @RequestMapping("/")
    public String basic() {
        // add to assets request context the scope1 and scope2
        AssetsRequestContext.get(context)
                .addScopes("scope1,scope2")
                .addScopes("delegateContentIP")
                .addParameter("ip", DelegateLocationWrapper.DELEGATE_CONTENT_PARAM, new AlertIPDelegateContent());

        return "basic";
    }
}

class AlertIPDelegateContent implements DelegateContent {
    @Override
    public String getContent(HttpServletRequest request) {
        return "alert('x-forwarded-for=" + request.getHeader("x-forwarded-for") + "');";
    }
}

@Configuration
class DandelionDialectConfiguration {

    @Bean
    public DandelionDialect dandelionDialect() {
        return new DandelionDialect();
    }

}










@Controller
class DandelionAssetsController {

    @Autowired
    private HttpServletRequest context;

    @RequestMapping("/dandelion-assets")
    public void assets(HttpServletRequest request, HttpServletResponse response) {
        String cacheKey = AssetsCacheSystem.getCacheKeyFromRequest(request);

        if (DandelionUtils.isDevModeEnabled() && !AssetsCacheSystem.checkCacheKey(cacheKey))
            throw new ServletException("The Dandelion assets should have been generated!");

        String resource = request.getParameter("r");
        AssetType resourceType = AssetType.typeOfAsset(resource);
        if (resourceType == null) return;

        String fileContent = AssetsCacheSystem.getCacheContent(cacheKey);
        response.setContentType(resourceType.getContentType());
        response.setHeader("Cache-Control", getCacheControl());
        response.getWriter().write(fileContent);
    }

    private static final String CACHE_CONTROL = "assets.servlet.cache.control";
    public static final String DEFAULT_CACHE_CONTROL = "no-cache";
    private String cacheControl;

    public String getCacheControl() {
        if(cacheControl == null) {
            initializeCacheControl();
        }
        return cacheControl;
    }

    synchronized private void initializeCacheControl() {
        if(cacheControl != null) return;
        String _cacheControl = com.github.dandelion.core.config.Configuration.getProperty(CACHE_CONTROL);
        if(DandelionUtils.isDevModeEnabled() || _cacheControl == null || _cacheControl.isEmpty()) {
            _cacheControl = DEFAULT_CACHE_CONTROL;
        }
        cacheControl = _cacheControl;
    }
}
