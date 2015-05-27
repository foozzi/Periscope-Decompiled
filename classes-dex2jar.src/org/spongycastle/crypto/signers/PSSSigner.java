package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSABlindingParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;

public class PSSSigner
  implements Signer
{
  private AsymmetricBlockCipher aEV;
  private SecureRandom aFa;
  private int aNg;
  private Digest aSt;
  private Digest aSu;
  private int aSv;
  private int aSw;
  private int aSx;
  private byte[] aSy;
  private byte aSz;
  private byte[] aqg;
  private byte[] fp;
  
  public PSSSigner(AsymmetricBlockCipher paramAsymmetricBlockCipher, Digest paramDigest1, Digest paramDigest2, int paramInt, byte paramByte)
  {
    this.aEV = paramAsymmetricBlockCipher;
    this.aSt = paramDigest1;
    this.aSu = paramDigest2;
    this.aNg = paramDigest1.iJ();
    this.aSv = paramDigest2.iJ();
    this.aSw = paramInt;
    this.aqg = new byte[paramInt];
    this.aSy = new byte[paramInt + 8 + this.aNg];
    this.aSz = paramByte;
  }
  
  private byte[] ˋ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    byte[] arrayOfByte1 = new byte[paramInt3];
    byte[] arrayOfByte2 = new byte[this.aSv];
    byte[] arrayOfByte3 = new byte[4];
    int i = 0;
    this.aSu.reset();
    while (i < paramInt3 / this.aSv)
    {
      ˏ(i, arrayOfByte3);
      this.aSu.update(paramArrayOfByte, paramInt1, paramInt2);
      this.aSu.update(arrayOfByte3, 0, arrayOfByte3.length);
      this.aSu.doFinal(arrayOfByte2, 0);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, this.aSv * i, this.aSv);
      i += 1;
    }
    if (this.aSv * i < paramInt3)
    {
      ˏ(i, arrayOfByte3);
      this.aSu.update(paramArrayOfByte, paramInt1, paramInt2);
      this.aSu.update(arrayOfByte3, 0, arrayOfByte3.length);
      this.aSu.doFinal(arrayOfByte2, 0);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, this.aSv * i, arrayOfByte1.length - this.aSv * i);
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
  
  private void ᖮ(byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i != paramArrayOfByte.length)
    {
      paramArrayOfByte[i] = 0;
      i += 1;
    }
  }
  
  public byte[] iP()
  {
    this.aSt.doFinal(this.aSy, this.aSy.length - this.aNg - this.aSw);
    if (this.aSw != 0)
    {
      this.aFa.nextBytes(this.aqg);
      System.arraycopy(this.aqg, 0, this.aSy, this.aSy.length - this.aSw, this.aSw);
    }
    byte[] arrayOfByte1 = new byte[this.aNg];
    this.aSt.update(this.aSy, 0, this.aSy.length);
    this.aSt.doFinal(arrayOfByte1, 0);
    this.fp[(this.fp.length - this.aSw - 1 - this.aNg - 1)] = 1;
    System.arraycopy(this.aqg, 0, this.fp, this.fp.length - this.aSw - this.aNg - 1, this.aSw);
    byte[] arrayOfByte2 = ˋ(arrayOfByte1, 0, arrayOfByte1.length, this.fp.length - this.aNg - 1);
    int i = 0;
    while (i != arrayOfByte2.length)
    {
      byte[] arrayOfByte3 = this.fp;
      arrayOfByte3[i] = ((byte)(arrayOfByte3[i] ^ arrayOfByte2[i]));
      i += 1;
    }
    arrayOfByte2 = this.fp;
    arrayOfByte2[0] = ((byte)(arrayOfByte2[0] & 255 >> this.fp.length * 8 - this.aSx));
    System.arraycopy(arrayOfByte1, 0, this.fp, this.fp.length - this.aNg - 1, this.aNg);
    this.fp[(this.fp.length - 1)] = this.aSz;
    arrayOfByte1 = this.aEV.ˑ(this.fp, 0, this.fp.length);
    ᖮ(this.fp);
    return arrayOfByte1;
  }
  
  public void reset()
  {
    this.aSt.reset();
  }
  
  public void update(byte paramByte)
  {
    this.aSt.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aSt.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    CipherParameters localCipherParameters;
    if ((paramCipherParameters instanceof ParametersWithRandom))
    {
      paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
      localCipherParameters = paramCipherParameters.lh();
      this.aFa = paramCipherParameters.iN();
    }
    else
    {
      localCipherParameters = paramCipherParameters;
      if (paramBoolean)
      {
        this.aFa = new SecureRandom();
        localCipherParameters = paramCipherParameters;
      }
    }
    this.aEV.ˊ(paramBoolean, localCipherParameters);
    if ((localCipherParameters instanceof RSABlindingParameters)) {
      paramCipherParameters = ((RSABlindingParameters)localCipherParameters).lj();
    } else {
      paramCipherParameters = (RSAKeyParameters)localCipherParameters;
    }
    this.aSx = (paramCipherParameters.getModulus().bitLength() - 1);
    if (this.aSx < this.aNg * 8 + this.aSw * 8 + 9) {
      throw new IllegalArgumentException("key too small for specified hash and salt lengths");
    }
    this.fp = new byte[(this.aSx + 7) / 8];
    reset();
  }
  
  public boolean ᵔ(byte[] paramArrayOfByte)
  {
    this.aSt.doFinal(this.aSy, this.aSy.length - this.aNg - this.aSw);
    try
    {
      paramArrayOfByte = this.aEV.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
      System.arraycopy(paramArrayOfByte, 0, this.fp, this.fp.length - paramArrayOfByte.length, paramArrayOfByte.length);
    }
    catch (Exception paramArrayOfByte)
    {
      return false;
    }
    if (this.fp[(this.fp.length - 1)] != this.aSz)
    {
      ᖮ(this.fp);
      return false;
    }
    paramArrayOfByte = ˋ(this.fp, this.fp.length - this.aNg - 1, this.aNg, this.fp.length - this.aNg - 1);
    int i = 0;
    while (i != paramArrayOfByte.length)
    {
      byte[] arrayOfByte = this.fp;
      arrayOfByte[i] = ((byte)(arrayOfByte[i] ^ paramArrayOfByte[i]));
      i += 1;
    }
    paramArrayOfByte = this.fp;
    paramArrayOfByte[0] = ((byte)(paramArrayOfByte[0] & 255 >> this.fp.length * 8 - this.aSx));
    i = 0;
    while (i != this.fp.length - this.aNg - this.aSw - 2)
    {
      if (this.fp[i] != 0)
      {
        ᖮ(this.fp);
        return false;
      }
      i += 1;
    }
    if (this.fp[(this.fp.length - this.aNg - this.aSw - 2)] != 1)
    {
      ᖮ(this.fp);
      return false;
    }
    System.arraycopy(this.fp, this.fp.length - this.aSw - this.aNg - 1, this.aSy, this.aSy.length - this.aSw, this.aSw);
    this.aSt.update(this.aSy, 0, this.aSy.length);
    this.aSt.doFinal(this.aSy, this.aSy.length - this.aNg);
    int j = this.fp.length - this.aNg - 1;
    i = this.aSy.length - this.aNg;
    while (i != this.aSy.length)
    {
      if ((this.fp[j] ^ this.aSy[i]) != 0)
      {
        ᖮ(this.aSy);
        ᖮ(this.fp);
        return false;
      }
      j += 1;
      i += 1;
    }
    ᖮ(this.aSy);
    ᖮ(this.fp);
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.PSSSigner
 * JD-Core Version:    0.7.0.1
 */