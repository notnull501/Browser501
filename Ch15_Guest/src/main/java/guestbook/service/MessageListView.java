package guestbook.service;

import java.util.List;

import guestbook.model.Message;

public class MessageListView {
	private int messageTotalCount;//메시지 전체 갯수
	private int currentPageNumber;//요청 페이지 번호
	private List<Message> messageList;//메시지 목록
	private int pageTotalCount;//전체 페이지수
	private int messageCountPerPage;//페이지당 메시지 출력 갯수
	private int firstRow;
	private int endRow;

	//생성자
	public MessageListView(List<Message> messageList, int messageTotalCount, 
			int currentPageNumber, int messageCountPerPage, 
			int startRow, int endRow) {
		this.messageList = messageList;
		this.messageTotalCount = messageTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.messageCountPerPage = messageCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	//전체 페이지수 구하기
	private void calculatePageTotalCount() {
		if (messageTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = messageTotalCount / messageCountPerPage;//7/3
			if (messageTotalCount % messageCountPerPage > 0) {
				pageTotalCount++;//2 ==>  3
			}
		}
	}

	public int getMessageTotalCount() {
		return messageTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public List<Message> getMessageList() {
		return messageList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public int getMessageCountPerPage() {
		return messageCountPerPage;
	}
// 전체 메시지중에서 현재 페이지 목록의 시작행
	public int getFirstRow() {
		return firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public boolean isEmpty() {
		return messageTotalCount == 0;
	}
}
