package o;

public class zj
{
  private final vn brN;
  protected zp brO;
  protected zw brP;
  private zl brQ;
  private Runnable brR;
  private boolean brS;
  
  public zj(vn paramvn, zp paramzp, zw paramzw)
  {
    this.brN = paramvn;
    this.brO = paramzp;
    this.brP = paramzw;
  }
  
  public void onEventMainThread(aak paramaak)
  {
    switch (1.brV[paramaak.ordinal()])
    {
    default: 
      break;
    case 1: 
      if (this.brQ == null) {
        return;
      }
      this.brQ.ｩ(0);
      return;
    }
    ˊ(this.brS, paramaak);
  }
  
  public void refresh()
  {
    this.brS = true;
    uR();
  }
  
  void uP()
  {
    if (this.brQ != null) {
      this.brQ.uV();
    }
  }
  
  void uQ()
  {
    this.brS = false;
    if (this.brQ != null) {
      this.brQ.uU();
    }
  }
  
  public void uR()
  {
    this.brN.tX();
  }
  
  public void uS()
  {
    akn.ᖦ(this.brP.id());
  }
  
  public void ˊ(zl paramzl)
  {
    this.brQ = paramzl;
  }
  
  protected void ˊ(boolean paramBoolean, aak paramaak)
  {
    switch (1.brV[paramaak.ordinal()])
    {
    default: 
      return;
    }
    if (paramBoolean)
    {
      uQ();
      return;
    }
    uP();
  }
  
  public void ﹾ(long paramLong)
  {
    if (this.brR == null) {
      this.brR = new zk(this, paramLong);
    }
    akn.ˊ(this.brP.id(), this.brR, paramLong);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.zj
 * JD-Core Version:    0.7.0.1
 */