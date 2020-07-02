package cn.tx.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Album {
    private Integer aid;

    private String aname;

    private String pic;

    private String company;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pdate;

    private String lang;

    //服务器路径
    private String filePath;

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname == null ? null : aname.trim();
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang == null ? null : lang.trim();
    }

    @Override
    public String toString() {
        return "Album{" +
                "aid=" + aid +
                ", aname='" + aname + '\'' +
                ", pic='" + pic + '\'' +
                ", company='" + company + '\'' +
                ", pdate=" + pdate +
                ", lang='" + lang + '\'' +
                ", filePath='" + filePath + '\'' +
                '}';
    }
}