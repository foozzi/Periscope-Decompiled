package org.spongycastle.pqc.jcajce.provider.util;

import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;

public abstract class AsymmetricBlockCipher
  extends CipherSpiExt
{
  public int bgh;
  public int bgi;
  protected ByteArrayOutputStream biz = new ByteArrayOutputStream();
  
  public final int doFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramArrayOfByte2.length < getOutputSize(paramInt2)) {
      throw new ShortBufferException("Output buffer too short.");
    }
    paramArrayOfByte1 = doFinal(paramArrayOfByte1, paramInt1, paramInt2);
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, paramInt3, paramArrayOfByte1.length);
    return paramArrayOfByte1.length;
  }
  
  public final byte[] doFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ѓ(paramInt2);
    update(paramArrayOfByte, paramInt1, paramInt2);
    paramArrayOfByte = this.biz.toByteArray();
    this.biz.reset();
    switch (this.biI)
    {
    default: 
      break;
    case 1: 
      return וֹ(paramArrayOfByte);
    case 2: 
      return ﹲ(paramArrayOfByte);
    }
    return null;
  }
  
  public final int getBlockSize()
  {
    if (this.biI == 1) {
      return this.bgh;
    }
    return this.bgi;
  }
  
  public final byte[] getIV()
  {
    return null;
  }
  
  public final int getOutputSize(int paramInt)
  {
    int i = this.biz.size();
    int j = getBlockSize();
    if (paramInt + i > j) {
      return 0;
    }
    return j;
  }
  
  public final int update(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    update(paramArrayOfByte1, paramInt1, paramInt2);
    return 0;
  }
  
  public final byte[] update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 0) {
      this.biz.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    return new byte[0];
  }
  
  protected final void Ȉ(String paramString) {}
  
  public abstract void ˊ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec);
  
  public abstract void ˊ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom);
  
  public final void ˋ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    this.biI = 2;
    ˊ(paramKey, paramAlgorithmParameterSpec);
  }
  
  public final void ˋ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    this.biI = 1;
    ˊ(paramKey, paramAlgorithmParameterSpec, paramSecureRandom);
  }
  
  protected void ѓ(int paramInt)
  {
    paramInt += this.biz.size();
    if (this.biI == 1)
    {
      if (paramInt > this.bgh) {
        throw new IllegalBlockSizeException("The length of the plaintext (" + paramInt + " bytes) is not supported by " + "the cipher (max. " + this.bgh + " bytes).");
      }
    }
    else if ((this.biI == 2) && (paramInt != this.bgi)) {
      throw new IllegalBlockSizeException("Illegal ciphertext length (expected " + this.bgi + " bytes, was " + paramInt + " bytes).");
    }
  }
  
  public abstract byte[] וֹ(byte[] paramArrayOfByte);
  
  public abstract byte[] ﹲ(byte[] paramArrayOfByte);
  
  protected final void ｨ(String paramString) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.util.AsymmetricBlockCipher
 * JD-Core Version:    0.7.0.1
 */