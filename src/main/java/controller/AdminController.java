package controller;

import entity.Message;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import repository.MessageRepository;
import repository.StudentRepository;
import repository.UserRepository;
import service.UserService;


import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private MessageRepository messageRepository;

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @GetMapping("/dashboard")
    public String dashboard(Model model){
        long totalStudents =
                studentRepository.count();
        System.out.println("total students" + totalStudents);

        model.addAttribute(
                "totalStudents",
                totalStudents
        );
        long totalTeachers= userRepository.count();
        System.out.println("total students" + totalStudents);

        model.addAttribute(
                "totalTeachers",
                totalTeachers
        );


        model.addAttribute(
                "students",
                studentRepository.findAll()
        );


        model.addAttribute(
                "users",
                userRepository.findAll()
        );


        return "adminDashboard";
    }

    @GetMapping("/message")
    public String getMessage(){
        return "adminMessage";
    }

    @PostMapping("/sendMessage")
    public String sendMsg(@ModelAttribute Message msg, Model model) {

        msg.setLocalDateTime(LocalDateTime.now());

        messageRepository.save(msg);

        model.addAttribute("success", "Message sent successfully!");

        return "adminDashboard";
    }


    @GetMapping("/teacherss")
    public String getAllStudents(Model model) {

        List<User> users = userService.getAllUsers();

        model.addAttribute("users", users);

        return "teacher-list";
    }
}
