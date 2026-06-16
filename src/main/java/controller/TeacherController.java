package controller;

import entity.Message;
import entity.Notice;
import entity.Student;

import entity.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;

import repository.MessageRepository;
import repository.NoticeRepository;
import repository.StudentRepository;
import repository.UserRepository;
import service.StudentService;
import service.UserService;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private NoticeRepository noticeRepository;

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @Autowired
    private MessageRepository messageRepository;

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

    @GetMapping("/students")
    public String getAllStudents(Model model) {

        List<Student> students = studentService.getAllStudents();

        model.addAttribute("students", students);

        return "student-list";
    }

    @GetMapping("/editStudent/{id}")
    public String editStudent(@PathVariable("id") Long id, Model model) {

        Student student = studentService.getStudentById(id);

        model.addAttribute("student", student);

        return "editProfileByTeacher";
    }

    @PostMapping("/updateStudent")
    public String updateStudent(@ModelAttribute Student formStudent) {

        Student student = studentRepository.findById(formStudent.getId())
                .orElseThrow(() -> new RuntimeException("Student not found"));

        student.setName(formStudent.getName());
        student.setEmail(formStudent.getEmail());
        student.setBranch(formStudent.getBranch());
        student.setSection(formStudent.getSection());
        student.setCourse(formStudent.getCourse());
        student.setContact(formStudent.getContact());
        student.setGender(formStudent.getGender());
        student.setAddressLine1(formStudent.getAddressLine1());
        student.setAddressLine2(formStudent.getAddressLine2());
        student.setCity(formStudent.getCity());
        student.setState(formStudent.getState());
        student.setPincode(formStudent.getPincode());
        student.setFatherName(formStudent.getFatherName());
        student.setFatherContact(formStudent.getFatherContact());
        student.setFatherOccupation(formStudent.getFatherOccupation());
        student.setMotherName(formStudent.getMotherName());
        student.setMotherOccupation(formStudent.getMotherOccupation());
        student.setGuardianName(formStudent.getGuardianName());
        student.setGuardianContact(formStudent.getGuardianContact());
        student.setDateOfBirth(formStudent.getDateOfBirth());

        studentRepository.save(student);

        return "redirect:/teacher/students";
    }

    @GetMapping("/getAdminMsg")
    public String getMsg(Model model) {

        List<Message> messages = messageRepository.findAll();
        System.out.println("====" + messages);

        model.addAttribute("messages", messages);

        return "adminMessage";
    }
}