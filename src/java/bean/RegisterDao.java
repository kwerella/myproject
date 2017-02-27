package bean;

import java.sql.*;

public class RegisterDao {

    public static int register(User u) {
        int status = 0;
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into user432 values(?,?,?,?,?,?,?)");
            ps.setInt(1, u.getUserid());
            ps.setString(2, u.getPassid());
            ps.setString(3, u.getUsername());
            ps.setString(4, u.getAddress());
            ps.setString(5, u.getCountry());
            ps.setInt(6, u.getZip());
            ps.setString(7, u.getEmail());
            status = ps.executeUpdate();
        } catch (Exception e) {
        }

        return status;
    }

}
