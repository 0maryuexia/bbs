package javaClass;

import java.util.Date;

/**
 * Created by Administrator on 2017/6/14 0014.
 */
public class article {

    private int rootid;
    private String title;
    private String cont;
    private Date pDate;
    private boolean isLeaf;

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

    private int id;
    private int pid;

    public void setId(int id) {
        this.id = id;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setRootid(int rootid) {
        this.rootid = rootid;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setCont(String cont) {
        this.cont = cont;
    }

    public void setpDate(Date pDate) {
        this.pDate = pDate;
    }

    public void setLeaf(boolean leaf) {
        isLeaf = leaf;
    }


}
