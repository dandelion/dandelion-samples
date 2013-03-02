import com.github.dandelion.core.asset.AssetsRequestContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/assets-jsp", loadOnStartup = 1)
public class AssetsJspServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // add to assets request context the scope1 and scope2
        AssetsRequestContext.get(req).addScopes("scope1,scope2");
        // go to the jsp
        getServletContext().getRequestDispatcher("/WEB-INF/pages/assets.jsp").forward(req, resp);
    }
}
