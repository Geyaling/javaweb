package swu;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class MyTag extends SimpleTagSupport {
    private  boolean test;
    /*
    会由tomcat调用，在doTag之前
     */
    public void setTest(boolean test) {
        this.test = test;
    }

    @Override
    public void doTag() throws JspException, IOException {
        if(test) {
        /*
        执行标签体
         */
            this.getJspBody().invoke(null);//参数为null，表示输出到当前页面的out
        }
    }
}
