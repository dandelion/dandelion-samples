package com.github.dandelion.datatables.web;

import com.github.dandelion.datatables.core.extension.feature.ExportFeature;
import com.github.dandelion.datatables.core.html.HtmlTable;

public class CustomExportFeature extends ExportFeature {
	
//	@Override
//	public String getName() {
		// TODO Auto-generated method stub
//		return "YAHHHHHHHHHHHHHHHHHHHHHHHHHHHH";
//	}

	@Override
	public void setup(HtmlTable table) {
		// TODO Auto-generated method stub
		super.setup(table);
		System.out.println("================================> CUSTOM BODY");
	}

}
