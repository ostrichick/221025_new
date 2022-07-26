package utils;

public enum Define {
//	public static final int Korean = 1001;
//	public static final int MATH = 2001;
//
//	public static final int AB_TYPE = 0;
//	public static final int SAB_TYPE = 1;

	KOREAN(1001), MATH(2001), AB_TYPE(0), SAB_TYPE(1), TITLE(" 수강생 학점 \t\t\n"), HEADER(" 이름 | 학번 |필수과목| 점수  \n"),
	LINE("----------------------\n");

	public int code;
	public byte type;
	public String format;

	private Define(int code) {
		this.code = code;
	}

	private Define(byte type) {
		this.type = type;
	}

	private Define(String format) {
		this.format = format;
	}

	public int getCode() {
		return code;
	}

	public byte isAB() {
		return type;
	}

	public String getFormat() {
		return format;
	}

}
