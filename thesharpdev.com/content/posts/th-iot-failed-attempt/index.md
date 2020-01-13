![AWS_IOT](images/aws_iot.png)

The first thing you need to do is register the device. You download a package from AWS with certs and a script. Run the script and you're registered. Off to a great start :) 

Next I wanted to set up a Python script to send the data. This is where things started to get confusing. The examples out of the box didn't work. I received a "Connection Failed" error. Alright, so I must have copied the code wrong. After about 30 minutes of combing the code I couldn't find the problem, so off to Google. Turns out you need to add the "client" (device) to the Policy file allowing it to connect. AWS has Policy files which control the access to different actions within AWS.  