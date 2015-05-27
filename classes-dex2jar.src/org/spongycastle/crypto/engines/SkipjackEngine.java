package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class SkipjackEngine
  implements BlockCipher
{
  static short[] aLR = { 163, 215, 9, 131, 248, 72, 246, 244, 179, 33, 21, 120, 153, 177, 175, 249, 231, 45, 77, 138, 206, 76, 202, 46, 82, 149, 217, 30, 78, 56, 68, 40, 10, 223, 2, 160, 23, 241, 96, 104, 18, 183, 122, 195, 233, 250, 61, 83, 150, 132, 107, 186, 242, 99, 154, 25, 124, 174, 229, 245, 247, 22, 106, 162, 57, 182, 123, 15, 193, 147, 129, 27, 238, 180, 26, 234, 208, 145, 47, 184, 85, 185, 218, 133, 63, 65, 191, 224, 90, 88, 128, 95, 102, 11, 216, 144, 53, 213, 192, 167, 51, 6, 101, 105, 69, 0, 148, 86, 109, 152, 155, 118, 151, 252, 178, 194, 176, 254, 219, 32, 225, 235, 214, 228, 221, 71, 74, 29, 66, 237, 158, 110, 73, 60, 205, 67, 39, 210, 7, 212, 222, 199, 103, 24, 137, 203, 48, 31, 141, 198, 143, 170, 200, 116, 220, 201, 93, 92, 49, 164, 112, 136, 97, 44, 159, 13, 43, 135, 80, 130, 84, 100, 38, 125, 3, 64, 52, 75, 28, 115, 209, 196, 253, 59, 204, 251, 127, 171, 230, 62, 91, 165, 173, 4, 35, 156, 20, 81, 34, 240, 41, 121, 113, 126, 255, 140, 14, 226, 12, 239, 188, 114, 117, 111, 55, 161, 236, 211, 142, 98, 139, 134, 16, 232, 8, 119, 17, 190, 146, 79, 36, 197, 50, 54, 157, 207, 243, 166, 187, 172, 94, 108, 169, 19, 87, 37, 181, 227, 189, 168, 58, 1, 5, 89, 42, 70 };
  private boolean aIY;
  private int[] aLS;
  private int[] aLT;
  private int[] aLU;
  private int[] aLV;
  
  private int ˤ(int paramInt1, int paramInt2)
  {
    int i = paramInt2 & 0xFF;
    paramInt2 = aLR[(this.aLS[paramInt1] ^ i)] ^ paramInt2 >> 8 & 0xFF;
    i = aLR[(this.aLT[paramInt1] ^ paramInt2)] ^ i;
    paramInt2 = aLR[(this.aLU[paramInt1] ^ i)] ^ paramInt2;
    return (paramInt2 << 8) + (aLR[(this.aLV[paramInt1] ^ paramInt2)] ^ i);
  }
  
  private int ι(int paramInt1, int paramInt2)
  {
    int i = paramInt2 >> 8 & 0xFF;
    paramInt2 = aLR[(this.aLV[paramInt1] ^ i)] ^ paramInt2 & 0xFF;
    i = aLR[(this.aLU[paramInt1] ^ paramInt2)] ^ i;
    paramInt2 = aLR[(this.aLT[paramInt1] ^ i)] ^ paramInt2;
    return ((aLR[(this.aLS[paramInt1] ^ paramInt2)] ^ i) << 8) + paramInt2;
  }
  
  public int getBlockSize()
  {
    return 8;
  }
  
  public String iG()
  {
    return "SKIPJACK";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aLT == null) {
      throw new IllegalStateException("SKIPJACK engine not initialised");
    }
    if (paramInt1 + 8 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 8 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aIY) {
      ˏ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    } else {
      ᐝ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return 8;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof KeyParameter)) {
      throw new IllegalArgumentException("invalid parameter passed to SKIPJACK init - " + paramCipherParameters.getClass().getName());
    }
    paramCipherParameters = ((KeyParameter)paramCipherParameters).getKey();
    this.aIY = paramBoolean;
    this.aLS = new int[32];
    this.aLT = new int[32];
    this.aLU = new int[32];
    this.aLV = new int[32];
    int i = 0;
    while (i < 32)
    {
      this.aLS[i] = (paramCipherParameters[(i * 4 % 10)] & 0xFF);
      this.aLT[i] = (paramCipherParameters[((i * 4 + 1) % 10)] & 0xFF);
      this.aLU[i] = (paramCipherParameters[((i * 4 + 2) % 10)] & 0xFF);
      this.aLV[i] = (paramCipherParameters[((i * 4 + 3) % 10)] & 0xFF);
      i += 1;
    }
  }
  
  public int ˏ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int k = (paramArrayOfByte1[(paramInt1 + 0)] << 8) + (paramArrayOfByte1[(paramInt1 + 1)] & 0xFF);
    int i1 = (paramArrayOfByte1[(paramInt1 + 2)] << 8) + (paramArrayOfByte1[(paramInt1 + 3)] & 0xFF);
    int i = (paramArrayOfByte1[(paramInt1 + 4)] << 8) + (paramArrayOfByte1[(paramInt1 + 5)] & 0xFF);
    int m = (paramArrayOfByte1[(paramInt1 + 6)] << 8) + (paramArrayOfByte1[(paramInt1 + 7)] & 0xFF);
    int j = 0;
    int n = 0;
    paramInt1 = i1;
    while (n < 2)
    {
      i1 = 0;
      int i2;
      while (i1 < 8)
      {
        i2 = i;
        i = paramInt1;
        paramInt1 = ˤ(j, k);
        k = paramInt1 ^ m ^ j + 1;
        j += 1;
        i1 += 1;
        m = i2;
      }
      i1 = 0;
      while (i1 < 8)
      {
        i2 = i;
        i = k ^ paramInt1 ^ j + 1;
        paramInt1 = ˤ(j, k);
        k = m;
        j += 1;
        i1 += 1;
        m = i2;
      }
      n += 1;
    }
    paramArrayOfByte2[(paramInt2 + 0)] = ((byte)(k >> 8));
    paramArrayOfByte2[(paramInt2 + 1)] = ((byte)k);
    paramArrayOfByte2[(paramInt2 + 2)] = ((byte)(paramInt1 >> 8));
    paramArrayOfByte2[(paramInt2 + 3)] = ((byte)paramInt1);
    paramArrayOfByte2[(paramInt2 + 4)] = ((byte)(i >> 8));
    paramArrayOfByte2[(paramInt2 + 5)] = ((byte)i);
    paramArrayOfByte2[(paramInt2 + 6)] = ((byte)(m >> 8));
    paramArrayOfByte2[(paramInt2 + 7)] = ((byte)m);
    return 8;
  }
  
  public int ᐝ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i1 = (paramArrayOfByte1[(paramInt1 + 0)] << 8) + (paramArrayOfByte1[(paramInt1 + 1)] & 0xFF);
    int k = (paramArrayOfByte1[(paramInt1 + 2)] << 8) + (paramArrayOfByte1[(paramInt1 + 3)] & 0xFF);
    int m = (paramArrayOfByte1[(paramInt1 + 4)] << 8) + (paramArrayOfByte1[(paramInt1 + 5)] & 0xFF);
    int i = (paramArrayOfByte1[(paramInt1 + 6)] << 8) + (paramArrayOfByte1[(paramInt1 + 7)] & 0xFF);
    int j = 31;
    int n = 0;
    paramInt1 = i1;
    while (n < 2)
    {
      i1 = 0;
      int i2;
      while (i1 < 8)
      {
        i2 = i;
        i = paramInt1;
        paramInt1 = ι(j, k);
        k = paramInt1 ^ m ^ j + 1;
        j -= 1;
        i1 += 1;
        m = i2;
      }
      i1 = 0;
      while (i1 < 8)
      {
        i2 = k ^ paramInt1 ^ j + 1;
        paramInt1 = ι(j, k);
        k = m;
        j -= 1;
        i1 += 1;
        m = i;
        i = i2;
      }
      n += 1;
    }
    paramArrayOfByte2[(paramInt2 + 0)] = ((byte)(paramInt1 >> 8));
    paramArrayOfByte2[(paramInt2 + 1)] = ((byte)paramInt1);
    paramArrayOfByte2[(paramInt2 + 2)] = ((byte)(k >> 8));
    paramArrayOfByte2[(paramInt2 + 3)] = ((byte)k);
    paramArrayOfByte2[(paramInt2 + 4)] = ((byte)(m >> 8));
    paramArrayOfByte2[(paramInt2 + 5)] = ((byte)m);
    paramArrayOfByte2[(paramInt2 + 6)] = ((byte)(i >> 8));
    paramArrayOfByte2[(paramInt2 + 7)] = ((byte)i);
    return 8;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.SkipjackEngine
 * JD-Core Version:    0.7.0.1
 */