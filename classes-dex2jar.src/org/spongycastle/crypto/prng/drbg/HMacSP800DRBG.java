package org.spongycastle.crypto.prng.drbg;

import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.prng.EntropySource;
import org.spongycastle.util.Arrays;

public class HMacSP800DRBG
  implements SP80090DRBG
{
  private byte[] aRT;
  private Mac aRU;
  private EntropySource aRm;
  private byte[] aRr;
  private long aRs;
  
  public HMacSP800DRBG(Mac paramMac, int paramInt, EntropySource paramEntropySource, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramInt > Utils.ˊ(paramMac)) {
      throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
    }
    if (paramEntropySource.ls() < paramInt) {
      throw new IllegalArgumentException("Not enough entropy for security strength required");
    }
    this.aRm = paramEntropySource;
    this.aRU = paramMac;
    paramEntropySource = Arrays.ˏ(paramEntropySource.lr(), paramArrayOfByte2, paramArrayOfByte1);
    this.aRT = new byte[paramMac.iO()];
    this.aRr = new byte[this.aRT.length];
    Arrays.fill(this.aRr, (byte)1);
    Ꭵ(paramEntropySource);
    this.aRs = 1L;
  }
  
  private void ˊ(byte[] paramArrayOfByte, byte paramByte)
  {
    this.aRU.ˊ(new KeyParameter(this.aRT));
    this.aRU.update(this.aRr, 0, this.aRr.length);
    this.aRU.update(paramByte);
    if (paramArrayOfByte != null) {
      this.aRU.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    this.aRU.doFinal(this.aRT, 0);
    this.aRU.ˊ(new KeyParameter(this.aRT));
    this.aRU.update(this.aRr, 0, this.aRr.length);
    this.aRU.doFinal(this.aRr, 0);
  }
  
  private void Ꭵ(byte[] paramArrayOfByte)
  {
    ˊ(paramArrayOfByte, (byte)0);
    if (paramArrayOfByte != null) {
      ˊ(paramArrayOfByte, (byte)1);
    }
  }
  
  public int ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, boolean paramBoolean)
  {
    int j = paramArrayOfByte1.length * 8;
    if (j > 262144) {
      throw new IllegalArgumentException("Number of bits per request limited to 262144");
    }
    if (this.aRs > 140737488355328L) {
      return -1;
    }
    byte[] arrayOfByte = paramArrayOfByte2;
    if (paramBoolean)
    {
      ۦ(paramArrayOfByte2);
      arrayOfByte = null;
    }
    if (arrayOfByte != null) {
      Ꭵ(arrayOfByte);
    }
    paramArrayOfByte2 = new byte[paramArrayOfByte1.length];
    int k = paramArrayOfByte1.length / this.aRr.length;
    this.aRU.ˊ(new KeyParameter(this.aRT));
    int i = 0;
    while (i < k)
    {
      this.aRU.update(this.aRr, 0, this.aRr.length);
      this.aRU.doFinal(this.aRr, 0);
      System.arraycopy(this.aRr, 0, paramArrayOfByte2, this.aRr.length * i, this.aRr.length);
      i += 1;
    }
    if (this.aRr.length * k < paramArrayOfByte2.length)
    {
      this.aRU.update(this.aRr, 0, this.aRr.length);
      this.aRU.doFinal(this.aRr, 0);
      System.arraycopy(this.aRr, 0, paramArrayOfByte2, this.aRr.length * k, paramArrayOfByte2.length - this.aRr.length * k);
    }
    Ꭵ(arrayOfByte);
    this.aRs += 1L;
    System.arraycopy(paramArrayOfByte2, 0, paramArrayOfByte1, 0, paramArrayOfByte1.length);
    return j;
  }
  
  public void ۦ(byte[] paramArrayOfByte)
  {
    Ꭵ(Arrays.ﹶ(this.aRm.lr(), paramArrayOfByte));
    this.aRs = 1L;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.drbg.HMacSP800DRBG
 * JD-Core Version:    0.7.0.1
 */