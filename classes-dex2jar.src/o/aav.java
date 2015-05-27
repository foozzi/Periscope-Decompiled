package o;

import java.util.ArrayList;

public class aav
  implements ڒ
{
  protected akw buM;
  protected final String buV;
  protected final String buW;
  private final int buX;
  private ڕ buY;
  private long buZ = 0L;
  private final ArrayList<alc> bva = new ArrayList();
  
  public aav(int paramInt, String paramString1, String paramString2)
  {
    this.buX = paramInt;
    this.buV = paramString1;
    this.buW = paramString2;
    this.buY = new ڕ(this.buV, -1L);
  }
  
  public int getTrackCount()
  {
    return 1;
  }
  
  public void release()
  {
    this.buM.shutdown();
  }
  
  protected alc vM()
  {
    synchronized (this.bva)
    {
      if (this.bva.size() > 0)
      {
        alc localalc = (alc)this.bva.remove(0);
        return localalc;
      }
      return null;
    }
  }
  
  public int ˊ(int paramInt, long paramLong, م paramم, ڋ paramڋ, boolean paramBoolean)
  {
    return 0;
  }
  
  public void ˊ(akw paramakw)
  {
    this.buM = paramakw;
  }
  
  public void ˋ(alc paramalc)
  {
    synchronized (this.bva)
    {
      this.bva.add(paramalc);
      if (paramalc.getTime() > this.buZ) {
        this.buZ = paramalc.getTime();
      }
      return;
    }
  }
  
  public void ˏ(int paramInt, long paramLong) {}
  
  public ڕ ϊ(int paramInt)
  {
    return this.buY;
  }
  
  public void ג(int paramInt) {}
  
  public boolean ᐧ(long paramLong)
  {
    return true;
  }
  
  public boolean ᐨ(long paramLong)
  {
    return this.bva.size() > 0;
  }
  
  public void ﹳ(long paramLong) {}
  
  public long ﻥ()
  {
    synchronized (this.bva)
    {
      long l = this.buZ;
      return l * 1000L;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aav
 * JD-Core Version:    0.7.0.1
 */