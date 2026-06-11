package controller;

import entity.Notice;
import entity.Student;

import entity.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;

import repository.NoticeRepository;
import repository.StudentRepository;
import repository.UserRepository;
import service.UserService;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    private NoticeRepository noticeRepository;

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @GetMapping("/dashboard")
    public String dashboard(Model model){
        long totalStudents =
                studentRepository.count();
        System.out.println("total students" + totalStudents);

        model.addAttribute(
                "totalStudents",
                totalStudents
        );

        model.addAttribute(
                "students",
                studentRepository.findAll()
        );


        return "teacherDashboard";
    }

    @GetMapping("/profile")
    public String profile(HttpSession session,
                          Model model) {

        User sessionUser =
                (User) session.getAttribute("loggedInUser");

        if(sessionUser == null){
            return "redirect:/login";
        }

        User user =
                (User)userRepository.findById(sessionUser.getId())
                        .orElse(null);

        model.addAttribute("user", user);

        return "teacherProfile";
    }

    @PostMapping("/sendNotice")
    public String sendNotice(@ModelAttribute Notice notice, Model model) {

        notice.setLocalDateTime(LocalDateTime.now());

        noticeRepository.save(notice);

        model.addAttribute("success", "Notice sent successfully!");

        return "teacherDashboard";
    }

    @GetMapping("/profile/edit")
    public String editProfile(HttpSession session,
                              Model model) {

        User user =
                (User) session.getAttribute("loggedInUser");

        if(Boolean.TRUE.equals(user.getProfileCompleted())){
            return "redirect:/teacher/profile";
        }

        model.addAttribute("user", user);

        return "editTeacherProfile";
    }

    @PostMapping("/profile/update")
    public String updateProfile(@ModelAttribute User formUser,
                                HttpSession session) {

        User sessionUser =
                (User) session.getAttribute("loggedInUser");

        User user =
                (User) userRepository.findById(sessionUser.getId())
                        .orElse(null);
        if (user != null) {

            userService.storeTeacherProfile(user, formUser);

            session.setAttribute("loggedInUser", user);

            return "redirect:/teacher/profile";
        } else {
            return "login";
        }

    }
}