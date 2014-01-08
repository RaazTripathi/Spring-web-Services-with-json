
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h2> Sample report  with json Datasource</h2>
        <form action="rep" method="POST">
        <table>
        <tr>
        <td align="center">
Enter A Json String To Generate Pdf 
        </td>
        </tr>
        <tr>
        
        <td>
      <textarea rows="" name="jsonString" cols="" style="height: 240px;  width: 800px">{"XNID":"1","patientPhoneBest":"77722777","patientaddresscity":"Calfurniya","extraDonorInfo":"na","preferredContactTime":"10:20","pat_date":"14-12-2012","datetimeLast_updated":"10-7-2013","age":"22","gender":"mail","infoPcpcity":"Newyork","provider_fullname":"Robert whatman","timePat_visit":"10:30","preferredContactDay":"monday","patientFirstname":"Johna","infoProviderOtherFullname":"N/A","infoPcpstate":"yark shayar","bloodtype":"B","datePat_visit":"10-7-2013","patient_surgery_date":"9-10-2013","patientAddressZip":"667444","email":"abc@abc.com","recipientdob":"09-09-1990","patientHeightInches":"73","procedureId":"5","timeSurgery_scheduled_visit":"11:30","infoProviderSurgeonPhoneBest":"7779646684","initialScreenSummary":"Screened","infoPcpname":"Rozer","mrn":"07","infoPcphone":"99867788","userReviewed_by":"Reviewer","infoProviderSurgeonFullname":"Williyum terner","patientWeightPounds":"100","patientHeightFeet":"6","recipientname":"Raaz","infoProviderOtherAddressPrimaryCity":"na","patientAddressStreet":"113 western2 road Hampton","dateSurgery_scheduled_visit":"21-7-2013","patientaddressstate":"Chicago","patientLastname":"Hex","timeCompleted":"3 months","infoProviderSurgeonAddressPrimaryState":"113 western road Hampton","patientPhoneAlt":"88896678","reportvarstitle":"versatile","infoProviderOtherAddressPrimaryState":"na","targetBmi":"n/a","dob":"09-09-1990","infoProviderSurgeonAddressPrimaryCity":"Newyork","infoProviderOtherPhoneBest":"na","patientPhoneAlt2":"77777898865","surveyId":"2"}

      </textarea>
        </td>
        </tr>
        <td align="center">
        <input type="submit" value="submit">
        </td>
        </tr>
        </table>
        </form>
        </center>
        <div>
        </div>
        
        
        <br>
        <br>
       <br>
        <br> <br>
        <br>
        
        <div>
        <center> <a href="ucf_ucprepare_alert/" >View ucf_ucprepare_alert Report</a> </center>
        </div>
    </body>
</html>