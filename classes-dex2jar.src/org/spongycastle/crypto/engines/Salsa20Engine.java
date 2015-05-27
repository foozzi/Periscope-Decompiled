package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.MaxBytesExceededException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.SkippingStreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Pack;
import org.spongycastle.util.Strings;

public class Salsa20Engine
  implements SkippingStreamCipher
{
  protected static final byte[] aLG = Strings.Ϊ("expand 32-byte k");
  protected static final byte[] aLH = Strings.Ϊ("expand 16-byte k");
  private boolean aJn = false;
  protected int[] aKI = new int[16];
  private byte[] aKN = new byte[64];
  protected int aLI;
  protected int[] aLJ = new int[16];
  private int aLK;
  private int aLL;
  private int aLM;
  private int index = 0;
  
  public Salsa20Engine()
  {
    this(20);
  }
  
  public Salsa20Engine(int paramInt)
  {
    if ((paramInt <= 0) || ((paramInt & 0x1) != 0)) {
      throw new IllegalArgumentException("'rounds' must be a positive, even number");
    }
    this.aLI = paramInt;
  }
  
  private void jG()
  {
    this.aLK = 0;
    this.aLL = 0;
    this.aLM = 0;
  }
  
  private boolean jH()
  {
    int i = this.aLK + 1;
    this.aLK = i;
    if (i == 0)
    {
      i = this.aLL + 1;
      this.aLL = i;
      if (i == 0)
      {
        i = this.aLM + 1;
        this.aLM = i;
        return (i & 0x20) != 0;
      }
    }
    return false;
  }
  
  protected static int ˁ(int paramInt1, int paramInt2)
  {
    return paramInt1 << paramInt2 | paramInt1 >>> -paramInt2;
  }
  
  public static void ˋ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (paramArrayOfInt1.length != 16) {
      throw new IllegalArgumentException();
    }
    if (paramArrayOfInt2.length != 16) {
      throw new IllegalArgumentException();
    }
    if (paramInt % 2 != 0) {
      throw new IllegalArgumentException("Number of rounds must be even");
    }
    int i8 = paramArrayOfInt1[0];
    int i5 = paramArrayOfInt1[1];
    int i2 = paramArrayOfInt1[2];
    int m = paramArrayOfInt1[3];
    int i11 = paramArrayOfInt1[4];
    int i4 = paramArrayOfInt1[5];
    int i1 = paramArrayOfInt1[6];
    int k = paramArrayOfInt1[7];
    int i10 = paramArrayOfInt1[8];
    int i7 = paramArrayOfInt1[9];
    int n = paramArrayOfInt1[10];
    int j = paramArrayOfInt1[11];
    int i9 = paramArrayOfInt1[12];
    int i6 = paramArrayOfInt1[13];
    int i3 = paramArrayOfInt1[14];
    int i = paramArrayOfInt1[15];
    while (paramInt > 0)
    {
      i11 ^= ˁ(i8 + i9, 7);
      i10 ^= ˁ(i11 + i8, 9);
      i9 ^= ˁ(i10 + i11, 13);
      i8 ^= ˁ(i9 + i10, 18);
      i7 ^= ˁ(i4 + i5, 7);
      i6 ^= ˁ(i7 + i4, 9);
      i5 ^= ˁ(i6 + i7, 13);
      i4 ^= ˁ(i5 + i6, 18);
      i3 ^= ˁ(n + i1, 7);
      i2 ^= ˁ(i3 + n, 9);
      i1 ^= ˁ(i2 + i3, 13);
      n ^= ˁ(i1 + i2, 18);
      m ^= ˁ(i + j, 7);
      k ^= ˁ(m + i, 9);
      j ^= ˁ(k + m, 13);
      i ^= ˁ(j + k, 18);
      i5 ^= ˁ(i8 + m, 7);
      i2 ^= ˁ(i5 + i8, 9);
      m ^= ˁ(i2 + i5, 13);
      i8 ^= ˁ(m + i2, 18);
      i1 ^= ˁ(i4 + i11, 7);
      k ^= ˁ(i1 + i4, 9);
      i11 ^= ˁ(k + i1, 13);
      i4 ^= ˁ(i11 + k, 18);
      j ^= ˁ(n + i7, 7);
      i10 ^= ˁ(j + n, 9);
      i7 ^= ˁ(i10 + j, 13);
      n ^= ˁ(i7 + i10, 18);
      i9 ^= ˁ(i + i3, 7);
      i6 ^= ˁ(i9 + i, 9);
      i3 ^= ˁ(i6 + i9, 13);
      i ^= ˁ(i3 + i6, 18);
      paramInt -= 2;
    }
    paramArrayOfInt1[0] += i8;
    paramArrayOfInt1[1] += i5;
    paramArrayOfInt1[2] += i2;
    paramArrayOfInt1[3] += m;
    paramArrayOfInt1[4] += i11;
    paramArrayOfInt1[5] += i4;
    paramArrayOfInt1[6] += i1;
    paramArrayOfInt1[7] += k;
    paramArrayOfInt1[8] += i10;
    paramArrayOfInt1[9] += i7;
    paramArrayOfInt1[10] += n;
    paramArrayOfInt1[11] += j;
    paramArrayOfInt1[12] += i9;
    paramArrayOfInt1[13] += i6;
    paramArrayOfInt1[14] += i3;
    paramArrayOfInt1[15] += i;
  }
  
  private boolean ﺪ(int paramInt)
  {
    this.aLK += paramInt;
    if ((this.aLK < paramInt) && (this.aLK >= 0))
    {
      paramInt = this.aLL + 1;
      this.aLL = paramInt;
      if (paramInt == 0)
      {
        paramInt = this.aLM + 1;
        this.aLM = paramInt;
        return (paramInt & 0x20) != 0;
      }
    }
    return false;
  }
  
  public long getPosition()
  {
    return jq() * 64L + this.index;
  }
  
  public String iG()
  {
    String str = "Salsa20";
    if (this.aLI != 20) {
      str = "Salsa20" + "/" + this.aLI;
    }
    return str;
  }
  
  protected int jF()
  {
    return 8;
  }
  
  protected void jo()
  {
    int[] arrayOfInt = this.aKI;
    int i = arrayOfInt[8] + 1;
    arrayOfInt[8] = i;
    if (i == 0)
    {
      arrayOfInt = this.aKI;
      arrayOfInt[9] += 1;
    }
  }
  
  protected void jp()
  {
    if ((this.aKI[8] == 0) && (this.aKI[9] == 0)) {
      throw new IllegalStateException("attempt to reduce counter past zero.");
    }
    int[] arrayOfInt = this.aKI;
    int i = arrayOfInt[8] - 1;
    arrayOfInt[8] = i;
    if (i == -1)
    {
      arrayOfInt = this.aKI;
      arrayOfInt[9] -= 1;
    }
  }
  
  protected long jq()
  {
    return this.aKI[9] << 32 | this.aKI[8] & 0xFFFFFFFF;
  }
  
  protected void jr()
  {
    int[] arrayOfInt = this.aKI;
    this.aKI[9] = 0;
    arrayOfInt[8] = 0;
  }
  
  public void reset()
  {
    this.index = 0;
    jG();
    jr();
    ˡ(this.aKN);
  }
  
  public long skip(long paramLong)
  {
    long l;
    if (paramLong >= 0L) {
      for (l = 0L; l < paramLong; l += 1L)
      {
        this.index = (this.index + 1 & 0x3F);
        if (this.index == 0) {
          jo();
        }
      }
    } else {
      for (l = 0L; l > paramLong; l -= 1L)
      {
        if (this.index == 0) {
          jp();
        }
        this.index = (this.index - 1 & 0x3F);
      }
    }
    ˡ(this.aKN);
    return paramLong;
  }
  
  public byte ʽ(byte paramByte)
  {
    if (jH()) {
      throw new MaxBytesExceededException("2^70 byte limit per IV; Change IV");
    }
    byte b = (byte)(this.aKN[this.index] ^ paramByte);
    this.index = (this.index + 1 & 0x3F);
    if (this.index == 0)
    {
      jo();
      ˡ(this.aKN);
    }
    return b;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof ParametersWithIV)) {
      throw new IllegalArgumentException(iG() + " Init parameters must include an IV");
    }
    Object localObject = (ParametersWithIV)paramCipherParameters;
    paramCipherParameters = ((ParametersWithIV)localObject).getIV();
    if ((paramCipherParameters == null) || (paramCipherParameters.length != jF())) {
      throw new IllegalArgumentException(iG() + " requires exactly " + jF() + " bytes of IV");
    }
    localObject = ((ParametersWithIV)localObject).lh();
    if (localObject == null)
    {
      if (!this.aJn) {
        throw new IllegalStateException(iG() + " KeyParameter can not be null for first initialisation");
      }
      ˏ(null, paramCipherParameters);
    }
    else if ((localObject instanceof KeyParameter))
    {
      ˏ(((KeyParameter)localObject).getKey(), paramCipherParameters);
    }
    else
    {
      throw new IllegalArgumentException(iG() + " Init parameters must contain a KeyParameter (or null for re-init)");
    }
    reset();
    this.aJn = true;
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (!this.aJn) {
      throw new IllegalStateException(iG() + " not initialised");
    }
    if (paramInt1 + paramInt2 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt3 + paramInt2 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (ﺪ(paramInt2)) {
      throw new MaxBytesExceededException("2^70 byte limit per IV would be exceeded; Change IV");
    }
    int i = 0;
    while (i < paramInt2)
    {
      paramArrayOfByte2[(i + paramInt3)] = ((byte)(this.aKN[this.index] ^ paramArrayOfByte1[(i + paramInt1)]));
      this.index = (this.index + 1 & 0x3F);
      if (this.index == 0)
      {
        jo();
        ˡ(this.aKN);
      }
      i += 1;
    }
    return paramInt2;
  }
  
  protected void ˏ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 != null)
    {
      if ((paramArrayOfByte1.length != 16) && (paramArrayOfByte1.length != 32)) {
        throw new IllegalArgumentException(iG() + " requires 128 bit or 256 bit key");
      }
      this.aKI[1] = Pack.ᐟ(paramArrayOfByte1, 0);
      this.aKI[2] = Pack.ᐟ(paramArrayOfByte1, 4);
      this.aKI[3] = Pack.ᐟ(paramArrayOfByte1, 8);
      this.aKI[4] = Pack.ᐟ(paramArrayOfByte1, 12);
      byte[] arrayOfByte;
      int i;
      if (paramArrayOfByte1.length == 32)
      {
        arrayOfByte = aLG;
        i = 16;
      }
      else
      {
        arrayOfByte = aLH;
        i = 0;
      }
      this.aKI[11] = Pack.ᐟ(paramArrayOfByte1, i);
      this.aKI[12] = Pack.ᐟ(paramArrayOfByte1, i + 4);
      this.aKI[13] = Pack.ᐟ(paramArrayOfByte1, i + 8);
      this.aKI[14] = Pack.ᐟ(paramArrayOfByte1, i + 12);
      this.aKI[0] = Pack.ᐟ(arrayOfByte, 0);
      this.aKI[5] = Pack.ᐟ(arrayOfByte, 4);
      this.aKI[10] = Pack.ᐟ(arrayOfByte, 8);
      this.aKI[15] = Pack.ᐟ(arrayOfByte, 12);
    }
    this.aKI[6] = Pack.ᐟ(paramArrayOfByte2, 0);
    this.aKI[7] = Pack.ᐟ(paramArrayOfByte2, 4);
  }
  
  protected void ˡ(byte[] paramArrayOfByte)
  {
    ˋ(this.aLI, this.aKI, this.aLJ);
    Pack.ˏ(this.aLJ, paramArrayOfByte, 0);
  }
  
  public long ו(long paramLong)
  {
    reset();
    return skip(paramLong);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.Salsa20Engine
 * JD-Core Version:    0.7.0.1
 */