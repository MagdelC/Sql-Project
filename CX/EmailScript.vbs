Set emailObj      = CreateObject("CDO.Message")
emailObj.From     = "magzTheDev@gmail.com"
emailObj.To       = "magdel.cilliers@performanta.com"
emailObj.Subject  = "Scan results Test 4"
emailObj.TextBody = "Please see attached"



Set emailConfig = emailObj.Configuration

emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com"
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 587
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing")    = 2  
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1  
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpusessl")      = true 
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusername")    = "magzTheDev@gmail.com"
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendpassword")    = "Verysecurepass"
emailConfig.Fields.Update


emailObj.Send

