Set emailObj      = CreateObject("CDO.Message")
emailObj.From     = "automatedscan@test.com"
emailObj.To       = "magdel.cilliers@performanta.com"
emailObj.Subject  = "Scan results Test 4"
emailObj.TextBody = "Please see attached"

emailObj.AddAttachment "C:\projects\sql-project\CX\Test4.pdf"

Set emailConfig = emailObj.Configuration

emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com"
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpusessl")      = true 
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusername")    = "magzTheDev@gmail.com"
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendpassword")    = "Verysecurepass"
emailConfig.Fields.Update

emailObj.Send
