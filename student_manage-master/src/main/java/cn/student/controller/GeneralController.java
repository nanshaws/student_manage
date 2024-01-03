package cn.student.controller;

import cn.student.core.annotation.StudentOptLog;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@RestController
public class GeneralController {

    /**
     * 上传文件
     */
    @PostMapping("/toUpdate.action")
    @StudentOptLog("上传文件")
    public String toUpdate(@RequestParam("file") MultipartFile file) {
        if (file.isEmpty()) {
            return "请选择文件";
        }
        String fileName = file.getOriginalFilename();
        String filePath = "D:\\work\\student_manage-master (1)\\student_manage-master\\src\\main\\resources\\update"; // 设置文件保存路径
        File dest = new File(filePath + fileName);
        try {
            file.transferTo(dest); // 将文件保存到指定路径
        } catch (IOException e) {
            e.printStackTrace();
            return "文件上传失败";
        }
        return "文件上传成功";
    }

    @GetMapping("/sayHello")
    public String SayHello() {
      return "Hello";
    }

}
