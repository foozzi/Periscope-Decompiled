package o;

public class ᘂ
  implements ᒎ, ᒲ
{
  private final long wR;
  private final প wS;
  private ᘢ wT;
  private boolean wU;
  
  public ᘂ()
  {
    this(0L);
  }
  
  public ᘂ(long paramLong)
  {
    this.wR = paramLong;
    this.wS = new প(200);
    this.wU = true;
  }
  
  public int ˊ(ᒑ paramᒑ, ᒮ paramᒮ)
  {
    int i = paramᒑ.read(this.wS.fw, 0, 200);
    if (i == -1) {
      return -1;
    }
    this.wS.setPosition(0);
    this.wS.ʟ(i);
    this.wT.ˊ(this.wS, this.wR, this.wU);
    this.wU = false;
    return 0;
  }
  
  public void ˊ(ᒬ paramᒬ)
  {
    this.wT = new ᘢ(paramᒬ.ר(0));
    paramᒬ.ᒯ();
    paramᒬ.ˊ(this);
  }
  
  public void ᒮ()
  {
    this.wU = true;
    this.wT.ᒮ();
  }
  
  public boolean ᚆ()
  {
    return false;
  }
  
  public long ｰ(long paramLong)
  {
    return 0L;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */