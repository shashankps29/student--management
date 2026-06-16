package controller;

import entity.Message;
import entity.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import repository.MessageRepository;


import java.time.LocalDateTime;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private MessageRepository messageRepository;

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
}
