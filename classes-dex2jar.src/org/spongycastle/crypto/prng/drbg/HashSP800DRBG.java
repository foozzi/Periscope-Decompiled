package org.spongycastle.crypto.prng.drbg;

import java.util.Hashtable;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.prng.EntropySource;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;

public class HashSP800DRBG
  implements SP80090DRBG
{
  private static final byte[] aRV = { 1 };
  private static final Hashtable aRW = new Hashtable();
  private Digest aRK;
  private int aRL;
  private byte[] aRX;
  private EntropySource aRm;
  private int aRp;
  private byte[] aRr;
  private long aRs;
  
  static
  {
    aRW.put("SHA-1", Integers.valueOf(440));
    aRW.put("SHA-224", Integers.valueOf(440));
    aRW.put("SHA-256", Integers.valueOf(440));
    aRW.put("SHA-512/256", Integers.valueOf(440));
    aRW.put("SHA-512/224", Integers.valueOf(440));
    aRW.put("SHA-384", Integers.valueOf(888));
    aRW.put("SHA-512", Integers.valueOf(888));
  }
  
  public HashSP800DRBG(Digest paramDigest, int paramInt, EntropySource paramEntropySource, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramInt > Utils.ˋ(paramDigest)) {
      throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
    }
    if (paramEntropySource.ls() < paramInt) {
      throw new IllegalArgumentException("Not enough entropy for security strength required");
    }
    this.aRK = paramDigest;
    this.aRm = paramEntropySource;
    this.aRL = paramInt;
    this.aRp = ((Integer)aRW.get(paramDigest.iG())).intValue();
    paramDigest = Arrays.ˏ(paramEntropySource.lr(), paramArrayOfByte2, paramArrayOfByte1);
    this.aRr = Utils.ˊ(this.aRK, paramDigest, this.aRp);
    paramDigest = new byte[this.aRr.length + 1];
    System.arraycopy(this.aRr, 0, paramDigest, 1, this.aRr.length);
    this.aRX = Utils.ˊ(this.aRK, paramDigest, this.aRp);
    this.aRs = 1L;
  }
  
  private void ˈ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    int j = 1;
    int k;
    while (j <= paramArrayOfByte2.length)
    {
      k = (paramArrayOfByte1[(paramArrayOfByte1.length - j)] & 0xFF) + (paramArrayOfByte2[(paramArrayOfByte2.length - j)] & 0xFF) + i;
      if (k > 255) {
        i = 1;
      } else {
        i = 0;
      }
      paramArrayOfByte1[(paramArrayOfByte1.length - j)] = ((byte)k);
      j += 1;
    }
    j = paramArrayOfByte2.length + 1;
    while (j <= paramArrayOfByte1.length)
    {
      k = (paramArrayOfByte1[(paramArrayOfByte1.length - j)] & 0xFF) + i;
      if (k > 255) {
        i = 1;
      } else {
        i = 0;
      }
      paramArrayOfByte1[(paramArrayOfByte1.length - j)] = ((byte)k);
      j += 1;
    }
  }
  
  private void ˉ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.aRK.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
    this.aRK.doFinal(paramArrayOfByte2, 0);
  }
  
  private byte[] ᐤ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[this.aRK.iJ()];
    ˉ(paramArrayOfByte, arrayOfByte);
    return arrayOfByte;
  }
  
  private byte[] ｰ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.aRK.iJ();
    int j = paramInt / 8 / i;
    byte[] arrayOfByte1 = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 0, paramArrayOfByte.length);
    paramArrayOfByte = new byte[paramInt / 8];
    byte[] arrayOfByte2 = new byte[this.aRK.iJ()];
    paramInt = 0;
    while (paramInt <= j)
    {
      ˉ(arrayOfByte1, arrayOfByte2);
      if (paramArrayOfByte.length - arrayOfByte2.length * paramInt > arrayOfByte2.length) {
        i = arrayOfByte2.length;
      } else {
        i = paramArrayOfByte.length - arrayOfByte2.length * paramInt;
      }
      System.arraycopy(arrayOfByte2, 0, paramArrayOfByte, arrayOfByte2.length * paramInt, i);
      ˈ(arrayOfByte1, aRV);
      paramInt += 1;
    }
    return paramArrayOfByte;
  }
  
  public int ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, boolean paramBoolean)
  {
    int n = paramArrayOfByte1.length * 8;
    if (n > 262144) {
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
    if (arrayOfByte != null)
    {
      paramArrayOfByte2 = new byte[this.aRr.length + 1 + arrayOfByte.length];
      paramArrayOfByte2[0] = 2;
      System.arraycopy(this.aRr, 0, paramArrayOfByte2, 1, this.aRr.length);
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte2, this.aRr.length + 1, arrayOfByte.length);
      paramArrayOfByte2 = ᐤ(paramArrayOfByte2);
      ˈ(this.aRr, paramArrayOfByte2);
    }
    paramArrayOfByte2 = ｰ(this.aRr, n);
    arrayOfByte = new byte[this.aRr.length + 1];
    System.arraycopy(this.aRr, 0, arrayOfByte, 1, this.aRr.length);
    arrayOfByte[0] = 3;
    arrayOfByte = ᐤ(arrayOfByte);
    ˈ(this.aRr, arrayOfByte);
    ˈ(this.aRr, this.aRX);
    int i = (byte)(int)(this.aRs >> 24);
    int j = (byte)(int)(this.aRs >> 16);
    int k = (byte)(int)(this.aRs >> 8);
    int m = (byte)(int)this.aRs;
    ˈ(this.aRr, new byte[] { i, j, k, m });
    this.aRs += 1L;
    System.arraycopy(paramArrayOfByte2, 0, paramArrayOfByte1, 0, paramArrayOfByte1.length);
    return n;
  }
  
  public void ۦ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = this.aRm.lr();
    paramArrayOfByte = Arrays.ˎ(aRV, this.aRr, arrayOfByte, paramArrayOfByte);
    this.aRr = Utils.ˊ(this.aRK, paramArrayOfByte, this.aRp);
    paramArrayOfByte = new byte[this.aRr.length + 1];
    paramArrayOfByte[0] = 0;
    System.arraycopy(this.aRr, 0, paramArrayOfByte, 1, this.aRr.length);
    this.aRX = Utils.ˊ(this.aRK, paramArrayOfByte, this.aRp);
    this.aRs = 1L;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.drbg.HashSP800DRBG
 * JD-Core Version:    0.7.0.1
 */