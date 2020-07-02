package cn.tx.controller;

import cn.tx.util.PropUtil;
import com.alibaba.fastjson.JSONObject;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("upload")
public class UploadController {


    @RequestMapping("uploadFile")
    public void uploadFile(HttpServletRequest request, HttpServletResponse response, String lastImg, String fileType) throws IOException {
        //转换request
        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) request;
        //获得存储文件的map
        Map<String, MultipartFile> fileMap = mr.getFileMap();
        //获得文件
        MultipartFile pic = fileMap.get("picfile");
        //获得文件的字节
        byte[] bytes = pic.getBytes();

        //处理文件名字
        String originalFilename = pic.getOriginalFilename();
        //获得后缀
        String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
        //定义一个命名文件的规则
        String fileName = UUID.randomUUID().toString();
        fileName = fileName + suffix;

        //获得文件服务器路径
        String filePath = PropUtil.read("filePath");
        //文件的上传的绝对路径
        String realPath = filePath+"/"+fileType+"/"+fileName;
        //文件的相对路径
        String relativePath = "/"+fileType+"/"+fileName;
        //创建jersy客户端
        Client client = Client.create();

        if(lastImg != null && !"".equals(lastImg)){
            WebResource resource1 = client.resource(lastImg);
            resource1.delete();
        }

        //获得web资源对象
        WebResource resource = client.resource(realPath);
        //上传
        resource.put(bytes);
        JSONObject jo = new JSONObject();
        jo.put("realPath", realPath);
        jo.put("relativePath", relativePath);
        response.getWriter().write(jo.toString());

    }


    @RequestMapping("uploadFileMp3")
    public void uploadFileMp3(HttpServletRequest request, HttpServletResponse response, String lastMp3, String fileType) throws IOException {
        //转换request
        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) request;
        //获得存储文件的map
        Map<String, MultipartFile> fileMap = mr.getFileMap();
        //获得文件
        MultipartFile pic = fileMap.get("mp3file");
        //获得文件的字节
        byte[] bytes = pic.getBytes();

        //处理文件名字
        String originalFilename = pic.getOriginalFilename();
        //获得后缀
        String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
        //定义一个命名文件的规则
        String fileName = UUID.randomUUID().toString();
        fileName = fileName + suffix;

        //获得文件服务器路径
        String filePath = PropUtil.read("filePath");
        //文件的上传的绝对路径
        String realPath = filePath+"/"+fileType+"/"+fileName;
        //文件的相对路径
        String relativePath = "/"+fileType+"/"+fileName;
        //创建jersy客户端
        Client client = Client.create();

        if(lastMp3 != null && !"".equals(lastMp3)){
            WebResource resource1 = client.resource(lastMp3);
            resource1.delete();
        }

        //获得web资源对象
        WebResource resource = client.resource(realPath);
        //上传
        resource.put(bytes);
        JSONObject jo = new JSONObject();
        jo.put("realPath", realPath);
        jo.put("relativePath", relativePath);
        response.getWriter().write(jo.toString());

    }
}
