
 
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
        <form action="report/report" method="POST">
        <table>
        <tr>
        <td align="center">
Enter A Json String To Generate Pdf 
        </td>
        </tr>
        <tr>
        
        <td>
      <textarea rows="" name="jsondatasource" cols="" style="height: 240px;  width: 800px">

{"rx_summary_detail_value":"Marizuana2","rx_summary_detail_order":"9911","rx_summary_detail_id":"1","rx_summary_detail_surveyId":"1",

"surgery_name_detail_value":"marizuana3","surgery_name_detail_key":"2","surgery_name_detail_id":"1","surgery_name_detail_order":"9911","surgery_name_detail_surveyId":"1",

"allergy_rx_summary_detail_order":"9911","allergy_rx_summary_detail_id":"1","allergy_rx_summary_detail_surveyId":"1","allergy_rx_summary_detail_value":"Marizuana4",

"hx_detail_surveyId":"1","hx_detail_key":"2","hx_detail_order":"9911","hx_detail_value":"Marijuana","hx_detail_id":"1",

"rx_summary_detail_value":"Marizuana2","rx_summary_detail_order":"9911","rx_summary_detail_id":"1","rx_summary_detail_surveyId":"1",


"family_history_cltSummary":"na","secros_positive":" Positive ","secros_negative":"  ","patient_detail_targetBmi":"n/a","infoProviderSurgeonPhoneBest":"7779646684","social_history_srfsStatus":"StfsStatusTrue","preferredContactTime":"10:20","social_history_socialhxEtohFreq":"yesFreq","infoPcpname":"Rozer","infoPcphone":"99867788","patient_detail_gender":"mail","patient_detail_dob":"09-09-1990","patient_detail_surveyId":"1","social_history_socialhxTobacco":"yesTobaco","patient_detail_patientHeightInches":"73","patient_detail_patientHeightFeet":"6","infoProviderSurgeonFullname":"Williyum terner","patient_detail_age":"22","patient_detail_patientAddressStreet":"113 western2 road Hampton","social_history_srfsExercise":"good","social_history_socialhxIllicitdrugs":"yesDrugs","patient_detail_reviewdate":"13-07-2012  ","patient_detail_patientaddresscity":"Calfurniya","patient_detail_mrn":"07","preferredContactDay":"monday","patient_detail_patientPhoneBest":"77722777","patient_detail_patientaddressstate":"Chicago","patient_detail_email":"abc@abc.com","infoProviderOtherFullname":"N/A","family_history_colonDiseaseSummary":"good","patient_detail_reportvarstitle":"versatile","patient_detail_patientAddressZip":"667444","timeCompleted":"3 months","social_history_family_history_abnormalbleeding":"na","patient_detail_patientWeightPounds":"100","patient_detail_patientLastname":"Hex","patient_detail_patientPhoneAlt":"88896678","patient_detail_patientFirstname":"Johna","patient_detail_reportvarssubtitle":"  ","social_history_family_history_malignanthyperthermia":"na","patient_detail_reviewsignature":"  ","social_history_socialhxEtohAbuse":"yesAbuse","patient_detail_surveysupplementalinfo":" There is No Additional note ","family_history_ldSummary":"na","anesthesiaissuesSummary":"anesthesious","infoProviderOtherPhoneBest":"na"


} 
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
        
        
      
    </body>
</html>