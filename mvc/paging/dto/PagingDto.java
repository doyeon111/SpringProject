//package yuhan.mvc.paging.dto;
//
//import lombok.Getter;
//import lombok.ToString;
//
//@Getter
//@ToString
//public class PagingDto {
//
//	private int startPage;
//	private int endPage;
//	private boolean prev, next;
//	
//	private int total;
//	private CriteriaDto cri;
//	
//	public PagingDto(CriteriaDto cri, int total) {
//		this.cri = cri;
//		this.total = total;
//		
//		this.endPage = (int)Math.ceil(cri.getPageNum() / 5.0) * 5;
//		this.startPage = this.endPage - (5-1);
//		
//		int realEnd =
//				(int)Math.ceil((double)total / cri.getAmount());
//		
//		if(realEnd < this.endPage) {
//			this.endPage = realEnd;
//		}
//		
//		this.prev = this.startPage > 1;
//		this.next = this.endPage < realEnd;
//	}
//	
//    
//}
//
