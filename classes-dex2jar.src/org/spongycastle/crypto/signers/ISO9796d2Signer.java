package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.util.Hashtable;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.SignerWithRecovery;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;

public class ISO9796d2Signer
  implements SignerWithRecovery
{
  private static Hashtable aSg = new Hashtable();
  private AsymmetricBlockCipher aEV;
  private Digest aFH;
  private int aSi;
  private int aSj;
  private byte[] aSk;
  private int aSl;
  private boolean aSn;
  private byte[] aSo;
  private byte[] aSp;
  private byte[] aSq;
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
  
  public ISO9796d2Signer(AsymmetricBlockCipher paramAsymmetricBlockCipher, Digest paramDigest, boolean paramBoolean)
  {
    this.aEV = paramAsymmetricBlockCipher;
    this.aFH = paramDigest;
    if (paramBoolean)
    {
      this.aSi = 188;
      return;
    }
    paramAsymmetricBlockCipher = (Integer)aSg.get(paramDigest.iG());
    if (paramAsymmetricBlockCipher != null)
    {
      this.aSi = paramAsymmetricBlockCipher.intValue();
      return;
    }
    throw new IllegalArgumentException("no valid trailer for digest");
  }
  
  private boolean ˌ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (this.aSl > this.aSk.length)
    {
      if (this.aSk.length > paramArrayOfByte2.length) {
        bool1 = false;
      }
      i = 0;
      while (i != this.aSk.length)
      {
        if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
          bool1 = false;
        }
        i += 1;
      }
      return bool1;
    }
    bool1 = bool2;
    if (this.aSl != paramArrayOfByte2.length) {
      bool1 = false;
    }
    int i = 0;
    while (i != paramArrayOfByte2.length)
    {
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        bool1 = false;
      }
      i += 1;
    }
    return bool1;
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
  
  private boolean ᵓ(byte[] paramArrayOfByte)
  {
    ᖮ(this.aSk);
    ᖮ(paramArrayOfByte);
    return false;
  }
  
  public byte[] iP()
  {
    int k = this.aFH.iJ();
    int i;
    if (this.aSi == 188)
    {
      j = 8;
      i = this.fp.length - k - 1;
      this.aFH.doFinal(this.fp, i);
      this.fp[(this.fp.length - 1)] = -68;
    }
    else
    {
      j = 16;
      i = this.fp.length - k - 2;
      this.aFH.doFinal(this.fp, i);
      this.fp[(this.fp.length - 2)] = ((byte)(this.aSi >>> 8));
      this.fp[(this.fp.length - 1)] = ((byte)this.aSi);
    }
    int j = (this.aSl + k) * 8 + j + 4 - this.aSj;
    if (j > 0)
    {
      int m = this.aSl - (j + 7) / 8;
      k = 96;
      j = i - m;
      System.arraycopy(this.aSk, 0, this.fp, j, m);
      i = k;
    }
    else
    {
      j = 64;
      k = i - this.aSl;
      System.arraycopy(this.aSk, 0, this.fp, k, this.aSl);
      i = j;
      j = k;
    }
    if (j - 1 > 0)
    {
      k = j - 1;
      while (k != 0)
      {
        this.fp[k] = -69;
        k -= 1;
      }
      arrayOfByte = this.fp;
      j -= 1;
      arrayOfByte[j] = ((byte)(arrayOfByte[j] ^ 0x1));
      this.fp[0] = 11;
      arrayOfByte = this.fp;
      arrayOfByte[0] = ((byte)(arrayOfByte[0] | i));
    }
    else
    {
      this.fp[0] = 10;
      arrayOfByte = this.fp;
      arrayOfByte[0] = ((byte)(arrayOfByte[0] | i));
    }
    byte[] arrayOfByte = this.aEV.ˑ(this.fp, 0, this.fp.length);
    ᖮ(this.aSk);
    ᖮ(this.fp);
    return arrayOfByte;
  }
  
  public void reset()
  {
    this.aFH.reset();
    this.aSl = 0;
    ᖮ(this.aSk);
    if (this.aSo != null) {
      ᖮ(this.aSo);
    }
    this.aSo = null;
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
    this.aFH.update(paramByte);
    if (this.aSl < this.aSk.length) {
      this.aSk[this.aSl] = paramByte;
    }
    this.aSl += 1;
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while ((paramInt2 > 0) && (this.aSl < this.aSk.length))
    {
      update(paramArrayOfByte[paramInt1]);
      paramInt1 += 1;
      paramInt2 -= 1;
    }
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
    this.aSl += paramInt2;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    paramCipherParameters = (RSAKeyParameters)paramCipherParameters;
    this.aEV.ˊ(paramBoolean, paramCipherParameters);
    this.aSj = paramCipherParameters.getModulus().bitLength();
    this.fp = new byte[(this.aSj + 7) / 8];
    if (this.aSi == 188) {
      this.aSk = new byte[this.fp.length - this.aFH.iJ() - 2];
    } else {
      this.aSk = new byte[this.fp.length - this.aFH.iJ() - 3];
    }
    reset();
  }
  
  public boolean ᵔ(byte[] paramArrayOfByte)
  {
    if (this.aSp == null)
    {
      try
      {
        paramArrayOfByte = this.aEV.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
      }
      catch (Exception paramArrayOfByte)
      {
        return false;
      }
    }
    else
    {
      if (!Arrays.ﹺ(this.aSp, paramArrayOfByte)) {
        throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
      }
      paramArrayOfByte = this.aSq;
      this.aSp = null;
      this.aSq = null;
    }
    if ((paramArrayOfByte[0] & 0xC0 ^ 0x40) != 0) {
      return ᵓ(paramArrayOfByte);
    }
    if ((paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0xF ^ 0xC) != 0) {
      return ᵓ(paramArrayOfByte);
    }
    int i;
    if ((paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0xFF ^ 0xBC) == 0)
    {
      i = 1;
    }
    else
    {
      i = (paramArrayOfByte[(paramArrayOfByte.length - 2)] & 0xFF) << 8 | paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0xFF;
      localObject = (Integer)aSg.get(this.aFH.iG());
      if (localObject != null)
      {
        if (i != ((Integer)localObject).intValue()) {
          throw new IllegalStateException("signer initialised with wrong digest for trailer " + i);
        }
      }
      else {
        throw new IllegalArgumentException("unrecognised hash in signature");
      }
      i = 2;
    }
    int j = 0;
    while ((j != paramArrayOfByte.length) && ((paramArrayOfByte[j] & 0xF ^ 0xA) != 0)) {
      j += 1;
    }
    int k = j + 1;
    Object localObject = new byte[this.aFH.iJ()];
    int m = paramArrayOfByte.length - i - localObject.length;
    if (m - k <= 0) {
      return ᵓ(paramArrayOfByte);
    }
    int n;
    if ((paramArrayOfByte[0] & 0x20) == 0)
    {
      this.aSn = true;
      if (this.aSl > m - k) {
        return ᵓ(paramArrayOfByte);
      }
      this.aFH.reset();
      this.aFH.update(paramArrayOfByte, k, m - k);
      this.aFH.doFinal((byte[])localObject, 0);
      j = 1;
      i = 0;
      while (i != localObject.length)
      {
        n = m + i;
        paramArrayOfByte[n] = ((byte)(paramArrayOfByte[n] ^ localObject[i]));
        if (paramArrayOfByte[(m + i)] != 0) {
          j = 0;
        }
        i += 1;
      }
      if (j == 0) {
        return ᵓ(paramArrayOfByte);
      }
      this.aSo = new byte[m - k];
      System.arraycopy(paramArrayOfByte, k, this.aSo, 0, this.aSo.length);
    }
    else
    {
      this.aSn = false;
      this.aFH.doFinal((byte[])localObject, 0);
      j = 1;
      i = 0;
      while (i != localObject.length)
      {
        n = m + i;
        paramArrayOfByte[n] = ((byte)(paramArrayOfByte[n] ^ localObject[i]));
        if (paramArrayOfByte[(m + i)] != 0) {
          j = 0;
        }
        i += 1;
      }
      if (j == 0) {
        return ᵓ(paramArrayOfByte);
      }
      this.aSo = new byte[m - k];
      System.arraycopy(paramArrayOfByte, k, this.aSo, 0, this.aSo.length);
    }
    if ((this.aSl != 0) && (!ˌ(this.aSk, this.aSo))) {
      return ᵓ(paramArrayOfByte);
    }
    ᖮ(this.aSk);
    ᖮ(paramArrayOfByte);
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.ISO9796d2Signer
 * JD-Core Version:    0.7.0.1
 */