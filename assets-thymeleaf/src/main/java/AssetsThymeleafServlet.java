import com.github.dandelion.core.asset.AssetsRequestContext;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/assets-thymeleaf", loadOnStartup = 1)
public class AssetsThymeleafServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // add to assets request context the scope1 and scope2
        AssetsRequestContext.get(req).addScopes("scope1,scope2");

        resp.setContentType("text/html;charset=UTF-8");
        resp.setHeader("Pragma", "no-cache");
        resp.setHeader("Cache-Control", "no-cache");
        resp.setDateHeader("Expires", 0);

        // go to the thymeleaf page
        TemplateEngine templateEngine = AssetsThymeleafApplication.getTemplateEngine();
        WebContext ctx = new WebContext(req, resp, getServletContext(), req.getLocale());
        templateEngine.process("assets", ctx, resp.getWriter());
    }
}
