package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Hashtable;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.SignerWithRecovery;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.ParametersWithSalt;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;

public class ISO9796d2PSSSigner
  implements SignerWithRecovery
{
  private static Hashtable aSg = new Hashtable();
  private AsymmetricBlockCipher aEV;
  private Digest aFH;
  private SecureRandom aFa;
  private int aNg;
  private byte[] aSh;
  private int aSi;
  private int aSj;
  private byte[] aSk;
  private int aSl;
  private int aSm;
  private boolean aSn;
  private byte[] aSo;
  private byte[] aSp;
  private byte[] aSq;
  private int aSr;
  private int aSs;
  private byte[] fp;
  
  static
  {
    aSg.put("RIPEMD128", Integers.valueOf(13004));
    aSg.put("RIPEMD160", Integers.valueOf(12748));
    aSg.put("SHA-1", Integers.valueOf(13260));
    aSg.put("SHA-256", Integers.valueOf(13516));
    aSg.put("SHA-384", Integers.valueOf(14028));
    aSg.put("SHA-512", Integers.valueOf(13772));
    aSg.put("Whirlpool", Integers.valueOf(14284));
  }
  
  private byte[] ˋ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    byte[] arrayOfByte1 = new byte[paramInt3];
    byte[] arrayOfByte2 = new byte[this.aNg];
    byte[] arrayOfByte3 = new byte[4];
    int i = 0;
    this.aFH.reset();
    while (i < paramInt3 / this.aNg)
    {
      ˏ(i, arrayOfByte3);
      this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
      this.aFH.update(arrayOfByte3, 0, arrayOfByte3.length);
      this.aFH.doFinal(arrayOfByte2, 0);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, this.aNg * i, this.aNg);
      i += 1;
    }
    if (this.aNg * i < paramInt3)
    {
      ˏ(i, arrayOfByte3);
      this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
      this.aFH.update(arrayOfByte3, 0, arrayOfByte3.length);
      this.aFH.doFinal(arrayOfByte2, 0);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, this.aNg * i, arrayOfByte1.length - this.aNg * i);
    }
    return arrayOfByte1;
  }
  
  private boolean ˌ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    boolean bool = true;
    if (this.aSl != paramArrayOfByte2.length) {
      bool = false;
    }
    int i = 0;
    while (i != paramArrayOfByte2.length)
    {
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        bool = false;
      }
      i += 1;
    }
    return bool;
  }
  
  private void ˎ(long paramLong, byte[] paramArrayOfByte)
  {
    paramArrayOfByte[0] = ((byte)(int)(paramLong >>> 56));
    paramArrayOfByte[1] = ((byte)(int)(paramLong >>> 48));
    paramArrayOfByte[2] = ((byte)(int)(paramLong >>> 40));
    paramArrayOfByte[3] = ((byte)(int)(paramLong >>> 32));
    paramArrayOfByte[4] = ((byte)(int)(paramLong >>> 24));
    paramArrayOfByte[5] = ((byte)(int)(paramLong >>> 16));
    paramArrayOfByte[6] = ((byte)(int)(paramLong >>> 8));
    paramArrayOfByte[7] = ((byte)(int)(paramLong >>> 0));
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
    byte[] arrayOfByte1 = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte1, 0);
    byte[] arrayOfByte2 = new byte[8];
    ˎ(this.aSl * 8, arrayOfByte2);
    this.aFH.update(arrayOfByte2, 0, arrayOfByte2.length);
    this.aFH.update(this.aSk, 0, this.aSl);
    this.aFH.update(arrayOfByte1, 0, arrayOfByte1.length);
    if (this.aSh != null)
    {
      arrayOfByte1 = this.aSh;
    }
    else
    {
      arrayOfByte1 = new byte[this.aSm];
      this.aFa.nextBytes(arrayOfByte1);
    }
    this.aFH.update(arrayOfByte1, 0, arrayOfByte1.length);
    arrayOfByte2 = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte2, 0);
    int i = 2;
    if (this.aSi == 188) {
      i = 1;
    }
    int j = this.fp.length - this.aSl - arrayOfByte1.length - this.aNg - i - 1;
    this.fp[j] = 1;
    System.arraycopy(this.aSk, 0, this.fp, j + 1, this.aSl);
    System.arraycopy(arrayOfByte1, 0, this.fp, j + 1 + this.aSl, arrayOfByte1.length);
    arrayOfByte1 = ˋ(arrayOfByte2, 0, arrayOfByte2.length, this.fp.length - this.aNg - i);
    j = 0;
    while (j != arrayOfByte1.length)
    {
      byte[] arrayOfByte3 = this.fp;
      arrayOfByte3[j] = ((byte)(arrayOfByte3[j] ^ arrayOfByte1[j]));
      j += 1;
    }
    System.arraycopy(arrayOfByte2, 0, this.fp, this.fp.length - this.aNg - i, this.aNg);
    if (this.aSi == 188)
    {
      this.fp[(this.fp.length - 1)] = -68;
    }
    else
    {
      this.fp[(this.fp.length - 2)] = ((byte)(this.aSi >>> 8));
      this.fp[(this.fp.length - 1)] = ((byte)this.aSi);
    }
    arrayOfByte1 = this.fp;
    arrayOfByte1[0] = ((byte)(arrayOfByte1[0] & 0x7F));
    arrayOfByte1 = this.aEV.ˑ(this.fp, 0, this.fp.length);
    ᖮ(this.aSk);
    ᖮ(this.fp);
    this.aSl = 0;
    return arrayOfByte1;
  }
  
  public void reset()
  {
    this.aFH.reset();
    this.aSl = 0;
    if (this.aSk != null) {
      ᖮ(this.aSk);
    }
    if (this.aSo != null)
    {
      ᖮ(this.aSo);
      this.aSo = null;
    }
    this.aSn = false;
    if (this.aSp != null)
    {
      this.aSp = null;
      ᖮ(this.aSq);
      this.aSq = null;
    }
  }
  
  public void update(byte paramByte)
  {
    if ((this.aSp == null) && (this.aSl < this.aSk.length))
    {
      byte[] arrayOfByte = this.aSk;
      int i = this.aSl;
      this.aSl = (i + 1);
      arrayOfByte[i] = paramByte;
      return;
    }
    this.aFH.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    int j = paramInt2;
    if (this.aSp == null) {
      for (;;)
      {
        i = paramInt1;
        j = paramInt2;
        if (paramInt2 <= 0) {
          break;
        }
        i = paramInt1;
        j = paramInt2;
        if (this.aSl >= this.aSk.length) {
          break;
        }
        update(paramArrayOfByte[paramInt1]);
        paramInt1 += 1;
        paramInt2 -= 1;
      }
    }
    if (j > 0) {
      this.aFH.update(paramArrayOfByte, i, j);
    }
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    int j = this.aSm;
    Object localObject;
    int i;
    if ((paramCipherParameters instanceof ParametersWithRandom))
    {
      localObject = (ParametersWithRandom)paramCipherParameters;
      paramCipherParameters = (RSAKeyParameters)((ParametersWithRandom)localObject).lh();
      if (paramBoolean) {
        this.aFa = ((ParametersWithRandom)localObject).iN();
      }
      i = j;
    }
    else if ((paramCipherParameters instanceof ParametersWithSalt))
    {
      localObject = (ParametersWithSalt)paramCipherParameters;
      paramCipherParameters = (RSAKeyParameters)((ParametersWithSalt)localObject).lh();
      this.aSh = ((ParametersWithSalt)localObject).getSalt();
      i = this.aSh.length;
      if (this.aSh.length != this.aSm) {
        throw new IllegalArgumentException("Fixed salt is of wrong length");
      }
    }
    else
    {
      localObject = (RSAKeyParameters)paramCipherParameters;
      paramCipherParameters = (CipherParameters)localObject;
      i = j;
      if (paramBoolean)
      {
        this.aFa = new SecureRandom();
        i = j;
        paramCipherParameters = (CipherParameters)localObject;
      }
    }
    this.aEV.ˊ(paramBoolean, paramCipherParameters);
    this.aSj = paramCipherParameters.getModulus().bitLength();
    this.fp = new byte[(this.aSj + 7) / 8];
    if (this.aSi == 188) {
      this.aSk = new byte[this.fp.length - this.aFH.iJ() - i - 1 - 1];
    } else {
      this.aSk = new byte[this.fp.length - this.aFH.iJ() - i - 1 - 2];
    }
    reset();
  }
  
  public void ᵌ(byte[] paramArrayOfByte)
  {
    Object localObject2 = this.aEV.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
    Object localObject1 = localObject2;
    if (localObject2.length < (this.aSj + 7) / 8)
    {
      localObject1 = new byte[(this.aSj + 7) / 8];
      System.arraycopy(localObject2, 0, localObject1, localObject1.length - localObject2.length, localObject2.length);
      ᖮ((byte[])localObject2);
    }
    int i;
    if ((localObject1[(localObject1.length - 1)] & 0xFF ^ 0xBC) == 0)
    {
      i = 1;
    }
    else
    {
      i = (localObject1[(localObject1.length - 2)] & 0xFF) << 8 | localObject1[(localObject1.length - 1)] & 0xFF;
      localObject2 = (Integer)aSg.get(this.aFH.iG());
      if (localObject2 != null)
      {
        if (i != ((Integer)localObject2).intValue()) {
          throw new IllegalStateException("signer initialised with wrong digest for trailer " + i);
        }
      }
      else {
        throw new IllegalArgumentException("unrecognised hash in signature");
      }
      i = 2;
    }
    localObject2 = new byte[this.aNg];
    this.aFH.doFinal((byte[])localObject2, 0);
    localObject2 = ˋ((byte[])localObject1, localObject1.length - this.aNg - i, this.aNg, localObject1.length - this.aNg - i);
    int j = 0;
    while (j != localObject2.length)
    {
      localObject1[j] = ((byte)(localObject1[j] ^ localObject2[j]));
      j += 1;
    }
    localObject1[0] = ((byte)(localObject1[0] & 0x7F));
    j = 0;
    while ((j != localObject1.length) && (localObject1[j] != 1)) {
      j += 1;
    }
    j += 1;
    if (j >= localObject1.length) {
      ᖮ((byte[])localObject1);
    }
    boolean bool;
    if (j > 1) {
      bool = true;
    } else {
      bool = false;
    }
    this.aSn = bool;
    this.aSo = new byte[localObject2.length - j - this.aSm];
    System.arraycopy(localObject1, j, this.aSo, 0, this.aSo.length);
    System.arraycopy(this.aSo, 0, this.aSk, 0, this.aSo.length);
    this.aSp = paramArrayOfByte;
    this.aSq = ((byte[])localObject1);
    this.aSr = j;
    this.aSs = i;
  }
  
  public boolean ᵔ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = new byte[this.aNg];
    this.aFH.doFinal(arrayOfByte1, 0);
    if (this.aSp == null) {
      try
      {
        ᵌ(paramArrayOfByte);
      }
      catch (Exception paramArrayOfByte)
      {
        return false;
      }
    } else if (!Arrays.ﹺ(this.aSp, paramArrayOfByte)) {
      throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
    }
    paramArrayOfByte = this.aSq;
    int i = this.aSr;
    int k = this.aSs;
    this.aSp = null;
    this.aSq = null;
    byte[] arrayOfByte2 = new byte[8];
    ˎ(this.aSo.length * 8, arrayOfByte2);
    this.aFH.update(arrayOfByte2, 0, arrayOfByte2.length);
    if (this.aSo.length != 0) {
      this.aFH.update(this.aSo, 0, this.aSo.length);
    }
    this.aFH.update(arrayOfByte1, 0, arrayOfByte1.length);
    this.aFH.update(paramArrayOfByte, this.aSo.length + i, this.aSm);
    arrayOfByte1 = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte1, 0);
    int m = paramArrayOfByte.length;
    int n = arrayOfByte1.length;
    int j = 1;
    i = 0;
    while (i != arrayOfByte1.length)
    {
      if (arrayOfByte1[i] != paramArrayOfByte[(m - k - n + i)]) {
        j = 0;
      }
      i += 1;
    }
    ᖮ(paramArrayOfByte);
    ᖮ(arrayOfByte1);
    if (j == 0)
    {
      this.aSn = false;
      ᖮ(this.aSo);
      return false;
    }
    if (this.aSl != 0)
    {
      if (!ˌ(this.aSk, this.aSo))
      {
        ᖮ(this.aSk);
        return false;
      }
      this.aSl = 0;
    }
    ᖮ(this.aSk);
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.ISO9796d2PSSSigner
 * JD-Core Version:    0.7.0.1
 */