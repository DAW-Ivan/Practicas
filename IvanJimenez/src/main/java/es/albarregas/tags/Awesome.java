package es.albarregas.tags;

import java.io.IOException;
import java.io.Writer;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

public class Awesome extends TagSupport {

    /*private int inicio;
    private int fin;

    public void setInicio(int inicio) {
        this.inicio = inicio;
    }
    public void setFin(int fin) {
        this.fin = fin;
    }*/

    public int doStartTag() throws JspException {
        Writer out = pageContext.getOut();
        String cadena="<label style='background: blue;color:white;border:2px solid red;font-size:1.5em;padding:5px;'>";
        try {
            out.write(cadena);
        } catch (IOException ex) {
            ex.printStackTrace();
        }

        return Tag.EVAL_BODY_INCLUDE;
    }

    public int doEndTag() throws JspException {
        Writer out = pageContext.getOut();
        String cadena="</label>";
            try {
                out.write(cadena);
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        
        return Tag.EVAL_PAGE;
    }
}