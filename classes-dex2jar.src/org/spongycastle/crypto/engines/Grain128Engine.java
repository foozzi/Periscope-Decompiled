package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class Grain128Engine
  implements StreamCipher
{
  private byte[] aIZ;
  private boolean aJn = false;
  private byte[] aKm;
  private byte[] aKn;
  private int[] aKo;
  private int[] aKp;
  private int aKq;
  private int index = 4;
  
  private void js()
  {
    int i = 0;
    while (i < 8)
    {
      this.aKq = jv();
      this.aKp = ˎ(this.aKp, jt() ^ this.aKo[0] ^ this.aKq);
      this.aKo = ˎ(this.aKo, ju() ^ this.aKq);
      i += 1;
    }
    this.aJn = true;
  }
  
  private int jt()
  {
    int i = this.aKp[0];
    int j = this.aKp[0];
    int k = this.aKp[1];
    int m = this.aKp[0];
    int n = this.aKp[1];
    int i1 = this.aKp[0];
    int i2 = this.aKp[1];
    int i3 = this.aKp[0];
    int i4 = this.aKp[1];
    int i5 = this.aKp[0];
    int i6 = this.aKp[1];
    int i7 = this.aKp[0];
    int i8 = this.aKp[1];
    int i9 = this.aKp[0];
    int i10 = this.aKp[1];
    int i11 = this.aKp[1];
    int i12 = this.aKp[2];
    int i13 = this.aKp[1];
    int i14 = this.aKp[2];
    int i15 = this.aKp[1];
    int i16 = this.aKp[2];
    int i17 = this.aKp[1];
    int i18 = this.aKp[2];
    int i19 = this.aKp[1];
    int i20 = this.aKp[2];
    int i21 = this.aKp[2];
    int i22 = this.aKp[3];
    int i23 = this.aKp[2];
    int i24 = this.aKp[3];
    int i25 = this.aKp[2];
    int i26 = this.aKp[3];
    int i27 = this.aKp[2];
    int i28 = this.aKp[3];
    return i ^ (i7 >>> 26 | i8 << 6) ^ (i15 >>> 24 | i16 << 8) ^ (this.aKp[2] >>> 27 | this.aKp[3] << 5) ^ this.aKp[3] ^ (j >>> 3 | k << 29) & (i23 >>> 3 | i24 << 29) ^ (m >>> 11 | n << 21) & (i1 >>> 13 | i2 << 19) ^ (i3 >>> 17 | i4 << 15) & (i5 >>> 18 | i6 << 14) ^ (i9 >>> 27 | i10 << 5) & (i17 >>> 27 | i18 << 5) ^ (i11 >>> 8 | i12 << 24) & (i13 >>> 16 | i14 << 16) ^ (i19 >>> 29 | i20 << 3) & (i21 >>> 1 | i22 << 31) ^ (i25 >>> 4 | i26 << 28) & (i27 >>> 20 | i28 << 12);
  }
  
  private int ju()
  {
    return this.aKo[0] ^ (this.aKo[0] >>> 7 | this.aKo[1] << 25) ^ (this.aKo[1] >>> 6 | this.aKo[2] << 26) ^ (this.aKo[2] >>> 6 | this.aKo[3] << 26) ^ (this.aKo[2] >>> 17 | this.aKo[3] << 15) ^ this.aKo[3];
  }
  
  private int jv()
  {
    int i = this.aKp[0];
    int j = this.aKp[1];
    int k = this.aKp[0] >>> 12 | this.aKp[1] << 20;
    int m = this.aKp[0];
    int n = this.aKp[1];
    int i1 = this.aKp[1];
    int i2 = this.aKp[2];
    int i3 = this.aKp[1];
    int i4 = this.aKp[2];
    int i5 = this.aKp[2];
    int i6 = this.aKp[2];
    int i7 = this.aKp[3];
    int i8 = this.aKp[2];
    int i9 = this.aKp[3];
    int i10 = this.aKp[2] >>> 31 | this.aKp[3] << 1;
    int i11 = this.aKo[0];
    int i12 = this.aKo[1];
    int i13 = this.aKo[0];
    int i14 = this.aKo[1];
    int i15 = this.aKo[0];
    int i16 = this.aKo[1];
    int i17 = this.aKo[1];
    int i18 = this.aKo[2];
    int i19 = this.aKo[1];
    int i20 = this.aKo[2];
    int i21 = this.aKo[2];
    int i22 = this.aKo[3];
    int i23 = this.aKo[2];
    int i24 = this.aKo[3];
    return k & (i11 >>> 8 | i12 << 24) ^ (i13 >>> 13 | i14 << 19) & (i15 >>> 20 | i16 << 12) ^ i10 & (i17 >>> 10 | i18 << 22) ^ (i19 >>> 28 | i20 << 4) & (i21 >>> 15 | i22 << 17) ^ k & i10 & (this.aKo[2] >>> 31 | this.aKo[3] << 1) ^ (i23 >>> 29 | i24 << 3) ^ (i >>> 2 | j << 30) ^ (m >>> 15 | n << 17) ^ (i1 >>> 4 | i2 << 28) ^ (i3 >>> 13 | i4 << 19) ^ i5 ^ (i6 >>> 9 | i7 << 23) ^ (i8 >>> 25 | i9 << 7);
  }
  
  private void jw()
  {
    this.aKq = jv();
    this.aKn[0] = ((byte)this.aKq);
    this.aKn[1] = ((byte)(this.aKq >> 8));
    this.aKn[2] = ((byte)(this.aKq >> 16));
    this.aKn[3] = ((byte)(this.aKq >> 24));
    this.aKp = ˎ(this.aKp, jt() ^ this.aKo[0]);
    this.aKo = ˎ(this.aKo, ju());
  }
  
  private byte jx()
  {
    if (this.index > 3)
    {
      jw();
      this.index = 0;
    }
    byte[] arrayOfByte = this.aKn;
    int i = this.index;
    this.index = (i + 1);
    return arrayOfByte[i];
  }
  
  private int[] ˎ(int[] paramArrayOfInt, int paramInt)
  {
    paramArrayOfInt[0] = paramArrayOfInt[1];
    paramArrayOfInt[1] = paramArrayOfInt[2];
    paramArrayOfInt[2] = paramArrayOfInt[3];
    paramArrayOfInt[3] = paramInt;
    return paramArrayOfInt;
  }
  
  private void ˏ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte2[12] = -1;
    paramArrayOfByte2[13] = -1;
    paramArrayOfByte2[14] = -1;
    paramArrayOfByte2[15] = -1;
    this.aIZ = paramArrayOfByte1;
    this.aKm = paramArrayOfByte2;
    int j = 0;
    int i = 0;
    while (i < this.aKp.length)
    {
      this.aKp[i] = (this.aIZ[(j + 3)] << 24 | this.aIZ[(j + 2)] << 16 & 0xFF0000 | this.aIZ[(j + 1)] << 8 & 0xFF00 | this.aIZ[j] & 0xFF);
      this.aKo[i] = (this.aKm[(j + 3)] << 24 | this.aKm[(j + 2)] << 16 & 0xFF0000 | this.aKm[(j + 1)] << 8 & 0xFF00 | this.aKm[j] & 0xFF);
      j += 4;
      i += 1;
    }
  }
  
  public String iG()
  {
    return "Grain-128";
  }
  
  public void reset()
  {
    this.index = 4;
    ˏ(this.aIZ, this.aKm);
    js();
  }
  
  public byte ʽ(byte paramByte)
  {
    if (!this.aJn) {
      throw new IllegalStateException(iG() + " not initialised");
    }
    return (byte)(jx() ^ paramByte);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof ParametersWithIV)) {
      throw new IllegalArgumentException("Grain-128 Init parameters must include an IV");
    }
    Object localObject = (ParametersWithIV)paramCipherParameters;
    paramCipherParameters = ((ParametersWithIV)localObject).getIV();
    if ((paramCipherParameters == null) || (paramCipherParameters.length != 12)) {
      throw new IllegalArgumentException("Grain-128  requires exactly 12 bytes of IV");
    }
    if (!(((ParametersWithIV)localObject).lh() instanceof KeyParameter)) {
      throw new IllegalArgumentException("Grain-128 Init parameters must include a key");
    }
    localObject = (KeyParameter)((ParametersWithIV)localObject).lh();
    this.aKm = new byte[((KeyParameter)localObject).getKey().length];
    this.aIZ = new byte[((KeyParameter)localObject).getKey().length];
    this.aKo = new int[4];
    this.aKp = new int[4];
    this.aKn = new byte[4];
    System.arraycopy(paramCipherParameters, 0, this.aKm, 0, paramCipherParameters.length);
    System.arraycopy(((KeyParameter)localObject).getKey(), 0, this.aIZ, 0, ((KeyParameter)localObject).getKey().length);
    reset();
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
    int i = 0;
    while (i < paramInt2)
    {
      paramArrayOfByte2[(paramInt3 + i)] = ((byte)(paramArrayOfByte1[(paramInt1 + i)] ^ jx()));
      i += 1;
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.Grain128Engine
 * JD-Core Version:    0.7.0.1
 */