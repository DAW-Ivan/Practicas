package es.albarregas.tags;

import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

public class AleDec extends TagSupport {

    private int decimales;

    public void setDecimales(int decimales) {
        this.decimales = decimales;
    }

    public int doStartTag() throws JspException {
        Writer out = pageContext.getOut();
        decimales=(decimales>0)?decimales:2;
        double aleatorio =(Math.random() * 100) + 1;
        BigDecimal bd = new BigDecimal(aleatorio);
        bd = bd.setScale(decimales, RoundingMode.HALF_UP);
        
        try {
            out.write(bd.toString());
        } catch (IOException ex) {
            ex.printStackTrace();
        }

        return Tag.EVAL_BODY_INCLUDE;
    }

    /*public int doEndTag() throws JspException {
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
    }*/
}
