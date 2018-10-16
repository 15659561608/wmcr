package com.etc.entity;

public class Typecgl {

	 private Integer id;

	    private String title;

	    private String  fuTitle;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getFuTitle() {
			return fuTitle;
		}

		public void setFuTitle(String fuTitle) {
			this.fuTitle = fuTitle;
		}

		@Override
		public String toString() {
			return "Typecgl [id=" + id + ", title=" + title + ", fuTitle=" + fuTitle + "]";
		}

		public Typecgl(Integer id, String title, String fuTitle) {
			super();
			this.id = id;
			this.title = title;
			this.fuTitle = fuTitle;
		}

		public Typecgl() {
			super();
		}
	    
}
