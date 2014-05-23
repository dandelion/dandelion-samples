package com.github.dandelion.bootleaf;

import com.github.dandelion.core.web.AssetRequestContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class DandelionSampleControler {

	@RequestMapping(value = "/")
	public String goToIndex() {
		return "index";
	}

	@RequestMapping(value = "/asset-bundles")
	public String goToAssetBundle() {
		return "asset-bundles";
	}

	@RequestMapping(value = "/asset-graph/using-the-api")
	public String goToAssetGraphUsingTheApiExample(HttpServletRequest request) {
		AssetRequestContext.get(request).addBundle("bundle-using-api");
		return "asset-graph/using-the-api";
	}

	@RequestMapping(value = "/asset-graph/{page}")
	public String goToAssetGraphOtherExamples(@PathVariable String page) {
		return "asset-graph/" + page;
	}

	@RequestMapping(value = "/asset-locators")
	public String goToAssetLocators() {
		return "asset-locators";
	}

	@RequestMapping(value = "/graph-viewer")
	public String goToGraphViewer() {
		return "graph-viewer";
	}
}
