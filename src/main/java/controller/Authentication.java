package controller;

import entity.Student;
import entity.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import repository.NoticeRepository;
import repository.StudentRepository;
import repository.UserRepository;
import service.UserService;

@Controller
public class Authentication {
    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private NoticeRepository noticeRepository;

    @Autowired
    private StudentRepository studentRepository;


    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(

            @RequestParam("email") String email,

            @RequestParam("password") String password,

            HttpSession session,

            Model model
    ) {
//
//        Student student =
//                (Student) session.getAttribute("loggedInStudent");



        User user = userRepository.findByEmail(email);

        if (user != null) {



            if (!passwordEncoder.matches(
                    password,
                    user.getPassword()
            )) {

                model.addAttribute(
                        "error",
                        "Invalid Password"
                );


                return "login";
            }

            session.setAttribute("loggedInUser", user);

            model.addAttribute(
                    "userName",
                    user.getName()
            );

            model.addAttribute(
                    "role",
                    user.getRole()
            );


            if (user.getRole()
                    .equalsIgnoreCase("ADMIN")) {

                return "redirect:/admin/dashboard";
            }
            else {
                return "redirect:/teacher/dashboard";
            }
        }
        Student student =
                studentRepository.findByEmail(email);

        if (student != null) {

            if (!passwordEncoder.matches(
                    password,
                    student.getPassword()
            )) {

                model.addAttribute(
                        "error",
                        "Invalid Password"
                );

                return "login";
            }

            session.setAttribute(
                    "loggedInStudent",
                    student
            );

            model.addAttribute(
                    "userName",
                    student.getName()
            );
            return "redirect:/studentDashboard";
        }

        model.addAttribute(
                "error",
                "User Not Found"
        );

        return "login";
    }


    @GetMapping("/register")
    public String register() {

        return "register";
    }

    @PostMapping("/register")
    public String registerUser(

            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("confirmPassword") String confirmPassword,

            Model model
    ) {

        if (!password.equals(confirmPassword)) {

            model.addAttribute(
                    "error",
                    "Passwords Do Not Match"
            );

            return "register";
        }
        if (email.equalsIgnoreCase("admin@gmail.com")
                || email.contains(".teacher@")) {

            User existingUser =
                    userRepository.findByEmail(email);

            if (existingUser != null) {

                model.addAttribute(
                        "error",
                        "Email Already Registered"
                );

                return "register";
            }

            User user = new User();

            user.setName(name);

            user.setEmail(email);

            user.setPassword(
                    passwordEncoder.encode(password)
            );

            if (email.equalsIgnoreCase("admin@gmail.com")) {

                user.setRole("ADMIN");
            }

            else {

                user.setRole("TEACHER");
            }

            userRepository.save(user);
        }


        else {

            Student existingStudent =
                    studentRepository.findByEmail(email);

            if (existingStudent != null) {

                model.addAttribute(
                        "error",
                        "Email Already Registered"
                );

                return "register";
            }

            Student student = new Student();

            student.setName(name);

            student.setEmail(email);

            student.setPassword(
                    passwordEncoder.encode(password)
            );

            studentRepository.save(student);
        }

        model.addAttribute(
                "success",
                "Registration Successful"
        );

        return "login";
    }
}


