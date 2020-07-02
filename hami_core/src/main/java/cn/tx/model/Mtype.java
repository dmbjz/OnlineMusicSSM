package cn.tx.model;


public class Mtype {
    private Integer tid;

    private String tname;

    private String tdesc;

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public String getTdesc() {
        return tdesc;
    }

    public void setTdesc(String tdesc) {
        this.tdesc = tdesc == null ? null : tdesc.trim();
    }


    @Override
    public String toString() {
        return "Mtype{" +
                "tid=" + tid +
                ", tname='" + tname + '\'' +
                ", tdesc='" + tdesc + '\'' +
                '}';
    }
}