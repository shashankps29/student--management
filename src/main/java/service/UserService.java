package service;

import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import repository.UserRepository;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;


    public User login(String email, String password){

        return userRepository.findByEmailAndPassword(email, password);
    }


    public void storeTeacherProfile(User user,
                                    User formUser) {


        user.setContact(formUser.getContact());
        user.setGender(formUser.getGender());
        user.setDateOfBirth(formUser.getDateOfBirth());
        user.setBloodGroup(formUser.getBloodGroup());
        user.setQualification(formUser.getQualification());
        user.setSpecialization(formUser.getSpecialization());
        user.setExperience(formUser.getExperience());
        user.setDesignation(formUser.getDesignation());
        user.setBranch(formUser.getBranch());
        user.setDomain(formUser.getDomain());
        user.setJoiningDate(formUser.getJoiningDate());
        user.setAddressLine1(formUser.getAddressLine1());
        user.setAddressLine2(formUser.getAddressLine2());
        user.setCity(formUser.getCity());
        user.setState(formUser.getState());
        user.setPincode(formUser.getPincode());
        user.setEmergencyContact(formUser.getEmergencyContact());
        user.setProfileCompleted(true);
        userRepository.save(user);
    }
    public List<User> getAllUsers() {

        return userRepository.findByRoleNot("ADMIN");
    }
}
