package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;

public class SHA384Digest
  extends LongDigest
{
  public SHA384Digest() {}
  
  public SHA384Digest(SHA384Digest paramSHA384Digest)
  {
    super(paramSHA384Digest);
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    finish();
    Pack.ʻ(this.aGk, paramArrayOfByte, paramInt);
    Pack.ʻ(this.aGl, paramArrayOfByte, paramInt + 8);
    Pack.ʻ(this.aGm, paramArrayOfByte, paramInt + 16);
    Pack.ʻ(this.aGn, paramArrayOfByte, paramInt + 24);
    Pack.ʻ(this.aGo, paramArrayOfByte, paramInt + 32);
    Pack.ʻ(this.aGp, paramArrayOfByte, paramInt + 40);
    reset();
    return 48;
  }
  
  public String iG()
  {
    return "SHA-384";
  }
  
  public int iJ()
  {
    return 48;
  }
  
  public Memoable iU()
  {
    return new SHA384Digest(this);
  }
  
  public void reset()
  {
    super.reset();
    this.aGk = -3766243637369397544L;
    this.aGl = 7105036623409894663L;
    this.aGm = -7973340178411365097L;
    this.aGn = 1526699215303891257L;
    this.aGo = 7436329637833083697L;
    this.aGp = -8163818279084223215L;
    this.aGq = -2662702644619276377L;
    this.aGr = 5167115440072839076L;
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    super.ˊ((SHA384Digest)paramMemoable);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.SHA384Digest
 * JD-Core Version:    0.7.0.1
 */