package model;

public class PagingVO {
    private int pageSize; 
    private int firstPageNo; 
    private int prevPageNo;
    private int startPageNo;
    private int pageNo;
    private int endPageNo;
    private int nextPageNo; 
    private int finalPageNo; // ������ ������ ��ȣ
    private int totalCount; // �Խ� �� ��ü ��

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

  
    public int getFirstPageNo() {
        return firstPageNo;
    }

   
    public void setFirstPageNo(int firstPageNo) {
        this.firstPageNo = firstPageNo;
    }

   
    public int getPrevPageNo() {
        return prevPageNo;
    }

    
    public void setPrevPageNo(int prevPageNo) {
        this.prevPageNo = prevPageNo;
    }

    
    public int getStartPageNo() {
        return startPageNo;
    }

    
    public void setStartPageNo(int startPageNo) {
        this.startPageNo = startPageNo;
    }

    
    public int getPageNo() {
        return pageNo;
    }

    
    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

   
    public int getEndPageNo() {
        return endPageNo;
    }

  
    public void setEndPageNo(int endPageNo) {
        this.endPageNo = endPageNo;
    }

   
    public int getNextPageNo() {
        return nextPageNo;
    }

    public void setNextPageNo(int nextPageNo) {
        this.nextPageNo = nextPageNo;
    }

    public int getFinalPageNo() {
        return finalPageNo;
    }

    public void setFinalPageNo(int finalPageNo) {
        this.finalPageNo = finalPageNo;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    	

}