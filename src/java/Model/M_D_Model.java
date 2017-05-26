/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Administrator
 */
public class M_D_Model {
    int id;
    String name;
    String unit;
    int number;
    String staff;
    String staffphone;
    String storehouse;

    public M_D_Model(int id, String name, String unit, int number, String staff, String staffphone, String storehouse) {
        this.id = id;
        this.name = name;
        this.unit = unit;
        this.number = number;
        this.staff = staff;
        this.staffphone = staffphone;
        this.storehouse = storehouse;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getStaff() {
        return staff;
    }

    public void setStaff(String staff) {
        this.staff = staff;
    }

    public String getStaffphone() {
        return staffphone;
    }

    public void setStaffphone(String staffphone) {
        this.staffphone = staffphone;
    }

    public String getStorehouse() {
        return storehouse;
    }

    public void setStorehouse(String storehouse) {
        this.storehouse = storehouse;
    }
}
