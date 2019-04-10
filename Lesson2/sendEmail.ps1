$From = ""
$To = "hcykl4@nottingham.edu.my"
$Subject = "Here's the Email Subject"
$Body = "This is what I want to say"
$SMTPServer = "smtp.live.com"
$SMTPPort = "587"
Send-MailMessage -From $From -to $To -Subject $Subject -Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential (Get-Credential) –DeliveryNotificationOption OnSuccess