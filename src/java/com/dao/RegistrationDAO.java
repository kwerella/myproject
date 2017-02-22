/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.entity.Registration;
import java.util.List;

/**
 *
 * @author oltuser05
 */
public interface RegistrationDAO {
 
    Registration get(int UserId);
     List<Registration> getAll();
    void delete(int UserId);
    void insert(Registration registration);
    void update(Registration registration);
}
