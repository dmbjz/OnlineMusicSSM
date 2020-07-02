package cn.tx.model;

public class Song {
    private Integer sid;

    private Integer tid;

    private Integer srid;

    private Integer aid;

    private String sname;

    private String pic;

    private String mp3;

    private Integer isHot;

    private Integer isNew;

    private Integer ptimes;

    private Integer auditStatus;

    private Integer showStatus;

    private String lrc;

    private Mtype mtype;

    private Songer songer;

    private Album album;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public Integer getSrid() {
        return srid;
    }

    public void setSrid(Integer srid) {
        this.srid = srid;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public String getMp3() {
        return mp3;
    }

    public void setMp3(String mp3) {
        this.mp3 = mp3 == null ? null : mp3.trim();
    }

    public Integer getIsHot() {
        return isHot;
    }

    public void setIsHot(Integer isHot) {
        this.isHot = isHot;
    }

    public Integer getIsNew() {
        return isNew;
    }

    public void setIsNew(Integer isNew) {
        this.isNew = isNew;
    }

    public Integer getPtimes() {
        return ptimes;
    }

    public void setPtimes(Integer ptimes) {
        this.ptimes = ptimes;
    }

    public Integer getAuditStatus() {
        return auditStatus;
    }

    public void setAuditStatus(Integer auditStatus) {
        this.auditStatus = auditStatus;
    }

    public Integer getShowStatus() {
        return showStatus;
    }

    public void setShowStatus(Integer showStatus) {
        this.showStatus = showStatus;
    }

    public String getLrc() {
        return lrc;
    }

    public void setLrc(String lrc) {
        this.lrc = lrc == null ? null : lrc.trim();
    }

    public Mtype getMtype() {
        return mtype;
    }

    public void setMtype(Mtype mtype) {
        this.mtype = mtype;
    }

    public Songer getSonger() {
        return songer;
    }

    public void setSonger(Songer songer) {
        this.songer = songer;
    }

    public Album getAlbum() {
        return album;
    }

    public void setAlbum(Album album) {
        this.album = album;
    }

    @Override
    public String toString() {
        return "Song{" +
                "sid=" + sid +
                ", tid=" + tid +
                ", srid=" + srid +
                ", aid=" + aid +
                ", sname='" + sname + '\'' +
                ", pic='" + pic + '\'' +
                ", mp3='" + mp3 + '\'' +
                ", isHot=" + isHot +
                ", isNew=" + isNew +
                ", ptimes=" + ptimes +
                ", auditStatus=" + auditStatus +
                ", showStatus=" + showStatus +
                ", lrc='" + lrc + '\'' +
                ", mtype=" + mtype +
                ", songer=" + songer +
                ", album=" + album +
                '}';
    }
}