package o;

public class yz
{
  private final zc bqX;
  
  private yz(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.bqX = new zc();
      return;
    }
    this.bqX = null;
  }
  
  public static yz ᑉ(boolean paramBoolean)
  {
    return new yz(paramBoolean);
  }
  
  public void kill()
  {
    if (this.bqX != null) {
      this.bqX.kill();
    }
  }
  
  public void ʼ(String paramString1, String paramString2, String paramString3)
  {
    abx.ʼ(paramString1, paramString2, paramString3);
  }
  
  public void ˊ(String paramString1, String paramString2, acu paramacu, boolean paramBoolean, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt, String paramString8, String paramString9, byte[] paramArrayOfByte, String paramString10)
  {
    abx.ˊ(paramString1, paramString2, paramacu, paramBoolean, paramString3, paramString4, paramString5, paramString6, paramString7, paramInt);
    if (this.bqX != null) {
      this.bqX.ˊ(paramString8, paramString9, paramArrayOfByte, paramString10);
    }
  }
  
  public void ˊ(String paramString, ant paramant)
  {
    abx.ˋ(paramString, paramant);
    if (this.bqX != null) {
      this.bqX.ˋ(paramant);
    }
  }
  
  public void ˎ(String paramString, long paramLong)
  {
    abx.ˎ(paramString, paramLong);
    paramString = this.bqX;
  }
  
  public void ᐩ(String paramString1, String paramString2)
  {
    abx.ﻴ(paramString1);
    if (this.bqX != null) {
      this.bqX.ḯ(paramString2);
    }
  }
  
  public void ᵡ(String paramString)
  {
    abx.ᵡ(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.yz
 * JD-Core Version:    0.7.0.1
 */