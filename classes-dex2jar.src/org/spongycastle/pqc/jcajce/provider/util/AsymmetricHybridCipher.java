package org.spongycastle.pqc.jcajce.provider.util;

import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.ShortBufferException;

public abstract class AsymmetricHybridCipher
  extends CipherSpiExt
{
  public final int doFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramArrayOfByte2.length < getOutputSize(paramInt2)) {
      throw new ShortBufferException("Output buffer too short.");
    }
    paramArrayOfByte1 = doFinal(paramArrayOfByte1, paramInt1, paramInt2);
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, paramInt3, paramArrayOfByte1.length);
    return paramArrayOfByte1.length;
  }
  
  public abstract byte[] doFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public final int getBlockSize()
  {
    return 0;
  }
  
  public final byte[] getIV()
  {
    return null;
  }
  
  public final int getOutputSize(int paramInt)
  {
    if (this.biI == 1) {
      return ϛ(paramInt);
    }
    return ч(paramInt);
  }
  
  public final int update(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramArrayOfByte2.length < getOutputSize(paramInt2)) {
      throw new ShortBufferException("output");
    }
    paramArrayOfByte1 = update(paramArrayOfByte1, paramInt1, paramInt2);
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, paramInt3, paramArrayOfByte1.length);
    return paramArrayOfByte1.length;
  }
  
  public abstract byte[] update(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
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
  
  public abstract int ϛ(int paramInt);
  
  public abstract int ч(int paramInt);
  
  protected final void ｨ(String paramString) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.util.AsymmetricHybridCipher
 * JD-Core Version:    0.7.0.1
 */