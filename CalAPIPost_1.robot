# Created by    CcKannika

*** Settings ***
Library    Helper.py


*** Test Cases ***
Log Testcase
    Log To Console	Call Service API POST (Data test on Excel file)

  

Call Service Price
    ${get_date}=    get_date
    ${get_timestamp}=     get_timestamp
    ${datatest}=  get data test case    ${DataTable}    ${sheetName}     ${testcaseName}
    &{searchJsonData}=       Set Variable    ${datatest}[Json Data]    
    Set To Dictionary       ${searchJsonData['headerInfo']}  transactionCreatedDate  ${get_timestamp}
    Set To Dictionary       ${searchJsonData['itemInfo'][0]}  loadDate  ${get_date}
    Set To Dictionary       ${searchJsonData['itemInfo'][0]}  checkDate  ${get_timestamp}
    Set To Dictionary       ${searchJsonData['itemInfo'][0]}  itemCreatedDate  ${get_timestamp}
    Set To Dictionary       ${searchJsonData['itemInfo'][0]}  itemUpdatedDate  ${get_timestamp}
    Set To Dictionary       ${searchJsonData['itemInfo'][0]}  etd  ${get_date}

    &{headers}=     Create Dictionary    Content-Type=application/json      authorization=${tokenApi}
    Create Session    api    URL
    ${resp}=        POST Request    api    ${URL/URL Path}    data=&{searchJsonData}       headers=${headers}
    Log To Console      ${resp.text}   





	
    

    
