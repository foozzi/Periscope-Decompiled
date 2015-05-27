package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Arrays;

public class SSL3Mac
  implements Mac
{
  static final byte[] aUp = ˎ(, 48);
  static final byte[] aUq = ˎ((byte)92, 48);
  private Digest aFH;
  private byte[] aUr;
  private int aUs;
  
  public SSL3Mac(Digest paramDigest)
  {
    this.aFH = paramDigest;
    if (paramDigest.iJ() == 20)
    {
      this.aUs = 40;
      return;
    }
    this.aUs = 48;
  }
  
  private static byte[] ˎ(byte paramByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    Arrays.fill(arrayOfByte, paramByte);
    return arrayOfByte;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    this.aFH.update(this.aUr, 0, this.aUr.length);
    this.aFH.update(aUq, 0, this.aUs);
    this.aFH.update(arrayOfByte, 0, arrayOfByte.length);
    paramInt = this.aFH.doFinal(paramArrayOfByte, paramInt);
    reset();
    return paramInt;
  }
  
  public String iG()
  {
    return this.aFH.iG() + "/SSL3MAC";
  }
  
  public int iO()
  {
    return this.aFH.iJ();
  }
  
  public void reset()
  {
    this.aFH.reset();
    this.aFH.update(this.aUr, 0, this.aUr.length);
    this.aFH.update(aUp, 0, this.aUs);
  }
  
  public void update(byte paramByte)
  {
    this.aFH.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    this.aUr = Arrays.І(((KeyParameter)paramCipherParameters).getKey());
    reset();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.SSL3Mac
 * JD-Core Version:    0.7.0.1
 */