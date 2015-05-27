package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;

public class OldHMac
  implements Mac
{
  private Digest aFH;
  private int aNI;
  private byte[] aNM = new byte[64];
  private byte[] aNT = new byte[64];
  
  public OldHMac(Digest paramDigest)
  {
    this.aFH = paramDigest;
    this.aNI = paramDigest.iJ();
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[this.aNI];
    this.aFH.doFinal(arrayOfByte, 0);
    this.aFH.update(this.aNT, 0, this.aNT.length);
    this.aFH.update(arrayOfByte, 0, arrayOfByte.length);
    paramInt = this.aFH.doFinal(paramArrayOfByte, paramInt);
    reset();
    return paramInt;
  }
  
  public String iG()
  {
    return this.aFH.iG() + "/HMAC";
  }
  
  public int iO()
  {
    return this.aNI;
  }
  
  public void reset()
  {
    this.aFH.reset();
    this.aFH.update(this.aNM, 0, this.aNM.length);
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
    this.aFH.reset();
    paramCipherParameters = ((KeyParameter)paramCipherParameters).getKey();
    if (paramCipherParameters.length > 64)
    {
      this.aFH.update(paramCipherParameters, 0, paramCipherParameters.length);
      this.aFH.doFinal(this.aNM, 0);
      i = this.aNI;
      while (i < this.aNM.length)
      {
        this.aNM[i] = 0;
        i += 1;
      }
    }
    else
    {
      System.arraycopy(paramCipherParameters, 0, this.aNM, 0, paramCipherParameters.length);
      i = paramCipherParameters.length;
      while (i < this.aNM.length)
      {
        this.aNM[i] = 0;
        i += 1;
      }
    }
    this.aNT = new byte[this.aNM.length];
    System.arraycopy(this.aNM, 0, this.aNT, 0, this.aNM.length);
    int i = 0;
    while (i < this.aNM.length)
    {
      paramCipherParameters = this.aNM;
      paramCipherParameters[i] = ((byte)(paramCipherParameters[i] ^ 0x36));
      i += 1;
    }
    i = 0;
    while (i < this.aNT.length)
    {
      paramCipherParameters = this.aNT;
      paramCipherParameters[i] = ((byte)(paramCipherParameters[i] ^ 0x5C));
      i += 1;
    }
    this.aFH.update(this.aNM, 0, this.aNM.length);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.OldHMac
 * JD-Core Version:    0.7.0.1
 */