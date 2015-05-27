package org.spongycastle.crypto.engines;

import java.lang.reflect.Array;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class RijndaelEngine
  implements BlockCipher
{
  private static final byte[] aGd;
  private static final byte[] aID;
  private static final int[] aIE;
  private static final byte[] aLn = { 0, 0, 25, 1, 50, 2, 26, -58, 75, -57, 27, 104, 51, -18, -33, 3, 100, 4, -32, 14, 52, -115, -127, -17, 76, 113, 8, -56, -8, 105, 28, -63, 125, -62, 29, -75, -7, -71, 39, 106, 77, -28, -90, 114, -102, -55, 9, 120, 101, 47, -118, 5, 33, 15, -31, 36, 18, -16, -126, 69, 53, -109, -38, -114, -106, -113, -37, -67, 54, -48, -50, -108, 19, 92, -46, -15, 64, 70, -125, 56, 102, -35, -3, 48, -65, 6, -117, 98, -77, 37, -30, -104, 34, -120, -111, 16, 126, 110, 72, -61, -93, -74, 30, 66, 58, 107, 40, 84, -6, -123, 61, -70, 43, 121, 10, 21, -101, -97, 94, -54, 78, -44, -84, -27, -13, 115, -89, 87, -81, 88, -88, 80, -12, -22, -42, 116, 79, -82, -23, -43, -25, -26, -83, -24, 44, -41, 117, 122, -21, 22, 11, -11, 89, -53, 95, -80, -100, -87, 81, -96, 127, 12, -10, 111, 23, -60, 73, -20, -40, 67, 31, 45, -92, 118, 123, -73, -52, -69, 62, 90, -5, 96, -79, -122, 59, 82, -95, 108, -86, 85, 41, -99, -105, -78, -121, -112, 97, -66, -36, -4, -68, -107, -49, -51, 55, 63, 91, -47, 83, 57, -124, 60, 65, -94, 109, 71, 20, 42, -98, 93, 86, -14, -45, -85, 68, 17, -110, -39, 35, 32, 46, -119, -76, 124, -72, 38, 119, -103, -29, -91, 103, 74, -19, -34, -59, 49, -2, 24, 13, 99, -116, -128, -64, -9, 112, 7 };
  private static final byte[] aLo = { 0, 3, 5, 15, 17, 51, 85, -1, 26, 46, 114, -106, -95, -8, 19, 53, 95, -31, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, 30, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, -39, 112, -112, -85, -26, 49, 83, -11, 4, 12, 20, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, -32, 59, 77, -41, 98, -90, -15, 8, 24, 40, 120, -120, -125, -98, -71, -48, 107, -67, -36, 127, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, 48, 80, -16, 11, 29, 39, 105, -69, -42, 97, -93, -2, 25, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, -96, -5, 22, 58, 78, -46, 109, -73, -62, 93, -25, 50, 86, -6, 21, 63, 65, -61, 94, -30, 61, 71, -55, 64, -64, 91, -19, 44, 116, -100, -65, -38, 117, -97, -70, -43, 100, -84, -17, 42, 126, -126, -99, -68, -33, 122, -114, -119, -128, -101, -74, -63, 88, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, 31, 33, 99, -91, -12, 7, 9, 27, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, 14, 18, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, 23, 57, 75, -35, 124, -124, -105, -94, -3, 28, 36, 108, -76, -57, 82, -10, 1, 3, 5, 15, 17, 51, 85, -1, 26, 46, 114, -106, -95, -8, 19, 53, 95, -31, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, 30, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, -39, 112, -112, -85, -26, 49, 83, -11, 4, 12, 20, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, -32, 59, 77, -41, 98, -90, -15, 8, 24, 40, 120, -120, -125, -98, -71, -48, 107, -67, -36, 127, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, 48, 80, -16, 11, 29, 39, 105, -69, -42, 97, -93, -2, 25, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, -96, -5, 22, 58, 78, -46, 109, -73, -62, 93, -25, 50, 86, -6, 21, 63, 65, -61, 94, -30, 61, 71, -55, 64, -64, 91, -19, 44, 116, -100, -65, -38, 117, -97, -70, -43, 100, -84, -17, 42, 126, -126, -99, -68, -33, 122, -114, -119, -128, -101, -74, -63, 88, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, 31, 33, 99, -91, -12, 7, 9, 27, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, 14, 18, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, 23, 57, 75, -35, 124, -124, -105, -94, -3, 28, 36, 108, -76, -57, 82, -10, 1 };
  static byte[][] aLp;
  static byte[][] aLq;
  private int BC;
  private boolean aEW;
  private int aIH;
  private long aLr;
  private int aLs;
  private long[][] aLt;
  private long aLu;
  private long aLv;
  private long aLw;
  private long aLx;
  private byte[] aLy;
  private byte[] aLz;
  
  static
  {
    aGd = new byte[] { 99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, 63, -9, -52, 52, -91, -27, -15, 113, -40, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, -128, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, -68, -74, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, 23, -60, -89, 126, 61, 100, 93, 25, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, 20, -34, 94, 11, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, 30, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22 };
    aID = new byte[] { 82, 9, 106, -43, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, 21, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, -68, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, 30, -113, -54, 63, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, 49, -79, 18, 16, 89, 39, -128, -20, 95, 96, 81, 127, -87, 25, -75, 74, 13, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, 77, -82, 42, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, -42, 38, -31, 105, 20, 99, 85, 33, 12, 125 };
    aIE = new int[] { 1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145 };
    byte[] arrayOfByte1 = { 0, 8, 16, 24 };
    byte[] arrayOfByte2 = { 0, 8, 16, 24 };
    byte[] arrayOfByte3 = { 0, 8, 24, 32 };
    aLp = new byte[][] { { 0, 8, 16, 24 }, arrayOfByte1, arrayOfByte2, { 0, 8, 16, 32 }, arrayOfByte3 };
    arrayOfByte1 = new byte[] { 0, 24, 16, 8 };
    arrayOfByte2 = new byte[] { 0, 40, 32, 24 };
    arrayOfByte3 = new byte[] { 0, 56, 40, 32 };
    aLq = new byte[][] { arrayOfByte1, { 0, 32, 24, 16 }, arrayOfByte2, { 0, 48, 40, 24 }, arrayOfByte3 };
  }
  
  public RijndaelEngine()
  {
    this(128);
  }
  
  public RijndaelEngine(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 128: 
      this.BC = 32;
      this.aLr = 4294967295L;
      this.aLy = aLp[0];
      this.aLz = aLq[0];
      break;
    case 160: 
      this.BC = 40;
      this.aLr = 1099511627775L;
      this.aLy = aLp[1];
      this.aLz = aLq[1];
      break;
    case 192: 
      this.BC = 48;
      this.aLr = 281474976710655L;
      this.aLy = aLp[2];
      this.aLz = aLq[2];
      break;
    case 224: 
      this.BC = 56;
      this.aLr = 72057594037927935L;
      this.aLy = aLp[3];
      this.aLz = aLq[3];
      break;
    case 256: 
      this.BC = 64;
      this.aLr = -1L;
      this.aLy = aLp[4];
      this.aLz = aLq[4];
      break;
    }
    throw new IllegalArgumentException("unknown blocksize to Rijndael");
    this.aLs = paramInt;
  }
  
  private void jD()
  {
    long l1 = 0L;
    long l2 = 0L;
    long l3 = 0L;
    long l4 = 0L;
    int i = 0;
    while (i < this.BC)
    {
      int j = (int)(this.aLu >> i & 0xFF);
      int k = (int)(this.aLv >> i & 0xFF);
      int m = (int)(this.aLw >> i & 0xFF);
      int n = (int)(this.aLx >> i & 0xFF);
      l4 |= ((ﬧ(j) ^ דּ(k) ^ m ^ n) & 0xFF) << i;
      l3 |= ((ﬧ(k) ^ דּ(m) ^ n ^ j) & 0xFF) << i;
      l2 |= ((ﬧ(m) ^ דּ(n) ^ j ^ k) & 0xFF) << i;
      l1 |= ((ﬧ(n) ^ דּ(j) ^ k ^ m) & 0xFF) << i;
      i += 8;
    }
    this.aLu = l4;
    this.aLv = l3;
    this.aLw = l2;
    this.aLx = l1;
  }
  
  private void jE()
  {
    long l1 = 0L;
    long l2 = 0L;
    long l3 = 0L;
    long l4 = 0L;
    int i = 0;
    while (i < this.BC)
    {
      int j = (int)(this.aLu >> i & 0xFF);
      int k = (int)(this.aLv >> i & 0xFF);
      int m = (int)(this.aLw >> i & 0xFF);
      int n = (int)(this.aLx >> i & 0xFF);
      if (j != 0) {
        j = aLn[(j & 0xFF)] & 0xFF;
      } else {
        j = -1;
      }
      if (k != 0) {
        k = aLn[(k & 0xFF)] & 0xFF;
      } else {
        k = -1;
      }
      if (m != 0) {
        m = aLn[(m & 0xFF)] & 0xFF;
      } else {
        m = -1;
      }
      if (n != 0) {
        n = aLn[(n & 0xFF)] & 0xFF;
      } else {
        n = -1;
      }
      l4 |= ((ﹱ(j) ^ ﭥ(k) ^ ﮆ(m) ^ ﭝ(n)) & 0xFF) << i;
      l3 |= ((ﹱ(k) ^ ﭥ(m) ^ ﮆ(n) ^ ﭝ(j)) & 0xFF) << i;
      l2 |= ((ﹱ(m) ^ ﭥ(n) ^ ﮆ(j) ^ ﭝ(k)) & 0xFF) << i;
      l1 |= ((ﹱ(n) ^ ﭥ(j) ^ ﮆ(k) ^ ﭝ(m)) & 0xFF) << i;
      i += 8;
    }
    this.aLu = l4;
    this.aLv = l3;
    this.aLw = l2;
    this.aLx = l1;
  }
  
  private void ʽ(long[] paramArrayOfLong)
  {
    this.aLu ^= paramArrayOfLong[0];
    this.aLv ^= paramArrayOfLong[1];
    this.aLw ^= paramArrayOfLong[2];
    this.aLx ^= paramArrayOfLong[3];
  }
  
  private void ˉ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    this.aLu = (paramArrayOfByte[paramInt] & 0xFF);
    paramInt = i + 1;
    this.aLv = (paramArrayOfByte[i] & 0xFF);
    int j = paramInt + 1;
    this.aLw = (paramArrayOfByte[paramInt] & 0xFF);
    i = j + 1;
    this.aLx = (paramArrayOfByte[j] & 0xFF);
    paramInt = 8;
    while (paramInt != this.BC)
    {
      long l = this.aLu;
      j = i + 1;
      this.aLu = (l | (paramArrayOfByte[i] & 0xFF) << paramInt);
      l = this.aLv;
      i = j + 1;
      this.aLv = (l | (paramArrayOfByte[j] & 0xFF) << paramInt);
      l = this.aLw;
      j = i + 1;
      this.aLw = (l | (paramArrayOfByte[i] & 0xFF) << paramInt);
      l = this.aLx;
      i = j + 1;
      this.aLx = (l | (paramArrayOfByte[j] & 0xFF) << paramInt);
      paramInt += 8;
    }
  }
  
  private long ˊ(long paramLong, byte[] paramArrayOfByte)
  {
    long l = 0L;
    int i = 0;
    while (i < this.BC)
    {
      l |= (paramArrayOfByte[((int)(paramLong >> i & 0xFF))] & 0xFF) << i;
      i += 8;
    }
    return l;
  }
  
  private void ˊ(long[][] paramArrayOfLong)
  {
    ʽ(paramArrayOfLong[0]);
    int i = 1;
    while (i < this.aIH)
    {
      ᑊ(aGd);
      ᐩ(this.aLy);
      jD();
      ʽ(paramArrayOfLong[i]);
      i += 1;
    }
    ᑊ(aGd);
    ᐩ(this.aLy);
    ʽ(paramArrayOfLong[this.aIH]);
  }
  
  private long ˋ(long paramLong, int paramInt)
  {
    return (paramLong >>> paramInt | paramLong << this.BC - paramInt) & this.aLr;
  }
  
  private void ˋ(long[][] paramArrayOfLong)
  {
    ʽ(paramArrayOfLong[this.aIH]);
    ᑊ(aID);
    ᐩ(this.aLz);
    int i = this.aIH - 1;
    while (i > 0)
    {
      ʽ(paramArrayOfLong[i]);
      jE();
      ᑊ(aID);
      ᐩ(this.aLz);
      i -= 1;
    }
    ʽ(paramArrayOfLong[0]);
  }
  
  private void ˌ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt;
    paramInt = 0;
    while (paramInt != this.BC)
    {
      int j = i + 1;
      paramArrayOfByte[i] = ((byte)(int)(this.aLu >> paramInt));
      i = j + 1;
      paramArrayOfByte[j] = ((byte)(int)(this.aLv >> paramInt));
      j = i + 1;
      paramArrayOfByte[i] = ((byte)(int)(this.aLw >> paramInt));
      i = j + 1;
      paramArrayOfByte[j] = ((byte)(int)(this.aLx >> paramInt));
      paramInt += 8;
    }
  }
  
  private void ᐩ(byte[] paramArrayOfByte)
  {
    this.aLv = ˋ(this.aLv, paramArrayOfByte[1]);
    this.aLw = ˋ(this.aLw, paramArrayOfByte[2]);
    this.aLx = ˋ(this.aLx, paramArrayOfByte[3]);
  }
  
  private void ᑊ(byte[] paramArrayOfByte)
  {
    this.aLu = ˊ(this.aLu, paramArrayOfByte);
    this.aLv = ˊ(this.aLv, paramArrayOfByte);
    this.aLw = ˊ(this.aLw, paramArrayOfByte);
    this.aLx = ˊ(this.aLx, paramArrayOfByte);
  }
  
  private long[][] ᕀ(byte[] paramArrayOfByte)
  {
    int i1 = 0;
    int j = paramArrayOfByte.length * 8;
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, new int[] { 4, 64 });
    long[][] arrayOfLong = (long[][])Array.newInstance(Long.TYPE, new int[] { 15, 4 });
    int i;
    switch (j)
    {
    default: 
      break;
    case 128: 
      i = 4;
      break;
    case 160: 
      i = 5;
      break;
    case 192: 
      i = 6;
      break;
    case 224: 
      i = 7;
      break;
    case 256: 
      i = 8;
      break;
    }
    throw new IllegalArgumentException("Key length not 128/160/192/224/256 bits.");
    if (j >= this.aLs) {
      this.aIH = (i + 6);
    } else {
      this.aIH = (this.BC / 8 + 6);
    }
    j = 0;
    int k = 0;
    int m;
    Object localObject;
    for (;;)
    {
      m = j;
      if (k >= paramArrayOfByte.length) {
        break;
      }
      localObject = arrayOfByte[(k % 4)];
      n = k / 4;
      j = m + 1;
      localObject[n] = paramArrayOfByte[m];
      k += 1;
    }
    j = 0;
    int n = 0;
    for (;;)
    {
      m = j;
      k = i1;
      if (n >= i) {
        break;
      }
      m = j;
      k = i1;
      if (j >= (this.aIH + 1) * (this.BC / 8)) {
        break;
      }
      k = 0;
      while (k < 4)
      {
        paramArrayOfByte = arrayOfLong[(j / (this.BC / 8))];
        paramArrayOfByte[k] |= (arrayOfByte[k][n] & 0xFF) << j * 8 % this.BC;
        k += 1;
      }
      n += 1;
      j += 1;
    }
    while (m < (this.aIH + 1) * (this.BC / 8))
    {
      j = 0;
      while (j < 4)
      {
        paramArrayOfByte = arrayOfByte[j];
        paramArrayOfByte[0] = ((byte)(paramArrayOfByte[0] ^ aGd[(arrayOfByte[((j + 1) % 4)][(i - 1)] & 0xFF)]));
        j += 1;
      }
      paramArrayOfByte = arrayOfByte[0];
      j = paramArrayOfByte[0];
      localObject = aIE;
      n = k + 1;
      paramArrayOfByte[0] = ((byte)(j ^ localObject[k]));
      if (i <= 6)
      {
        j = 1;
        while (j < i)
        {
          k = 0;
          while (k < 4)
          {
            paramArrayOfByte = arrayOfByte[k];
            paramArrayOfByte[j] = ((byte)(paramArrayOfByte[j] ^ arrayOfByte[k][(j - 1)]));
            k += 1;
          }
          j += 1;
        }
      }
      else
      {
        j = 1;
        while (j < 4)
        {
          k = 0;
          while (k < 4)
          {
            paramArrayOfByte = arrayOfByte[k];
            paramArrayOfByte[j] = ((byte)(paramArrayOfByte[j] ^ arrayOfByte[k][(j - 1)]));
            k += 1;
          }
          j += 1;
        }
        j = 0;
        while (j < 4)
        {
          paramArrayOfByte = arrayOfByte[j];
          paramArrayOfByte[4] = ((byte)(paramArrayOfByte[4] ^ aGd[(arrayOfByte[j][3] & 0xFF)]));
          j += 1;
        }
        j = 5;
        while (j < i)
        {
          k = 0;
          while (k < 4)
          {
            paramArrayOfByte = arrayOfByte[k];
            paramArrayOfByte[j] = ((byte)(paramArrayOfByte[j] ^ arrayOfByte[k][(j - 1)]));
            k += 1;
          }
          j += 1;
        }
      }
      j = 0;
      while ((j < i) && (m < (this.aIH + 1) * (this.BC / 8)))
      {
        k = 0;
        while (k < 4)
        {
          paramArrayOfByte = arrayOfLong[(m / (this.BC / 8))];
          paramArrayOfByte[k] |= (arrayOfByte[k][j] & 0xFF) << m * 8 % this.BC;
          k += 1;
        }
        j += 1;
        m += 1;
      }
      k = n;
    }
    return arrayOfLong;
  }
  
  private byte ﬧ(int paramInt)
  {
    if (paramInt != 0) {
      return aLo[((aLn[paramInt] & 0xFF) + 25)];
    }
    return 0;
  }
  
  private byte דּ(int paramInt)
  {
    if (paramInt != 0) {
      return aLo[((aLn[paramInt] & 0xFF) + 1)];
    }
    return 0;
  }
  
  private byte ﭝ(int paramInt)
  {
    if (paramInt >= 0) {
      return aLo[(paramInt + 199)];
    }
    return 0;
  }
  
  private byte ﭥ(int paramInt)
  {
    if (paramInt >= 0) {
      return aLo[(paramInt + 104)];
    }
    return 0;
  }
  
  private byte ﮆ(int paramInt)
  {
    if (paramInt >= 0) {
      return aLo[(paramInt + 238)];
    }
    return 0;
  }
  
  private byte ﹱ(int paramInt)
  {
    if (paramInt >= 0) {
      return aLo[(paramInt + 223)];
    }
    return 0;
  }
  
  public int getBlockSize()
  {
    return this.BC / 2;
  }
  
  public String iG()
  {
    return "Rijndael";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aLt == null) {
      throw new IllegalStateException("Rijndael engine not initialised");
    }
    if (this.BC / 2 + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (this.BC / 2 + paramInt2 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aEW)
    {
      ˉ(paramArrayOfByte1, paramInt1);
      ˊ(this.aLt);
      ˌ(paramArrayOfByte2, paramInt2);
    }
    else
    {
      ˉ(paramArrayOfByte1, paramInt1);
      ˋ(this.aLt);
      ˌ(paramArrayOfByte2, paramInt2);
    }
    return this.BC / 2;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof KeyParameter))
    {
      this.aLt = ᕀ(((KeyParameter)paramCipherParameters).getKey());
      this.aEW = paramBoolean;
      return;
    }
    throw new IllegalArgumentException("invalid parameter passed to Rijndael init - " + paramCipherParameters.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RijndaelEngine
 * JD-Core Version:    0.7.0.1
 */