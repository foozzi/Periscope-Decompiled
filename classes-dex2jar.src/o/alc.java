package o;

public class alc
{
  private long bKk = 0L;
  private int bLu;
  private int bLv;
  private Object[] bLw;
  private akz bLx;
  private int bjf;
  
  public alc(int paramInt1, int paramInt2, int paramInt3)
  {
    this.bLu = paramInt2;
    this.bLv = paramInt3;
    this.bjf = paramInt1;
  }
  
  public int Bp()
  {
    return this.bLu;
  }
  
  public int Bq()
  {
    return this.bLv;
  }
  
  public akz Br()
  {
    if (this.bLx == null) {
      this.bLx = new akz();
    }
    return this.bLx;
  }
  
  public akz Bs()
  {
    akz localakz = this.bLx;
    this.bLx = null;
    return localakz;
  }
  
  public void Bt()
  {
    if ((this.bjf == 20) || (this.bjf == 18)) {
      this.bLw = akt.ᐪ(this.bLx.buffer, this.bLx.length);
    }
  }
  
  public Object[] Bu()
  {
    return this.bLw;
  }
  
  public long getTime()
  {
    return this.bKk;
  }
  
  public int getType()
  {
    return this.bjf;
  }
  
  public void setTime(long paramLong)
  {
    this.bKk = paramLong;
  }
  
  public String toString()
  {
    String str = "RTMPMessage " + this.bjf + " csid " + this.bLu + " stream " + this.bLv + " time " + this.bKk;
    if (this.bLw != null)
    {
      str = str + ": ";
      Object[] arrayOfObject = this.bLw;
      j = arrayOfObject.length;
      i = 0;
      while (i < j)
      {
        Object localObject = arrayOfObject[i];
        str = str + localObject + " / ";
        i += 1;
      }
      return str;
    }
    str = str + ": ";
    int j = Math.min(this.bLx.length, 50);
    int i = 0;
    while (i < j)
    {
      str = str + Integer.toHexString(this.bLx.buffer[i] & 0xFF) + " ";
      i += 1;
    }
    return str;
  }
  
  public void ˎ(akz paramakz)
  {
    this.bLx = paramakz;
  }
  
  public void ˎ(Object[] paramArrayOfObject)
  {
    this.bLw = paramArrayOfObject;
    ᓫ(akt.ˋ(paramArrayOfObject));
  }
  
  public void ˮ(int paramInt1, int paramInt2, int paramInt3)
  {
    this.bLu = paramInt2;
    this.bLv = paramInt3;
    this.bjf = paramInt1;
  }
  
  public void ᓫ(byte[] paramArrayOfByte)
  {
    this.bLx = new akz(paramArrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alc
 * JD-Core Version:    0.7.0.1
 */