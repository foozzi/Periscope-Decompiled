package o;

public class ᒌ
  implements ᒳ
{
  private volatile ب ry;
  private final ᒯ tV;
  private final ڋ tW;
  private boolean tX;
  private long tY;
  private long tZ;
  private volatile long ua;
  
  public ᒌ(ʎ paramʎ)
  {
    this.tV = new ᒯ(paramʎ);
    this.tW = new ڋ(0);
    this.tX = true;
    this.tY = -9223372036854775808L;
    this.tZ = -9223372036854775808L;
    this.ua = -9223372036854775808L;
  }
  
  private boolean ᒭ()
  {
    boolean bool1 = this.tV.ˋ(this.tW);
    boolean bool2 = bool1;
    if (this.tX) {
      for (;;)
      {
        bool2 = bool1;
        if (!bool1) {
          break;
        }
        bool2 = bool1;
        if (this.tW.צ()) {
          break;
        }
        this.tV.ᔫ();
        bool1 = this.tV.ˋ(this.tW);
      }
    }
    if (!bool2) {
      return false;
    }
    return (this.tZ == -9223372036854775808L) || (this.tW.sJ < this.tZ);
  }
  
  public void clear()
  {
    this.tV.clear();
    this.tX = true;
    this.tY = -9223372036854775808L;
    this.tZ = -9223372036854775808L;
    this.ua = -9223372036854775808L;
  }
  
  public boolean isEmpty()
  {
    return !ᒭ();
  }
  
  public int ˊ(ᒑ paramᒑ, int paramInt)
  {
    return this.tV.ˋ(paramᒑ, paramInt);
  }
  
  public void ˊ(long paramLong, int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    this.ua = Math.max(this.ua, paramLong);
    this.tV.ˊ(paramLong, paramInt1, this.tV.ᘂ() - paramInt2 - paramInt3, paramInt2, paramArrayOfByte);
  }
  
  public void ˊ(ب paramب)
  {
    this.ry = paramب;
  }
  
  public void ˊ(প paramপ, int paramInt)
  {
    this.tV.ˎ(paramপ, paramInt);
  }
  
  public boolean ˊ(ڋ paramڋ)
  {
    if (!ᒭ()) {
      return false;
    }
    this.tV.ˎ(paramڋ);
    this.tX = false;
    this.tY = paramڋ.sJ;
    return true;
  }
  
  public boolean ˊ(ᒌ paramᒌ)
  {
    if (this.tZ != -9223372036854775808L) {
      return true;
    }
    long l;
    if (this.tV.ˋ(this.tW)) {
      l = this.tW.sJ;
    } else {
      l = this.tY + 1L;
    }
    paramᒌ = paramᒌ.tV;
    while ((paramᒌ.ˋ(this.tW)) && ((this.tW.sJ < l) || (!this.tW.צ()))) {
      paramᒌ.ᔫ();
    }
    if (paramᒌ.ˋ(this.tW))
    {
      this.tZ = this.tW.sJ;
      return true;
    }
    return false;
  }
  
  public void ٴ(long paramLong)
  {
    while ((this.tV.ˋ(this.tW)) && (this.tW.sJ < paramLong))
    {
      this.tV.ᔫ();
      this.tX = true;
    }
    this.tY = -9223372036854775808L;
  }
  
  public boolean ᒎ()
  {
    return this.ry != null;
  }
  
  public ب ᒑ()
  {
    return this.ry;
  }
  
  public long ᒬ()
  {
    return this.ua;
  }
  
  public boolean ᴵ(long paramLong)
  {
    return this.tV.ᴵ(paramLong);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */