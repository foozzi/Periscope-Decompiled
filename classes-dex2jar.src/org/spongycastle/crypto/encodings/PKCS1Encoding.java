package org.spongycastle.crypto.encodings;

import java.security.AccessController;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;

public class PKCS1Encoding
  implements AsymmetricBlockCipher
{
  private boolean aEW;
  private SecureRandom aFa;
  private int aIA = -1;
  private byte[] aIB = null;
  private AsymmetricBlockCipher aIu;
  private boolean aIy;
  private boolean aIz;
  
  public PKCS1Encoding(AsymmetricBlockCipher paramAsymmetricBlockCipher)
  {
    this.aIu = paramAsymmetricBlockCipher;
    this.aIz = jn();
  }
  
  public PKCS1Encoding(AsymmetricBlockCipher paramAsymmetricBlockCipher, byte[] paramArrayOfByte)
  {
    this.aIu = paramAsymmetricBlockCipher;
    this.aIz = jn();
    this.aIB = paramArrayOfByte;
    this.aIA = paramArrayOfByte.length;
  }
  
  private boolean jn()
  {
    String str = (String)AccessController.doPrivileged(new PKCS1Encoding.1(this));
    return (str == null) || (str.equals("true"));
  }
  
  private byte[] ʹ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aIA != -1) {
      return ՙ(paramArrayOfByte, paramInt1, paramInt2);
    }
    paramArrayOfByte = this.aIu.ˑ(paramArrayOfByte, paramInt1, paramInt2);
    if (paramArrayOfByte.length < iC()) {
      throw new InvalidCipherTextException("block truncated");
    }
    paramInt2 = paramArrayOfByte[0];
    if (this.aIy)
    {
      if (paramInt2 != 2) {
        throw new InvalidCipherTextException("unknown block type");
      }
    }
    else if (paramInt2 != 1) {
      throw new InvalidCipherTextException("unknown block type");
    }
    if ((this.aIz) && (paramArrayOfByte.length != this.aIu.iC())) {
      throw new InvalidCipherTextException("block incorrect size");
    }
    paramInt1 = 1;
    while (paramInt1 != paramArrayOfByte.length)
    {
      int i = paramArrayOfByte[paramInt1];
      if (i == 0) {
        break;
      }
      if ((paramInt2 == 1) && (i != -1)) {
        throw new InvalidCipherTextException("block padding incorrect");
      }
      paramInt1 += 1;
    }
    paramInt1 += 1;
    if ((paramInt1 > paramArrayOfByte.length) || (paramInt1 < 10)) {
      throw new InvalidCipherTextException("no data in block");
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte.length - paramInt1];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  private static int ˈ(byte[] paramArrayOfByte, int paramInt)
  {
    int j = paramArrayOfByte[0] ^ 0x2 | 0x0;
    int k = paramArrayOfByte.length;
    int i = 1;
    while (i < k - (paramInt + 1))
    {
      int m = paramArrayOfByte[i];
      m |= m >> 1;
      m |= m >> 2;
      j |= ((m | m >> 4) & 0x1) - 1;
      i += 1;
    }
    paramInt = j | paramArrayOfByte[(paramArrayOfByte.length - (paramInt + 1))];
    paramInt |= paramInt >> 1;
    paramInt |= paramInt >> 2;
    return ((paramInt | paramInt >> 4) & 0x1) - 1 ^ 0xFFFFFFFF;
  }
  
  private byte[] ՙ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.aIy) {
      throw new InvalidCipherTextException("sorry, this method is only for decryption, not for signing");
    }
    byte[] arrayOfByte1 = this.aIu.ˑ(paramArrayOfByte, paramInt1, paramInt2);
    if (this.aIB == null)
    {
      paramArrayOfByte = new byte[this.aIA];
      this.aFa.nextBytes(paramArrayOfByte);
    }
    else
    {
      paramArrayOfByte = this.aIB;
    }
    if (arrayOfByte1.length < iC()) {
      throw new InvalidCipherTextException("block truncated");
    }
    if ((this.aIz) && (arrayOfByte1.length != this.aIu.iC())) {
      throw new InvalidCipherTextException("block incorrect size");
    }
    paramInt2 = ˈ(arrayOfByte1, this.aIA);
    byte[] arrayOfByte2 = new byte[this.aIA];
    paramInt1 = 0;
    while (paramInt1 < this.aIA)
    {
      arrayOfByte2[paramInt1] = ((byte)(arrayOfByte1[(arrayOfByte1.length - this.aIA + paramInt1)] & (paramInt2 ^ 0xFFFFFFFF) | paramArrayOfByte[paramInt1] & paramInt2));
      paramInt1 += 1;
    }
    return arrayOfByte2;
  }
  
  private byte[] ﾞ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 > iB()) {
      throw new IllegalArgumentException("input data too large");
    }
    byte[] arrayOfByte = new byte[this.aIu.iB()];
    int i;
    if (this.aIy)
    {
      arrayOfByte[0] = 1;
      i = 1;
      while (i != arrayOfByte.length - paramInt2 - 1)
      {
        arrayOfByte[i] = -1;
        i += 1;
      }
    }
    else
    {
      this.aFa.nextBytes(arrayOfByte);
      arrayOfByte[0] = 2;
      i = 1;
      while (i != arrayOfByte.length - paramInt2 - 1)
      {
        while (arrayOfByte[i] == 0) {
          arrayOfByte[i] = ((byte)this.aFa.nextInt());
        }
        i += 1;
      }
    }
    arrayOfByte[(arrayOfByte.length - paramInt2 - 1)] = 0;
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, arrayOfByte.length - paramInt2, paramInt2);
    return this.aIu.ˑ(arrayOfByte, 0, arrayOfByte.length);
  }
  
  public int iB()
  {
    int i = this.aIu.iB();
    if (this.aEW) {
      return i - 10;
    }
    return i;
  }
  
  public int iC()
  {
    int i = this.aIu.iC();
    if (this.aEW) {
      return i;
    }
    return i - 10;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    Object localObject;
    if ((paramCipherParameters instanceof ParametersWithRandom))
    {
      localObject = (ParametersWithRandom)paramCipherParameters;
      this.aFa = ((ParametersWithRandom)localObject).iN();
      localObject = (AsymmetricKeyParameter)((ParametersWithRandom)localObject).lh();
    }
    else
    {
      this.aFa = new SecureRandom();
      localObject = (AsymmetricKeyParameter)paramCipherParameters;
    }
    this.aIu.ˊ(paramBoolean, paramCipherParameters);
    this.aIy = ((AsymmetricKeyParameter)localObject).isPrivate();
    this.aEW = paramBoolean;
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aEW) {
      return ﾞ(paramArrayOfByte, paramInt1, paramInt2);
    }
    return ʹ(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.encodings.PKCS1Encoding
 * JD-Core Version:    0.7.0.1
 */