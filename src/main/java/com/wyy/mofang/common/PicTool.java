package com.wyy.mofang.common;

import org.springframework.util.ResourceUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Random;

public class PicTool {
    public static String picDir = "/root/mofang/img/";
    private static String url = "/userImages/";
    private static Random random = new Random();



    public static String save(MultipartFile file) {
        if (file == null || file.isEmpty()) return "";

        String path = picDir;
        String filename = System.currentTimeMillis() + random.nextInt(100000) + ".jpg";

        File filepath = new File(path, filename);
        //判断路径是否存在，如果不存在就创建一个
        if (!filepath.getParentFile().exists()) {
            filepath.getParentFile().mkdirs();
        }
        //将上传文件保存到一个目标文件当中
        try {
            file.transferTo(new File(path + File.separator + filename));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return url + filename;
    }
}
