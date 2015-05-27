package o;

class hh
  extends gk<T>
{
  private gk<T> Kh;
  
  hh(hg paramhg, boolean paramBoolean1, boolean paramBoolean2, fl paramfl, jy paramjy) {}
  
  private gk<T> y()
  {
    gk localgk = this.Kh;
    if (localgk != null) {
      return localgk;
    }
    localgk = this.KY.ˊ(this.La, this.KZ);
    this.Kh = localgk;
    return localgk;
  }
  
  public void ˊ(kc paramkc, T paramT)
  {
    if (this.KX)
    {
      paramkc.T();
      return;
    }
    y().ˊ(paramkc, paramT);
  }
  
  public T ˋ(jz paramjz)
  {
    if (this.KW)
    {
      paramjz.skipValue();
      return null;
    }
    return y().ˋ(paramjz);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hh
 * JD-Core Version:    0.7.0.1
 */