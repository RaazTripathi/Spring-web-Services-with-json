<%@ page import="org.apache.http.impl.auth.BasicScheme,java.io.*, org.apache.http.*, org.apache.http.client.*,org.apache.http.client.methods.*, org.apache.http.entity.*,org.apache.http.auth.*"%> 
<%@ page import="org.springframework.security.core.codec.Base64,org.apache.http.client.entity.*,org.apache.http.impl.client.*,java.util.*,java.net.*,org.apache.http.message.*,org.apache.http.params.*,org.apache.http.protocol.HTTP"%> 

 <%
    
 String jsonString=request.getParameter("jsonString");
 
 
 DefaultHttpClient client = new DefaultHttpClient();
 HttpPost post = new HttpPost("http://localhost:7001/SpringMVC/report/ucsf_lda_donor");

ArrayList<NameValuePair> postParameters;
postParameters = new ArrayList<NameValuePair>();
postParameters.add(new BasicNameValuePair("jsondatasource", jsonString));

UsernamePasswordCredentials creds = new UsernamePasswordCredentials("laitkor", "laitkor");
post.addHeader(new BasicScheme().authenticate(creds, post));



post.setEntity(new UrlEncodedFormEntity(postParameters));
 HttpResponse res = client.execute(post);
 BufferedReader rd = new BufferedReader(new InputStreamReader(res.getEntity().getContent()));
 String line = "";
 String l2="";
 while ((line = rd.readLine()) != null) {
     System.out.println(line);

 l2=l2+line;}

// out.println(l2);
 byte [] bytes=l2.getBytes();
 
 bytes=Base64.decode(bytes);
 
 response.setContentType("application/pdf");
 response.setContentLength(bytes.length);
 ServletOutputStream outStream = response.getOutputStream();
 outStream.write(bytes, 0, bytes.length);
 
 

%>
 
 
 
 