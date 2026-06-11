package service;

import entity.Notice;
import entity.Student;
import repository.NoticeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repository.StudentRepository;

import java.util.List;

@Service
public class StudentService{

    @Autowired
    private NoticeRepository noticeRepository;

    @Autowired
    private StudentRepository studentRepository;

    public Student saveStudent(Student student) {
        return studentRepository.save(student);
    }

    public double calculateAttendancePercentage(Long studentId) {

        Student student = studentRepository
                .findById(studentId)
                .orElseThrow();

        Long presentDays = student.getPresentDays();
        Long absentDays = student.getAbsentDays();

        if (presentDays == null) {
            presentDays = 0L;
        }

        if (absentDays == null) {
            absentDays = 0L;
        }

        long totalDays = presentDays + absentDays;

        if (totalDays == 0) {
            return 0.0;
        }

        return (presentDays * 100.0) / totalDays;
    }

    public List<Notice> getAll() {

        return noticeRepository.findAll();
    }
    public List<Notice> getLatestNotices() {

        return noticeRepository.findTop3ByOrderByIdDesc();
    }

    public void storeStudent(Student student,
                            Student formStudent) {

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
        System.out.println("DOB received = " +
                formStudent.getDateOfBirth());
        student.setDateOfBirth(formStudent.getDateOfBirth());

        student.setProfileCompleted(true);

        studentRepository.save(student);
    }
}
