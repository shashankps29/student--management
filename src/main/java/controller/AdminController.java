package controller;

import entity.Message;
import entity.Notice;
import entity.Student;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import repository.MessageRepository;
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
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

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
