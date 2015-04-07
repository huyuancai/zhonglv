package com.luoyang.zhonglv.vo;

/**
 * 分页VO
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class PageVO {
	private long currentPage;// 当前页
	private long pageSize;// 每页条数
	private long totalSize;// 总条数
	private long prePage;// 上一页
	private long nextPage;// 下一页
	private long totalPage;// 总页数

	public void setCurrentPage( long currentPage ) {
		if ( currentPage < 1 ) {
			currentPage = 1;
		}
		this.currentPage = currentPage;
	}

	public long getCurrentPage() {
		if ( currentPage > getTotalPage() && getTotalPage() > 0 ) {
			currentPage = getTotalPage();
		}
		if ( currentPage == 0 ) {
			return 1L;
		}
		return currentPage;
	}

	public long getPageSize() {
		if ( pageSize == 0 ) {
			return 15L;
		}
		return pageSize;
	}

	public void setPageSize( long pageSize ) {
		this.pageSize = pageSize;
	}

	public long getTotalSize() {
		return totalSize;
	}

	public void setTotalSize( long totalSize ) {
		this.totalSize = totalSize;
	}

	public long getPrePage() {
		if ( getCurrentPage() - 1 > 0 ) {
			prePage = getCurrentPage() - 1;
		}
		else {
			prePage = getCurrentPage();
		}
		return prePage;
	}

	public void setPrePage( long prePage ) {
		this.prePage = prePage;
	}

	public long getNextPage() {
		if ( ( (float) getTotalSize() / getPageSize() ) > getCurrentPage() ) {
			nextPage = getCurrentPage() + 1;
		}
		else {
			nextPage = getCurrentPage();
		}
		return nextPage;
	}

	public void setNextPage( long nextPage ) {
		this.nextPage = nextPage;
	}

	public long getTotalPage() {
		if ( getTotalSize() % getPageSize() == 0 ) {
			totalPage = getTotalSize() / getPageSize();
		}
		else if ( totalPage == 0 ) {
			totalPage = 1L;
		}
		else {
			totalPage = getTotalSize() / getPageSize() + 1;
		}
		return totalPage;
	}

	public void setTotalPage( long totalPage ) {
		this.totalPage = totalPage;
	}

}
