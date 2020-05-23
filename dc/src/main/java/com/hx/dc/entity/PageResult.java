package com.hx.dc.entity;

import java.util.List;

/**
 * Created by zcf on 2020/5/8.
 */
public class PageResult<T> {
    private Long total;
    private List<T> rows;
    public PageResult() {}
    public PageResult(Long total, List<T> rows) {
        super();
        this.total = total;
        this.rows = rows;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
