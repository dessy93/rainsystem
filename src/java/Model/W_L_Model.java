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
public class W_L_Model {
    int id;
    String site;
    float number;
    float warning;
    String time;

    public W_L_Model(int id, String site, float number, float warning,String time) {
        this.id = id;
        this.site = site;
        this.number = number;
        this.warning = warning;
        this.time = time;
    }
    
      public float getWarning() {
        return warning;
    }

    public void setWarning(float warning) {
        this.warning = warning;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public float getNumber() {
        return number;
    }

    public void setNumber(float number) {
        this.number = number;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
