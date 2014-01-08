package com.laitkor.common.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.data.JsonDataSource;

import org.springframework.context.annotation.ImportResource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.security.core.codec.Base64;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.lowagie.text.pdf.PdfDocument;



@Controller
@RequestMapping("/ucf_ucprepare_alert/")
public class ucsfucpreparealertController
{

	
@RequestMapping(value="/", method = RequestMethod.GET)
	
	public  String getJsonData( ModelMap model) 
	{
		return "ucfreport";
}
	

	@RequestMapping(value="/report/{reportName}", method = RequestMethod.POST)
	@ResponseBody
	@ExceptionHandler
	
	public  byte [] generateUReport(@PathVariable String reportName,@RequestParam  String jsondatasource, ModelMap model,HttpServletResponse    response ) throws IOException, Exception {

			  
		  File reportFile = new ClassPathResource("/com/laitkor/common/reports/ucf_ucprepare_alert.jasper").getFile();//your report_name.jasper file
          File source =new ClassPathResource("/com/laitkor/common/reports/json.json").getFile();//your report_name.jasper file
        
          FileWriter writer = new FileWriter(source);
          writer.write(jsondatasource);
          writer.close();
          Map parameters = new HashMap();
          
          JRDataSource jr=new JsonDataSource(source);
 
          parameters.put("XNID","1");
//          parameters.put("imgpath", new ClassPathResource("/com/laitkor/common/reports/logo.png").getFile().getAbsolutePath());
          byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(),parameters,jr);
           
  // bytes=      Base64.encode(bytes);




    response.setContentType("application/pdf");
    response.setContentLength(bytes.length);
    ServletOutputStream outStream = response.getOutputStream();
    outStream.write(bytes, 0, bytes.length);
    
		return bytes;
	}

}
