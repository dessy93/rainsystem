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
public class S_D_Model {
    int id;
    String name;
    String tel;
    String army;

    public S_D_Model(int id, String name, String tel, String army) {
        this.id = id;
        this.name = name;
        this.tel = tel;
        this.army = army;
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

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getArmy() {
        return army;
    }

    public void setArmy(String army) {
        this.army = army;
    }
}
