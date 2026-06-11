package controller;

import entity.Notice;
import entity.Student;
import entity.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import repository.NoticeRepository;
import repository.StudentRepository;
import service.StudentService;

import java.util.List;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private NoticeRepository noticeRepository;

    @GetMapping("/studentDashboard")
    public String home(HttpSession session, Model model) {

        Student sessionStudent =
                (Student) session.getAttribute("loggedInStudent");

        if (sessionStudent == null) {
            return "redirect:/login";
        }

        Student student =
                studentRepository.findById(
                        sessionStudent.getId()
                ).orElseThrow();

        double attendancePercentage =
                studentService.calculateAttendancePercentage(
                        student.getId()
                );

        List<Notice> notices =
                studentService.getLatestNotices();

        System.out.println("===========");
        System.out.println("Notices fetched: " + notices);
        System.out.println("Size: " + notices.size());
        System.out.println("===========");
        for (Notice n : notices) {
            System.out.println("Message = " + n.getMessage());
        }

        model.addAttribute("notices", notices);


        model.addAttribute("student", student);
        model.addAttribute("attendancePercentage",
                attendancePercentage);

        model.addAttribute("notices", notices);

        return "studentDashboard";
    }


    @GetMapping("/getAll")
    public String getAllStudents(Model model) {

        List<Student> students = studentRepository.findAll();

        model.addAttribute("students", students);

        return "allStudents";
    }


    @GetMapping("/profile")
    public String profile(
            HttpSession session,
            Model model) {

        Student sessionStudent =
                (Student) session.getAttribute(
                        "loggedInStudent"
                );

        if (sessionStudent == null) {
            return "redirect:/login";
        }

        Student student =
                studentRepository.findById(
                        sessionStudent.getId()
                ).orElse(null);

        model.addAttribute("student", student);

        session.setAttribute(
                "loggedInStudent",
                student
        );

        return "studentProfile";
    }


    @GetMapping("/profile/edit/{id}")
    public String editProfile(@PathVariable("id") Long id,
                              HttpSession session,
                              Model model) {

        User teacher =
                (User) session.getAttribute("loggedInTeacher");


//        if (teacher != null) {
//
//            Student student =
//                    studentRepository.findById(id)
//                            .orElseThrow();
//
//            model.addAttribute("student", student);
//
//            return "editProfile";
//        }

        Student loggedInStudent =
                (Student) session.getAttribute("loggedInStudent");

        if (loggedInStudent == null) {
            return "redirect:/login";
        }

        if (!loggedInStudent.getId().equals(id)) {
            return "redirect:/profile";
        }

        if (loggedInStudent.isProfileCompleted()) {
            return "redirect:/profile";
        }

        model.addAttribute("student", loggedInStudent);

        return "editProfile";
    }

    @PostMapping("/profile/update")
    public String updateProfile(@ModelAttribute Student formStudent,
                                HttpSession session) {

        Student student =
                (Student) session.getAttribute("loggedInStudent");

        if (student == null) {
            return "redirect:/login";
        }

        if (student.isProfileCompleted()) {
            return "redirect:/profile";
        }

        studentService.storeStudent(student, formStudent);

        return "redirect:/profile";
    }

    @GetMapping("/allNotice")
    public String getNotice(Model model) {

        List<Notice> notices = noticeRepository
                .findAllByOrderByLocalDateTimeDesc();

        model.addAttribute("notices", notices);

        return "notice";
    }
}
