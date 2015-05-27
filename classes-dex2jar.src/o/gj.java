package o;

final class gj<T>
  extends gk<T>
{
  private final ge<T> KB;
  private final fv<T> KC;
  private final jy<T> KD;
  private final gl KE;
  private gk<T> Kh;
  private final fl gson;
  
  private gj(ge<T> paramge, fv<T> paramfv, fl paramfl, jy<T> paramjy, gl paramgl)
  {
    this.KB = paramge;
    this.KC = paramfv;
    this.gson = paramfl;
    this.KD = paramjy;
    this.KE = paramgl;
  }
  
  private gk<T> y()
  {
    gk localgk = this.Kh;
    if (localgk != null) {
      return localgk;
    }
    localgk = this.gson.ˊ(this.KE, this.KD);
    this.Kh = localgk;
    return localgk;
  }
  
  public static gl ˊ(jy<?> paramjy, Object paramObject)
  {
    return new if(paramObject, paramjy, false, null, null);
  }
  
  public static gl ˋ(jy<?> paramjy, Object paramObject)
  {
    boolean bool;
    if (paramjy.V() == paramjy.U()) {
      bool = true;
    } else {
      bool = false;
    }
    return new if(paramObject, paramjy, bool, null, null);
  }
  
  public void ˊ(kc paramkc, T paramT)
  {
    if (this.KB == null)
    {
      y().ˊ(paramkc, paramT);
      return;
    }
    if (paramT == null)
    {
      paramkc.T();
      return;
    }
    hq.ˋ(this.KB.ˊ(paramT, this.KD.V(), this.gson.Kf), paramkc);
  }
  
  public T ˋ(jz paramjz)
  {
    if (this.KC == null) {
      return y().ˋ(paramjz);
    }
    paramjz = hq.ᐝ(paramjz);
    if (paramjz.q()) {
      return null;
    }
    return this.KC.ˋ(paramjz, this.KD.V(), this.gson.Ke);
  }
  
  static class if
    implements gl
  {
    private final ge<?> KB;
    private final fv<?> KC;
    private final jy<?> KF;
    private final boolean KG;
    private final Class<?> KH;
    
    private if(Object paramObject, jy<?> paramjy, boolean paramBoolean, Class<?> paramClass)
    {
      ge localge;
      if ((paramObject instanceof ge)) {
        localge = (ge)paramObject;
      } else {
        localge = null;
      }
      this.KB = localge;
      if ((paramObject instanceof fv)) {
        paramObject = (fv)paramObject;
      } else {
        paramObject = null;
      }
      this.KC = paramObject;
      boolean bool;
      if ((this.KB != null) || (this.KC != null)) {
        bool = true;
      } else {
        bool = false;
      }
      gr.יּ(bool);
      this.KF = paramjy;
      this.KG = paramBoolean;
      this.KH = paramClass;
    }
    
    public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
    {
      boolean bool;
      if (this.KF != null)
      {
        if ((this.KF.equals(paramjy)) || ((this.KG) && (this.KF.V() == paramjy.U()))) {
          bool = true;
        } else {
          bool = false;
        }
      }
      else {
        bool = this.KH.isAssignableFrom(paramjy.U());
      }
      if (bool) {
        return new gj(this.KB, this.KC, paramfl, paramjy, this, null);
      }
      return null;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.gj
 * JD-Core Version:    0.7.0.1
 */