package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class Grainv1Engine
  implements StreamCipher
{
  private byte[] aIZ;
  private boolean aJn = false;
  private byte[] aKm;
  private byte[] aKn;
  private int[] aKo;
  private int[] aKp;
  private int aKq;
  private int index = 2;
  
  private void js()
  {
    int i = 0;
    while (i < 10)
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
    int j = this.aKp[0] >>> 9 | this.aKp[1] << 7;
    int k = this.aKp[0];
    int m = this.aKp[1];
    int n = this.aKp[0] >>> 15 | this.aKp[1] << 1;
    int i1 = this.aKp[1] >>> 5 | this.aKp[2] << 11;
    int i2 = this.aKp[1] >>> 12 | this.aKp[2] << 4;
    int i3 = this.aKp[2] >>> 1 | this.aKp[3] << 15;
    int i4 = this.aKp[2] >>> 5 | this.aKp[3] << 11;
    int i5 = this.aKp[2] >>> 13 | this.aKp[3] << 3;
    int i6 = this.aKp[3] >>> 4 | this.aKp[4] << 12;
    int i7 = this.aKp[3] >>> 12 | this.aKp[4] << 4;
    int i8 = this.aKp[3];
    int i9 = this.aKp[4];
    int i10 = this.aKp[3] >>> 15 | this.aKp[4] << 1;
    return ((i8 >>> 14 | i9 << 2) ^ i7 ^ i6 ^ i5 ^ i4 ^ i3 ^ i2 ^ i1 ^ (k >>> 14 | m << 2) ^ j ^ i ^ i10 & i7 ^ i4 & i3 ^ n & j ^ i7 & i6 & i5 ^ i3 & i2 & i1 ^ i10 & i5 & i2 & j ^ i7 & i6 & i4 & i3 ^ i10 & i7 & i1 & n ^ i10 & i7 & i6 & i5 & i4 ^ i3 & i2 & i1 & n & j ^ i6 & i5 & i4 & i3 & i2 & i1) & 0xFFFF;
  }
  
  private int ju()
  {
    return (this.aKo[0] ^ (this.aKo[0] >>> 13 | this.aKo[1] << 3) ^ (this.aKo[1] >>> 7 | this.aKo[2] << 9) ^ (this.aKo[2] >>> 6 | this.aKo[3] << 10) ^ (this.aKo[3] >>> 3 | this.aKo[4] << 13) ^ (this.aKo[3] >>> 14 | this.aKo[4] << 2)) & 0xFFFF;
  }
  
  private int jv()
  {
    int i = this.aKp[0];
    int j = this.aKp[1];
    int k = this.aKp[0];
    int m = this.aKp[1];
    int n = this.aKp[0];
    int i1 = this.aKp[1];
    int i2 = this.aKp[0];
    int i3 = this.aKp[1];
    int i4 = this.aKp[1];
    int i5 = this.aKp[2];
    int i6 = this.aKp[2];
    int i7 = this.aKp[3];
    int i8 = this.aKp[3];
    int i9 = this.aKp[4];
    int i10 = this.aKp[3] >>> 15 | this.aKp[4] << 1;
    int i11 = this.aKo[0] >>> 3 | this.aKo[1] << 13;
    int i12 = this.aKo[1] >>> 9 | this.aKo[2] << 7;
    int i13 = this.aKo[2] >>> 14 | this.aKo[3] << 2;
    int i14 = this.aKo[4];
    return (i12 ^ i10 ^ i11 & i14 ^ i13 & i14 ^ i14 & i10 ^ i11 & i12 & i13 ^ i11 & i13 & i14 ^ i11 & i13 & i10 ^ i12 & i13 & i10 ^ i13 & i14 & i10 ^ (i >>> 1 | j << 15) ^ (k >>> 2 | m << 14) ^ (n >>> 4 | i1 << 12) ^ (i2 >>> 10 | i3 << 6) ^ (i4 >>> 15 | i5 << 1) ^ (i6 >>> 11 | i7 << 5) ^ (i8 >>> 8 | i9 << 8)) & 0xFFFF;
  }
  
  private void jw()
  {
    this.aKq = jv();
    this.aKn[0] = ((byte)this.aKq);
    this.aKn[1] = ((byte)(this.aKq >> 8));
    this.aKp = ˎ(this.aKp, jt() ^ this.aKo[0]);
    this.aKo = ˎ(this.aKo, ju());
  }
  
  private byte jx()
  {
    if (this.index > 1)
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
    paramArrayOfInt[3] = paramArrayOfInt[4];
    paramArrayOfInt[4] = paramInt;
    return paramArrayOfInt;
  }
  
  private void ˏ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte2[8] = -1;
    paramArrayOfByte2[9] = -1;
    this.aIZ = paramArrayOfByte1;
    this.aKm = paramArrayOfByte2;
    int j = 0;
    int i = 0;
    while (i < this.aKp.length)
    {
      this.aKp[i] = ((this.aIZ[(j + 1)] << 8 | this.aIZ[j] & 0xFF) & 0xFFFF);
      this.aKo[i] = ((this.aKm[(j + 1)] << 8 | this.aKm[j] & 0xFF) & 0xFFFF);
      j += 2;
      i += 1;
    }
  }
  
  public String iG()
  {
    return "Grain v1";
  }
  
  public void reset()
  {
    this.index = 2;
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
      throw new IllegalArgumentException("Grain v1 Init parameters must include an IV");
    }
    Object localObject = (ParametersWithIV)paramCipherParameters;
    paramCipherParameters = ((ParametersWithIV)localObject).getIV();
    if ((paramCipherParameters == null) || (paramCipherParameters.length != 8)) {
      throw new IllegalArgumentException("Grain v1 requires exactly 8 bytes of IV");
    }
    if (!(((ParametersWithIV)localObject).lh() instanceof KeyParameter)) {
      throw new IllegalArgumentException("Grain v1 Init parameters must include a key");
    }
    localObject = (KeyParameter)((ParametersWithIV)localObject).lh();
    this.aKm = new byte[((KeyParameter)localObject).getKey().length];
    this.aIZ = new byte[((KeyParameter)localObject).getKey().length];
    this.aKo = new int[5];
    this.aKp = new int[5];
    this.aKn = new byte[2];
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
 * Qualified Name:     org.spongycastle.crypto.engines.Grainv1Engine
 * JD-Core Version:    0.7.0.1
 */