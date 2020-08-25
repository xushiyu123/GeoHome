package iserver.controller;

import iserver.util.ResponseJson;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.File;
import java.io.UnsupportedEncodingException;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.*;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import java.util.Calendar;
import iserver.util.MailSenderInfo;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @program: GeoServer
 * @description: send mails
 * @author: XUSHIYU
 * @create: 2019-09-26 10:48
 */
@Controller
@RequestMapping(value = "/mail")
public class MailController {

    @RequestMapping(value = "send",method = RequestMethod.POST)
    @ResponseBody
    public ObjectNode getActiveAPI(@RequestParam(defaultValue = "") String address, HttpServletResponse response){
        ObjectNode responseJSON = ResponseJson.getResponseJSON();
        response.setContentType("charset=utf-8");
        if (address.length() > 0)
        {
            SendMail(address);
            responseJSON.put("address", address);
        }
        return responseJSON;
    }

    private void SendMail(String address)
    {
        MailSenderInfo mailInfo = new MailSenderInfo();
        mailInfo.setMailServerHost("smtp.qq.com");
        mailInfo.setMailServerPort("25");
        mailInfo.setValidate(true);
        mailInfo.setUserName("xushiyu");
        mailInfo.setPassword("kmxpnfouwkgvdadb");//授权码
        mailInfo.setFromAddress("1633813476@qq.com");
        mailInfo.setToAddress(address);
        mailInfo.setSubject("MyMail测试");
        mailInfo.setContent("我的邮件测试\n\rMy test mail\n\r");
        mailInfo.setMessageType("text/html;charset=UTF-8");
//        String[] fileNames = new String[1];
//        fileNames[0] = "H:/try.txt";
//        mailInfo.setAttachFileNames(fileNames);
    }

    private boolean Send(MailSenderInfo mailInfo) throws MessagingException,UnsupportedEncodingException
    {
        Properties props = new Properties();
        props.put("mail.smtp.host",mailInfo.getMailServerHost());
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true"); // 使用验证

        Session mailSession = Session.getInstance(props, new MyAuthenticator(
                mailInfo.getFromAddress(), mailInfo.getPassword()));
        InternetAddress fromAddress = new InternetAddress(mailInfo.getFromAddress());
        InternetAddress toAddress = new InternetAddress(mailInfo.getToAddress());

        MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(fromAddress);
        message.addRecipient(RecipientType.TO, toAddress);
        message.setSentDate(Calendar.getInstance().getTime());
        message.setSubject(mailInfo.getSubject());

        Multipart mainPart = new MimeMultipart();
        BodyPart body = new MimeBodyPart();
        body.setContent(mailInfo.getContent(),mailInfo.getMessageType());
        mainPart.addBodyPart(body);
//        for (int i = 0;i<mailInfo.getAttachFileNames().length;i++) {
//            MimeBodyPart attachment = new MimeBodyPart();
//            File file = new File(mailInfo.getAttachFileNames()[i]);
//            FileDataSource fds = new FileDataSource(file);
//            attachment.setDataHandler(new DataHandler(fds));
//            // 为附件设置文件名
//            attachment.setFileName(MimeUtility.encodeWord(
//                    file.getName(), "UTF-8", null));
//            mainPart.addBodyPart(attachment);
//        }
        message.setContent(mainPart);
        Transport transport = mailSession.getTransport("smtp");
        transport.connect(mailInfo.getMailServerHost(), mailInfo.getFromAddress(), mailInfo.getPassword());
        transport.send(message, message.getRecipients(RecipientType.TO));
        return true;
    }
}
