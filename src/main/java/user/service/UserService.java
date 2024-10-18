package user.service;

import user.bean.UserDTO;

public interface UserService {
    String register(UserDTO userDTO);
    boolean isIdExists(String id);    
    String sendVerificationEmail(String email);
    
    UserDTO login(String id, String pwd);
    String verifyCode(String email, String verificationCode);
    
    void updateName(UserDTO user) throws Exception;
    void updatePassword(String userId, String newPassword) throws Exception;
    boolean verifyPassword(String userId, String password) throws Exception;
    void deleteUser(String userId) throws Exception;
    boolean isSocialPassword(String userId);
    
}