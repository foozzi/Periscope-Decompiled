package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class Shacal2Engine
  implements BlockCipher
{
  private static final int[] aGN = { 1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998 };
  private boolean aEW = false;
  private int[] aJE = null;
  
  private void ˊ(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    while (paramInt1 < paramArrayOfByte.length / 4)
    {
      int j = paramInt2 + 1;
      i = paramArrayOfByte[paramInt2];
      paramInt2 = j + 1;
      j = paramArrayOfByte[j];
      int k = paramInt2 + 1;
      int m = paramArrayOfByte[paramInt2];
      paramInt2 = k + 1;
      paramArrayOfInt[paramInt1] = ((i & 0xFF) << 24 | (j & 0xFF) << 16 | (m & 0xFF) << 8 | paramArrayOfByte[k] & 0xFF);
      paramInt1 += 1;
    }
  }
  
  private void ˋ(int[] paramArrayOfInt, byte[] paramArrayOfByte, int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (paramInt < paramArrayOfInt.length)
    {
      j = i + 1;
      paramArrayOfByte[i] = ((byte)(paramArrayOfInt[paramInt] >>> 24));
      i = j + 1;
      paramArrayOfByte[j] = ((byte)(paramArrayOfInt[paramInt] >>> 16));
      j = i + 1;
      paramArrayOfByte[i] = ((byte)(paramArrayOfInt[paramInt] >>> 8));
      i = j + 1;
      paramArrayOfByte[j] = ((byte)paramArrayOfInt[paramInt]);
      paramInt += 1;
    }
  }
  
  public int getBlockSize()
  {
    return 32;
  }
  
  public String iG()
  {
    return "Shacal2";
  }
  
  public void reset() {}
  
  public void ˇ(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte.length == 0) || (paramArrayOfByte.length > 64) || (paramArrayOfByte.length < 16) || (paramArrayOfByte.length % 8 != 0)) {
      throw new IllegalArgumentException("Shacal2-key must be 16 - 64 bytes and multiple of 8");
    }
    ˊ(paramArrayOfByte, this.aJE, 0, 0);
    int i = 16;
    while (i < 64)
    {
      this.aJE[i] = (((this.aJE[(i - 2)] >>> 17 | this.aJE[(i - 2)] << -17) ^ (this.aJE[(i - 2)] >>> 19 | this.aJE[(i - 2)] << -19) ^ this.aJE[(i - 2)] >>> 10) + this.aJE[(i - 7)] + ((this.aJE[(i - 15)] >>> 7 | this.aJE[(i - 15)] << -7) ^ (this.aJE[(i - 15)] >>> 18 | this.aJE[(i - 15)] << -18) ^ this.aJE[(i - 15)] >>> 3) + this.aJE[(i - 16)]);
      i += 1;
    }
  }
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aJE == null) {
      throw new IllegalStateException("Shacal2 not initialised");
    }
    if (paramInt1 + 32 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 32 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aEW) {
      ˋ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    } else {
      ˎ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return 32;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof KeyParameter)) {
      throw new IllegalArgumentException("only simple KeyParameter expected.");
    }
    this.aEW = paramBoolean;
    this.aJE = new int[64];
    ˇ(((KeyParameter)paramCipherParameters).getKey());
  }
  
  public void ˋ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int[] arrayOfInt = new int[8];
    ˊ(paramArrayOfByte1, arrayOfInt, paramInt1, 0);
    paramInt1 = 0;
    while (paramInt1 < 64)
    {
      int i = ((arrayOfInt[4] >>> 6 | arrayOfInt[4] << -6) ^ (arrayOfInt[4] >>> 11 | arrayOfInt[4] << -11) ^ (arrayOfInt[4] >>> 25 | arrayOfInt[4] << -25)) + (arrayOfInt[4] & arrayOfInt[5] ^ (arrayOfInt[4] ^ 0xFFFFFFFF) & arrayOfInt[6]) + arrayOfInt[7] + aGN[paramInt1] + this.aJE[paramInt1];
      arrayOfInt[7] = arrayOfInt[6];
      arrayOfInt[6] = arrayOfInt[5];
      arrayOfInt[5] = arrayOfInt[4];
      arrayOfInt[4] = (arrayOfInt[3] + i);
      arrayOfInt[3] = arrayOfInt[2];
      arrayOfInt[2] = arrayOfInt[1];
      arrayOfInt[1] = arrayOfInt[0];
      arrayOfInt[0] = (((arrayOfInt[0] >>> 2 | arrayOfInt[0] << -2) ^ (arrayOfInt[0] >>> 13 | arrayOfInt[0] << -13) ^ (arrayOfInt[0] >>> 22 | arrayOfInt[0] << -22)) + i + (arrayOfInt[0] & arrayOfInt[2] ^ arrayOfInt[0] & arrayOfInt[3] ^ arrayOfInt[2] & arrayOfInt[3]));
      paramInt1 += 1;
    }
    ˋ(arrayOfInt, paramArrayOfByte2, paramInt2);
  }
  
  public void ˎ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int[] arrayOfInt = new int[8];
    ˊ(paramArrayOfByte1, arrayOfInt, paramInt1, 0);
    paramInt1 = 63;
    while (paramInt1 > -1)
    {
      int i = arrayOfInt[0] - ((arrayOfInt[1] >>> 2 | arrayOfInt[1] << -2) ^ (arrayOfInt[1] >>> 13 | arrayOfInt[1] << -13) ^ (arrayOfInt[1] >>> 22 | arrayOfInt[1] << -22)) - (arrayOfInt[1] & arrayOfInt[2] ^ arrayOfInt[1] & arrayOfInt[3] ^ arrayOfInt[2] & arrayOfInt[3]);
      arrayOfInt[0] = arrayOfInt[1];
      arrayOfInt[1] = arrayOfInt[2];
      arrayOfInt[2] = arrayOfInt[3];
      arrayOfInt[3] = (arrayOfInt[4] - i);
      arrayOfInt[4] = arrayOfInt[5];
      arrayOfInt[5] = arrayOfInt[6];
      arrayOfInt[6] = arrayOfInt[7];
      arrayOfInt[7] = (i - aGN[paramInt1] - this.aJE[paramInt1] - ((arrayOfInt[4] >>> 6 | arrayOfInt[4] << -6) ^ (arrayOfInt[4] >>> 11 | arrayOfInt[4] << -11) ^ (arrayOfInt[4] >>> 25 | arrayOfInt[4] << -25)) - (arrayOfInt[4] & arrayOfInt[5] ^ (arrayOfInt[4] ^ 0xFFFFFFFF) & arrayOfInt[6]));
      paramInt1 -= 1;
    }
    ˋ(arrayOfInt, paramArrayOfByte2, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.Shacal2Engine
 * JD-Core Version:    0.7.0.1
 */