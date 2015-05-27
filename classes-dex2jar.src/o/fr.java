package o;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class fr
{
  private final List<gl> JY = new ArrayList();
  private boolean Ka;
  private boolean Kc;
  private boolean Kd;
  private hg Ki = hg.KP;
  private gg Kj = gg.Ky;
  private fk Kk = fe.JQ;
  private final Map<Type, fs<?>> Kl = new HashMap();
  private final List<gl> Km = new ArrayList();
  private String Kn;
  private int Ko = 2;
  private int Kp = 2;
  private boolean Kq;
  private boolean Kr;
  private boolean Ks = true;
  
  private void ˊ(String paramString, int paramInt1, int paramInt2, List<gl> paramList)
  {
    if ((paramString != null) && (!"".equals(paramString.trim()))) {
      paramString = new fb(paramString);
    } else if ((paramInt1 != 2) && (paramInt2 != 2)) {
      paramString = new fb(paramInt1, paramInt2);
    } else {
      return;
    }
    paramList.add(gj.ˊ(jy.ˈ(java.util.Date.class), paramString));
    paramList.add(gj.ˊ(jy.ˈ(Timestamp.class), paramString));
    paramList.add(gj.ˊ(jy.ˈ(java.sql.Date.class), paramString));
  }
  
  public fl f()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(this.JY);
    Collections.reverse(localArrayList);
    localArrayList.addAll(this.Km);
    ˊ(this.Kn, this.Ko, this.Kp, localArrayList);
    return new fl(this.Ki, this.Kk, this.Kl, this.Ka, this.Kq, this.Kc, this.Ks, this.Kd, this.Kr, this.Kj, localArrayList);
  }
  
  public fr ˊ(Type paramType, Object paramObject)
  {
    boolean bool;
    if (((paramObject instanceof ge)) || ((paramObject instanceof fv)) || ((paramObject instanceof fs)) || ((paramObject instanceof gk))) {
      bool = true;
    } else {
      bool = false;
    }
    gr.יּ(bool);
    if ((paramObject instanceof fs)) {
      this.Kl.put(paramType, (fs)paramObject);
    }
    if (((paramObject instanceof ge)) || ((paramObject instanceof fv)))
    {
      jy localjy = jy.ʽ(paramType);
      this.JY.add(gj.ˋ(localjy, paramObject));
    }
    if ((paramObject instanceof gk)) {
      this.JY.add(ir.ˊ(jy.ʽ(paramType), (gk)paramObject));
    }
    return this;
  }
  
  public fr ˊ(fe paramfe)
  {
    this.Kk = paramfe;
    return this;
  }
  
  public fr ˊ(gl paramgl)
  {
    this.JY.add(paramgl);
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fr
 * JD-Core Version:    0.7.0.1
 */