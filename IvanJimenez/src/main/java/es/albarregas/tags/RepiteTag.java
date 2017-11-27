package es.albarregas.tags;

import java.io.IOException;
import java.io.Writer;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

public class RepiteTag extends TagSupport {

    private char caracter;
    private int veces;

    public void setCaracter(char carcater) {
        this.caracter = carcater;
    }

    public void setVeces(int veces) {
        this.veces = veces;
    }

    public int doStartTag() throws JspException {
        Writer out = pageContext.getOut();
        veces=(veces>0)?veces:3;
        for (int i = 0; i < veces; i++) {
            try {
                out.write(caracter);
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return Tag.EVAL_BODY_INCLUDE;
    }

    public int doEndTag() throws JspException {
        Writer out = pageContext.getOut();
        veces=(veces>0)?veces:3;
        for (int i = 0; i < veces; i++) {
            try {
                out.write(caracter);
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return Tag.EVAL_PAGE;
    }
}