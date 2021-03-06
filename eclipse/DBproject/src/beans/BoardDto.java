package beans;

public class BoardDto {
	private int b_num;
	private String b_name;
	private String b_homepage;
	private String b_email;
	private String b_subject;
	private String b_content;
	private String b_pass;
	private int b_count;
	private String b_ip;
	private String b_ragdate;
	private int b_pos;
	private int b_depth;
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_homepage() {
		return b_homepage;
	}
	public void setB_homepage(String b_homepage) {
		this.b_homepage = b_homepage;
	}
	public String getB_email() {
		return b_email;
	}
	public void setB_email(String b_email) {
		this.b_email = b_email;
	}
	public String getB_subject() {
		return b_subject;
	}
	public void setB_subject(String b_subject) {
		this.b_subject = b_subject;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_pass() {
		return b_pass;
	}
	public void setB_pass(String b_pass) {
		this.b_pass = b_pass;
	}
	public int getB_count() {
		return b_count;
	}
	public void setB_count(int b_count) {
		this.b_count = b_count;
	}
	public String getB_ip() {
		return b_ip;
	}
	public void setB_ip(String b_ip) {
		this.b_ip = b_ip;
	}
	public String getB_ragdate() {
		return b_ragdate;
	}
	public void setB_ragdate(String b_ragdate) {
		this.b_ragdate = b_ragdate;
	}
	public int getB_pos() {
		return b_pos;
	}
	public void setB_pos(int b_pos) {
		this.b_pos = b_pos;
	}
	public int getB_depth() {
		return b_depth;
	}
	public void setB_depth(int b_depth) {
		this.b_depth = b_depth;
	}
	@Override
	public String toString() {
		return "BoardDto [b_num=" + b_num + ", b_name=" + b_name + ", b_homepage=" + b_homepage + ", b_email=" + b_email
				+ ", b_subject=" + b_subject + ", b_content=" + b_content + ", b_pass=" + b_pass + ", b_count="
				+ b_count + ", b_ip=" + b_ip + ", b_ragdate=" + b_ragdate + ", b_pos=" + b_pos + ", b_depth=" + b_depth
				+ "]";
	}
	
}
