/*
自定义标签

所有setXxx方法都会在doTag()方法之前被tomcat调用
所以就可以在doTag()中使用tomcat传递过来的的对象了
 */
package swu;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTag;
import java.io.IOException;

public class HelloTag implements SimpleTag {
    private PageContext pageContext;
    private JspFragment body;
    @Override
    public void doTag() throws JspException, IOException {
        pageContext.getOut().print("Hello Tag");
    }

    @Override
    public void setParent(JspTag jspTag) {}

    @Override
    public JspTag getParent() {
        return null;
    }

    @Override
    public void setJspContext(JspContext jspContext) {
        //tomcat调用，传递过来的参数先保存起来 doTag中才可以用
        this.pageContext=(PageContext) jspContext;
    }

    @Override
    public void setJspBody(JspFragment jspFragment) {
        this.body = jspFragment;
    }
}


