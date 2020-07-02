package cn.tx.query;

import cn.tx.model.Songer;

public class SongerQuery extends Songer {


    private Integer pageSize = 5;

    private Integer pageNo;

    private Integer startNum;

    //前台页码
    private Integer pageNoPortal = 1;

    public Integer getPageNoPortal() {
        return pageNoPortal;
    }

    public void setPageNoPortal(Integer pageNoPortal) {
        this.pageNoPortal = pageNoPortal;
    }


    public Integer getStartNum() {
        return startNum;
    }

    public void setStartNum(Integer startNum) {
        this.startNum = startNum;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }
}
