package services;

import java.sql.SQLException;

public interface AdminService {

     boolean validateAdmin(String username, String password)throws SQLException;

     String updateAdmin(String username, int id) throws SQLException;


}
