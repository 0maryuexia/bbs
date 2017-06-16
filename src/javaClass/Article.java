package javaClass;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/14 0014.
 */
public class Article {

    private int id;
    private int pid;
    private int rootid;
    private String title;
    private String cont;
    private Date pDate;
    private boolean isLeaf;
    private int grade;

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public int getGrade() {

        return grade;
    }

    public int getId() {
        return id;
    }

    public int getPid() {
        return pid;
    }

    public int getRootid() {
        return rootid;
    }

    public String getTitle() {
        return title;
    }

    public String getCont() {
        return cont;
    }

    public Date getpDate() {
        return pDate;
    }

    public boolean isLeaf() {
        return isLeaf;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setRootId(int rootid) {
        this.rootid = rootid;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setCont(String cont) {
        this.cont = cont;
    }

    public void setPdate(Date pDate) {
        this.pDate = pDate;
    }

    public void setLeaf(boolean leaf) {
        isLeaf = leaf;
    }


    public void initFromRs(ResultSet rs) {
        try {
            setId(rs.getInt("id"));
            setPid(rs.getInt("pid"));
            setRootId(rs.getInt("rootid"));
            setTitle(rs.getString("title"));
            setLeaf(rs.getInt("isleaf") == 0 ? true : false);
            setPdate(rs.getTimestamp("pdate"));
            setCont(rs.getString("cont"));
            setGrade(0);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
