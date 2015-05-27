package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;

public class SHA512Digest
  extends LongDigest
{
  public SHA512Digest() {}
  
  public SHA512Digest(SHA512Digest paramSHA512Digest)
  {
    super(paramSHA512Digest);
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
    Pack.ʻ(this.aGq, paramArrayOfByte, paramInt + 48);
    Pack.ʻ(this.aGr, paramArrayOfByte, paramInt + 56);
    reset();
    return 64;
  }
  
  public String iG()
  {
    return "SHA-512";
  }
  
  public int iJ()
  {
    return 64;
  }
  
  public Memoable iU()
  {
    return new SHA512Digest(this);
  }
  
  public void reset()
  {
    super.reset();
    this.aGk = 7640891576956012808L;
    this.aGl = -4942790177534073029L;
    this.aGm = 4354685564936845355L;
    this.aGn = -6534734903238641935L;
    this.aGo = 5840696475078001361L;
    this.aGp = -7276294671716946913L;
    this.aGq = 2270897969802886507L;
    this.aGr = 6620516959819538809L;
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    ˊ((SHA512Digest)paramMemoable);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.SHA512Digest
 * JD-Core Version:    0.7.0.1
 */