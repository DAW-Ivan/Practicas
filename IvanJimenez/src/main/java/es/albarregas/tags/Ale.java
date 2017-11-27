package es.albarregas.tags;

import java.io.IOException;
import java.io.Writer;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

public class Ale extends TagSupport {

    private int inicio;
    private int fin;

    public void setInicio(int inicio) {
        this.inicio = inicio;
    }
    public void setFin(int fin) {
        this.fin = fin;
    }

    public int doStartTag() throws JspException {
        Writer out = pageContext.getOut();
        String ale=Integer.toString((int)((Math.random()*fin)+inicio));
        try {
            out.write(ale);
        } catch (IOException ex) {
            ex.printStackTrace();
        }

        return Tag.EVAL_BODY_INCLUDE;
    }

    /*public int doEndTag() throws JspException {
        Writer out = pageContext.getOut();
        veces = (veces > 0) ? veces : 3;
        for (int i = 0; i < veces; i++) {
            try {
                out.write(caracter);
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return Tag.EVAL_PAGE;
    }*/
}