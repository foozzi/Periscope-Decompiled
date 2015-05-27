package o;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView.aux;
import android.support.v7.widget.RecyclerView.if;

public abstract class aif
{
  public final amw bGa;
  public final aip bGb;
  public final int bGc;
  public final int bGd;
  public final int bGe;
  public final int bGf;
  public final int bGg;
  public final int bGh;
  public final int bGi;
  public final int statusBarColor;
  
  aif(amw paramamw, aip paramaip, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    this.bGa = paramamw;
    this.bGb = paramaip;
    paramamw = paramaip.getContext().getResources();
    this.bGd = paramamw.getColor(paramInt1);
    this.bGe = paramamw.getColor(paramInt2);
    this.bGc = paramamw.getColor(paramInt3);
    this.statusBarColor = paramamw.getColor(paramInt4);
    this.bGf = paramInt6;
    this.bGg = paramInt7;
    this.bGh = paramInt8;
    this.bGi = paramInt5;
  }
  
  public abstract RecyclerView.if zG();
  
  public abstract if zH();
  
  public abstract RecyclerView.aux zI();
  
  public static abstract interface if
  {
    public abstract void destroy();
    
    public abstract void init();
    
    public abstract void pause();
    
    public abstract void resume();
    
    public abstract void ˊ(if paramif);
    
    public abstract void ˊ(aif.if.ˊ paramˊ);
    
    public static abstract interface if
    {
      public abstract void zL();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aif
 * JD-Core Version:    0.7.0.1
 */