package com.laitkor.common.controller;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import sun.net.www.http.HttpClient;
public class Test {
    public static void main(String[] args) throws ClientProtocolException, IOException {
        DefaultHttpClient client = new DefaultHttpClient();
        HttpPost post = new HttpPost("http://localhost:7001/SpringMVC/ucsf_lda_donor");
      
  //     String jsondatasource ="{'XNID':'1','patientPhoneBest':'77722777','patientaddresscity':'Calfurniya','extraDonorInfo':'na','preferredContactTime':'10:20','pat_date':'14-12-2012','datetimeLast_updated':'10-7-2013','age':'22','gender':'mail','infoPcpcity':'Newyork','provider_fullname':'Robert whatman','timePat_visit':'10:30','preferredContactDay':'monday','patientFirstname':'Johna','infoProviderOtherFullname':'N/A','infoPcpstate':'yark shayar','bloodtype':'B','datePat_visit':'10-7-2013','patient_surgery_date':'9-10-2013','patientAddressZip':'667444','email':'abc@abc.com','recipientdob':'09-09-1990','patientHeightInches':'73','procedureId':'5','timeSurgery_scheduled_visit':'11:30','infoProviderSurgeonPhoneBest':'7779646684','initialScreenSummary':'Screened','infoPcpname':'Rozer','mrn':'07','infoPcphone':'99867788','userReviewed_by':'Reviewer','infoProviderSurgeonFullname':'Williyum terner','patientWeightPounds':'100','patientHeightFeet':'6','recipientname':'Raaz','infoProviderOtherAddressPrimaryCity':'na','patientAddressStreet':'113 western2 road Hampton','dateSurgery_scheduled_visit':'21-7-2013','patientaddressstate':'Chicago','patientLastname':'Hex','timeCompleted':'3 months','infoProviderSurgeonAddressPrimaryState':'113 western road Hampton','patientPhoneAlt':'88896678','reportvarstitle':'versatile','infoProviderOtherAddressPrimaryState':'na','targetBmi':'n/a','dob':'09-09-1990','infoProviderSurgeonAddressPrimaryCity':'Newyork','infoProviderOtherPhoneBest':'na','patientPhoneAlt2':'77777898865','surveyId':'2'}";
      
       ArrayList<NameValuePair> postParameters;
       postParameters = new ArrayList<NameValuePair>();
       postParameters.add(new BasicNameValuePair("jsondatasource", "{'XNID':'1','patientPhoneBest':'77722777','patientaddresscity':'Calfurniya','extraDonorInfo':'na','preferredContactTime':'10:20','pat_date':'14-12-2012','datetimeLast_updated':'10-7-2013','age':'22','gender':'mail','infoPcpcity':'Newyork','provider_fullname':'Robert whatman','timePat_visit':'10:30','preferredContactDay':'monday','patientFirstname':'Johna','infoProviderOtherFullname':'N/A','infoPcpstate':'yark shayar','bloodtype':'B','datePat_visit':'10-7-2013','patient_surgery_date':'9-10-2013','patientAddressZip':'667444','email':'abc@abc.com','recipientdob':'09-09-1990','patientHeightInches':'73','procedureId':'5','timeSurgery_scheduled_visit':'11:30','infoProviderSurgeonPhoneBest':'7779646684','initialScreenSummary':'Screened','infoPcpname':'Rozer','mrn':'07','infoPcphone':'99867788','userReviewed_by':'Reviewer','infoProviderSurgeonFullname':'Williyum terner','patientWeightPounds':'100','patientHeightFeet':'6','recipientname':'Raaz','infoProviderOtherAddressPrimaryCity':'na','patientAddressStreet':'113 western2 road Hampton','dateSurgery_scheduled_visit':'21-7-2013','patientaddressstate':'Chicago','patientLastname':'Hex','timeCompleted':'3 months','infoProviderSurgeonAddressPrimaryState':'113 western road Hampton','patientPhoneAlt':'88896678','reportvarstitle':'versatile','infoProviderOtherAddressPrimaryState':'na','targetBmi':'n/a','dob':'09-09-1990','infoProviderSurgeonAddressPrimaryCity':'Newyork','infoProviderOtherPhoneBest':'na','patientPhoneAlt2':'77777898865','surveyId':'2'}"));
       
     //  StringEntity input = new StringEntity(jsondatasource);
      
     //   post.setEntity(input);
        
       // System.out.print(input.toString());
       
       
       post.setEntity(new UrlEncodedFormEntity(postParameters));
        HttpResponse response = client.execute(post);
        BufferedReader rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
        String line = "";
        while ((line = rd.readLine()) != null) {
            System.out.println(line);
        }
    }
}