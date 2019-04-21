package swu;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/*
SimpleTagSupport实现了SimpleTag接口
已经将tommcat传递的所有数据都保存起来了，而且还提供了get方法供子类调用
 */

public class MyTag01 extends SimpleTagSupport {
    @Override
    public void doTag() throws JspException, IOException {
        this.getJspContext().getOut().print("Hello Tag Plus");
    }
}
