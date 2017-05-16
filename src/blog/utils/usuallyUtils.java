package blog.utils;

import java.util.Properties;
import java.util.UUID;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class usuallyUtils {

	public static void sendEmail() throws Exception{
		Properties prop = new Properties();
		prop.setProperty("mail.transport.protocol", "smtp"); //协议
		prop.setProperty("mail.smtp.host", "smtp.163.com"); //主机名
		prop.setProperty("mail.smtp.auth", "true"); //是否开启权限控制
		prop.setProperty("mail.debug", "true"); //返回发送的cmd源码
		Session session = Session.getInstance(prop);
		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress("*****@163.com")); //自己的email
		msg.setRecipient(RecipientType.TO, new InternetAddress("****@qq.com")); // 要发送的email，可以设置数组
		msg.setSubject("公司公开信");              //邮件标题
		msg.setText("请你于4:30到办公室开会");    //邮件正文
		//不被当作垃圾邮件的关键代码--Begin ，如果不加这些代码，发送的邮件会自动进入对方的垃圾邮件列表
		msg.addHeader("X-Priority", "3"); 
		msg.addHeader("X-MSMail-Priority", "Normal"); 
		msg.addHeader("X-Mailer", "Microsoft Outlook Express 6.00.2900.2869"); //本文以outlook名义发送邮件，不会被当作垃圾邮件 
		msg.addHeader("X-MimeOLE", "Produced By Microsoft MimeOLE V6.00.2900.2869"); 
		msg.addHeader("ReturnReceipt", "1"); 
		//不被当作垃圾邮件的关键代码--end
		Transport trans = session.getTransport(); 
		trans.connect("***", "*****"); // 邮件的账号密码
		trans.sendMessage(msg, msg.getAllRecipients());
	}
	
	//生产UUID
		public static String uuid(){
			UUID uuid = UUID.randomUUID();
			return uuid.toString().replace("-", "");
		}
}
