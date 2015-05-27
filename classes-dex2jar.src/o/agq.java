package o;

import java.util.List;

public class agq
{
  private boolean bAX;
  private if bDL;
  private int bDM;
  private long bDN;
  private long bDO;
  private ot bDP;
  private String bDQ;
  
  public agq(ot paramot, if paramif, String paramString)
  {
    paramot.ʲ(this);
    this.bDP = paramot;
    this.bDL = paramif;
    this.bDQ = paramString;
  }
  
  private void ˉ(ant paramant)
  {
    if (this.bDQ.equals(paramant.Ct())) {
      this.bDL.ʿ(paramant);
    }
  }
  
  private void ˌ(ant paramant)
  {
    this.bDL.ʾ(paramant.Cb(), paramant.Ch().intValue());
  }
  
  private void ι(ant paramant)
  {
    if ((this.bAX) && (this.bDQ.equals(paramant.Cb()))) {
      return;
    }
    if (System.currentTimeMillis() - this.bDO < 25L) {
      return;
    }
    this.bDO = System.currentTimeMillis();
    if (this.bDM == 0) {
      this.bDN = System.currentTimeMillis();
    }
    if (System.currentTimeMillis() - this.bDN < 1000L)
    {
      if (this.bDM > 8) {
        return;
      }
      this.bDL.ι(paramant);
      this.bDM += 1;
      return;
    }
    this.bDM = 0;
    this.bDN = System.currentTimeMillis();
    this.bDL.ι(paramant);
  }
  
  public void kill()
  {
    this.bDP.ː(this);
  }
  
  public void onEventMainThread(acd paramacd)
  {
    if (paramacd.wH())
    {
      int i = Math.max(paramacd.bxu - 1, 0);
      this.bDL.ɫ(i);
    }
    this.bDL.ᴵ(paramacd.boq);
  }
  
  public void onEventMainThread(ant paramant)
  {
    switch (1.bwW[paramant.Cf().ordinal()])
    {
    default: 
      return;
    case 1: 
    case 2: 
    case 3: 
      this.bDL.ʾ(paramant);
      return;
    case 4: 
      ι(paramant);
      ˌ(paramant);
      return;
    case 5: 
      this.bDL.yx();
      return;
    case 6: 
      this.bDL.yy();
      return;
    }
    ˉ(paramant);
  }
  
  public void Ⅰ(boolean paramBoolean)
  {
    this.bAX = paramBoolean;
  }
  
  public static abstract interface if
  {
    public abstract void yx();
    
    public abstract void yy();
    
    public abstract void ɫ(int paramInt);
    
    public abstract void ʾ(String paramString, int paramInt);
    
    public abstract void ʾ(ant paramant);
    
    public abstract void ʿ(ant paramant);
    
    public abstract void ᴵ(List<anv> paramList);
    
    public abstract void ι(ant paramant);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agq
 * JD-Core Version:    0.7.0.1
 */