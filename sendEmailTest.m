props = java.lang.System.getProperties;
setpref('Internet','SMTP_Server','smtp.yopmail.com');
setpref('Internet','E_mail','testingemailsmatlab@yopmail.com');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');
sendmail('txkasl727@gmail.com','Sup my Dude!');