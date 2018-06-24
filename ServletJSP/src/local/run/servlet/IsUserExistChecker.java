package local.run.servlet;

public class IsUserExistChecker {
	private static boolean exist = false;
	public void setExistTrue() {
		this.exist = true;
	}
	public boolean getExist() {
		return this.exist;
	}
}
