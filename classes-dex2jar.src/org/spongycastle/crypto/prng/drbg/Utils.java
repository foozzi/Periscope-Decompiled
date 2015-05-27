package org.spongycastle.crypto.prng.drbg;

import java.util.Hashtable;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.util.Integers;

class Utils
{
  static final Hashtable aRY = new Hashtable();
  
  static
  {
    aRY.put("SHA-1", Integers.valueOf(128));
    aRY.put("SHA-224", Integers.valueOf(192));
    aRY.put("SHA-256", Integers.valueOf(256));
    aRY.put("SHA-384", Integers.valueOf(256));
    aRY.put("SHA-512", Integers.valueOf(256));
    aRY.put("SHA-512/224", Integers.valueOf(192));
    aRY.put("SHA-512/256", Integers.valueOf(256));
  }
  
  static boolean ʳ(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte != null) && (paramArrayOfByte.length > paramInt);
  }
  
  static int ˊ(Mac paramMac)
  {
    paramMac = paramMac.iG();
    return ((Integer)aRY.get(paramMac.substring(0, paramMac.indexOf("/")))).intValue();
  }
  
  static byte[] ˊ(Digest paramDigest, byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte1 = new byte[(paramInt + 7) / 8];
    int m = arrayOfByte1.length / paramDigest.iJ();
    int j = 1;
    byte[] arrayOfByte2 = new byte[paramDigest.iJ()];
    int i = 0;
    int k;
    while (i <= m)
    {
      paramDigest.update((byte)j);
      paramDigest.update((byte)(paramInt >> 24));
      paramDigest.update((byte)(paramInt >> 16));
      paramDigest.update((byte)(paramInt >> 8));
      paramDigest.update((byte)paramInt);
      paramDigest.update(paramArrayOfByte, 0, paramArrayOfByte.length);
      paramDigest.doFinal(arrayOfByte2, 0);
      if (arrayOfByte1.length - arrayOfByte2.length * i > arrayOfByte2.length) {
        k = arrayOfByte2.length;
      } else {
        k = arrayOfByte1.length - arrayOfByte2.length * i;
      }
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, arrayOfByte2.length * i, k);
      j += 1;
      i += 1;
    }
    if (paramInt % 8 != 0)
    {
      k = 8 - paramInt % 8;
      i = 0;
      paramInt = 0;
      while (paramInt != arrayOfByte1.length)
      {
        j = arrayOfByte1[paramInt] & 0xFF;
        arrayOfByte1[paramInt] = ((byte)(j >>> k | i << 8 - k));
        i = j;
        paramInt += 1;
      }
    }
    return arrayOfByte1;
  }
  
  static int ˋ(Digest paramDigest)
  {
    return ((Integer)aRY.get(paramDigest.iG())).intValue();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.drbg.Utils
 * JD-Core Version:    0.7.0.1
 */