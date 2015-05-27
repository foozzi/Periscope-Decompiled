package org.spongycastle.crypto.encodings;

import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.params.ParametersWithRandom;

public class OAEPEncoding
  implements AsymmetricBlockCipher
{
  private boolean aEW;
  private SecureRandom aFa;
  private AsymmetricBlockCipher aIu;
  private byte[] aIw;
  private Digest aIx;
  
  public OAEPEncoding(AsymmetricBlockCipher paramAsymmetricBlockCipher, Digest paramDigest1, Digest paramDigest2, byte[] paramArrayOfByte)
  {
    this.aIu = paramAsymmetricBlockCipher;
    this.aIx = paramDigest2;
    this.aIw = new byte[paramDigest1.iJ()];
    paramDigest1.reset();
    if (paramArrayOfByte != null) {
      paramDigest1.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    paramDigest1.doFinal(this.aIw, 0);
  }
  
  public OAEPEncoding(AsymmetricBlockCipher paramAsymmetricBlockCipher, Digest paramDigest, byte[] paramArrayOfByte)
  {
    this(paramAsymmetricBlockCipher, paramDigest, paramDigest, paramArrayOfByte);
  }
  
  private byte[] ˋ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    byte[] arrayOfByte1 = new byte[paramInt3];
    byte[] arrayOfByte2 = new byte[this.aIx.iJ()];
    byte[] arrayOfByte3 = new byte[4];
    int i = 0;
    this.aIx.reset();
    while (i < paramInt3 / arrayOfByte2.length)
    {
      ˏ(i, arrayOfByte3);
      this.aIx.update(paramArrayOfByte, paramInt1, paramInt2);
      this.aIx.update(arrayOfByte3, 0, arrayOfByte3.length);
      this.aIx.doFinal(arrayOfByte2, 0);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, arrayOfByte2.length * i, arrayOfByte2.length);
      i += 1;
    }
    if (arrayOfByte2.length * i < paramInt3)
    {
      ˏ(i, arrayOfByte3);
      this.aIx.update(paramArrayOfByte, paramInt1, paramInt2);
      this.aIx.update(arrayOfByte3, 0, arrayOfByte3.length);
      this.aIx.doFinal(arrayOfByte2, 0);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, arrayOfByte2.length * i, arrayOfByte1.length - arrayOfByte2.length * i);
    }
    return arrayOfByte1;
  }
  
  private void ˏ(int paramInt, byte[] paramArrayOfByte)
  {
    paramArrayOfByte[0] = ((byte)(paramInt >>> 24));
    paramArrayOfByte[1] = ((byte)(paramInt >>> 16));
    paramArrayOfByte[2] = ((byte)(paramInt >>> 8));
    paramArrayOfByte[3] = ((byte)(paramInt >>> 0));
  }
  
  public int iB()
  {
    int i = this.aIu.iB();
    if (this.aEW) {
      return i - 1 - this.aIw.length * 2;
    }
    return i;
  }
  
  public int iC()
  {
    int i = this.aIu.iC();
    if (this.aEW) {
      return i;
    }
    return i - 1 - this.aIw.length * 2;
  }
  
  public byte[] ʹ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte = this.aIu.ˑ(paramArrayOfByte, paramInt1, paramInt2);
    if (paramArrayOfByte.length < this.aIu.iC())
    {
      arrayOfByte = new byte[this.aIu.iC()];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, arrayOfByte.length - paramArrayOfByte.length, paramArrayOfByte.length);
      paramArrayOfByte = arrayOfByte;
    }
    if (paramArrayOfByte.length < this.aIw.length * 2 + 1) {
      throw new InvalidCipherTextException("data too short");
    }
    byte[] arrayOfByte = ˋ(paramArrayOfByte, this.aIw.length, paramArrayOfByte.length - this.aIw.length, this.aIw.length);
    paramInt1 = 0;
    while (paramInt1 != this.aIw.length)
    {
      paramArrayOfByte[paramInt1] = ((byte)(paramArrayOfByte[paramInt1] ^ arrayOfByte[paramInt1]));
      paramInt1 += 1;
    }
    arrayOfByte = ˋ(paramArrayOfByte, 0, this.aIw.length, paramArrayOfByte.length - this.aIw.length);
    paramInt1 = this.aIw.length;
    while (paramInt1 != paramArrayOfByte.length)
    {
      paramArrayOfByte[paramInt1] = ((byte)(paramArrayOfByte[paramInt1] ^ arrayOfByte[(paramInt1 - this.aIw.length)]));
      paramInt1 += 1;
    }
    paramInt2 = 0;
    paramInt1 = 0;
    while (paramInt1 != this.aIw.length)
    {
      if (this.aIw[paramInt1] != paramArrayOfByte[(this.aIw.length + paramInt1)]) {
        paramInt2 = 1;
      }
      paramInt1 += 1;
    }
    if (paramInt2 != 0) {
      throw new InvalidCipherTextException("data hash wrong");
    }
    paramInt1 = this.aIw.length * 2;
    while ((paramInt1 != paramArrayOfByte.length) && (paramArrayOfByte[paramInt1] == 0)) {
      paramInt1 += 1;
    }
    if ((paramInt1 >= paramArrayOfByte.length - 1) || (paramArrayOfByte[paramInt1] != 1)) {
      throw new InvalidCipherTextException("data start wrong " + paramInt1);
    }
    paramInt1 += 1;
    arrayOfByte = new byte[paramArrayOfByte.length - paramInt1];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof ParametersWithRandom)) {
      this.aFa = ((ParametersWithRandom)paramCipherParameters).iN();
    } else {
      this.aFa = new SecureRandom();
    }
    this.aIu.ˊ(paramBoolean, paramCipherParameters);
    this.aEW = paramBoolean;
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aEW) {
      return ﾞ(paramArrayOfByte, paramInt1, paramInt2);
    }
    return ʹ(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public byte[] ﾞ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte1 = new byte[iB() + 1 + this.aIw.length * 2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte1, arrayOfByte1.length - paramInt2, paramInt2);
    arrayOfByte1[(arrayOfByte1.length - paramInt2 - 1)] = 1;
    System.arraycopy(this.aIw, 0, arrayOfByte1, this.aIw.length, this.aIw.length);
    paramArrayOfByte = new byte[this.aIw.length];
    this.aFa.nextBytes(paramArrayOfByte);
    byte[] arrayOfByte2 = ˋ(paramArrayOfByte, 0, paramArrayOfByte.length, arrayOfByte1.length - this.aIw.length);
    paramInt1 = this.aIw.length;
    while (paramInt1 != arrayOfByte1.length)
    {
      arrayOfByte1[paramInt1] = ((byte)(arrayOfByte1[paramInt1] ^ arrayOfByte2[(paramInt1 - this.aIw.length)]));
      paramInt1 += 1;
    }
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 0, this.aIw.length);
    paramArrayOfByte = ˋ(arrayOfByte1, this.aIw.length, arrayOfByte1.length - this.aIw.length, this.aIw.length);
    paramInt1 = 0;
    while (paramInt1 != this.aIw.length)
    {
      arrayOfByte1[paramInt1] = ((byte)(arrayOfByte1[paramInt1] ^ paramArrayOfByte[paramInt1]));
      paramInt1 += 1;
    }
    return this.aIu.ˑ(arrayOfByte1, 0, arrayOfByte1.length);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.encodings.OAEPEncoding
 * JD-Core Version:    0.7.0.1
 */