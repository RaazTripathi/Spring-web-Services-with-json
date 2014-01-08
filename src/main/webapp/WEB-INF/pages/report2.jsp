
<%@page import="net.sf.jasperreports.engine.data.JsonDataSource"%>
<%@page import="net.sf.jasperreports.data.json.JsonDataAdapter"%>
<%@ page  import="java.io.*"%>
<%@ page  import="java.sql.Connection"%>
<%@ page  import="java.sql.DriverManager"%>
<%@ page  import="java.util.HashMap"%>
<%@ page  import="java.util.Map"%>
<%@ page  import="net.sf.jasperreports.engine.*"%>
 <%--
          
 
 String jsondatasource=(String)request.getParameter("jsondatasource");
            File reportFile = new File(application.getRealPath("Blank_A4.jasper"));//your report_name.jasper file
            File source = new File("json.json");//your report_name.jasper file
          
            FileWriter writer = new FileWriter(source);
            writer.write(jsondatasource);
            writer.close();
            Map parameters = new HashMap();
            
            JRDataSource jr=new JsonDataSource(source);
   
            parameters.put("XNID","1");
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(),parameters,jr);
           
            
            
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
            source.delete();
        --%>
        
        
       