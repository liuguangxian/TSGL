package com.lyp.model;

public class Booklist {

	private int id;
	// 图书名称
	private String name;
	// 价格
	private double price;
	// 数量
	private int bookCount;
	// 作者
	private String author;
	
	public Booklist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Booklist(String name, double price, int bookCount, String author) {
		super();
		this.name = name;
		this.price = price;
		this.bookCount = bookCount;
		this.author = author;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getBookCount() {
		return bookCount;
	}
	public void setBookCount(int bookCount) {
		this.bookCount = bookCount;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
}
