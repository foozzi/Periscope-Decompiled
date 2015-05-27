package o;

public class zn
{
  private final vn brN;
  private final zl brQ;
  private boolean brS;
  
  public zn(zl paramzl, vn paramvn)
  {
    this.brQ = paramzl;
    this.brN = paramvn;
  }
  
  public void onEventMainThread(aak paramaak)
  {
    switch (1.brV[paramaak.ordinal()])
    {
    default: 
      return;
    case 1: 
      if (this.brS) {
        this.brQ.uU();
      } else {
        this.brQ.uV();
      }
      this.brQ.uT();
      return;
    case 2: 
      this.brQ.ｃ(0);
      return;
    }
    this.brQ.ｩ(0);
  }
  
  public void refresh()
  {
    this.brS = true;
    this.brN.tW();
  }
  
  public void uR()
  {
    this.brN.tW();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.zn
 * JD-Core Version:    0.7.0.1
 */