package org.spongycastle.pqc.jcajce.provider.util;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.CipherSpi;

public abstract class CipherSpiExt
  extends CipherSpi
{
  public int biI;
  
  public abstract int doFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3);
  
  public abstract byte[] doFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  protected final int engineDoFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    return doFinal(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
  }
  
  protected final byte[] engineDoFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return doFinal(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  protected final int engineGetBlockSize()
  {
    return getBlockSize();
  }
  
  protected final byte[] engineGetIV()
  {
    return getIV();
  }
  
  protected final int engineGetKeySize(Key paramKey)
  {
    if (!(paramKey instanceof Key)) {
      throw new InvalidKeyException("Unsupported key.");
    }
    return ˋ(paramKey);
  }
  
  protected final int engineGetOutputSize(int paramInt)
  {
    return getOutputSize(paramInt);
  }
  
  protected final AlgorithmParameters engineGetParameters()
  {
    return null;
  }
  
  protected final void engineInit(int paramInt, Key paramKey, AlgorithmParameters paramAlgorithmParameters, SecureRandom paramSecureRandom)
  {
    if (paramAlgorithmParameters == null)
    {
      engineInit(paramInt, paramKey, paramSecureRandom);
      return;
    }
    engineInit(paramInt, paramKey, null, paramSecureRandom);
  }
  
  protected final void engineInit(int paramInt, Key paramKey, SecureRandom paramSecureRandom)
  {
    try
    {
      engineInit(paramInt, paramKey, null, paramSecureRandom);
      return;
    }
    catch (InvalidAlgorithmParameterException paramKey)
    {
      throw new InvalidParameterException(paramKey.getMessage());
    }
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if ((paramAlgorithmParameterSpec != null) && (!(paramAlgorithmParameterSpec instanceof AlgorithmParameterSpec))) {
      throw new InvalidAlgorithmParameterException();
    }
    if ((paramKey == null) || (!(paramKey instanceof Key))) {
      throw new InvalidKeyException();
    }
    this.biI = paramInt;
    if (paramInt == 1)
    {
      ˋ(paramKey, paramAlgorithmParameterSpec, paramSecureRandom);
      return;
    }
    if (paramInt == 2) {
      ˋ(paramKey, paramAlgorithmParameterSpec);
    }
  }
  
  protected final void engineSetMode(String paramString)
  {
    ｨ(paramString);
  }
  
  protected final void engineSetPadding(String paramString)
  {
    Ȉ(paramString);
  }
  
  protected final int engineUpdate(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    return update(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
  }
  
  protected final byte[] engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public abstract int getBlockSize();
  
  public abstract byte[] getIV();
  
  public abstract int getOutputSize(int paramInt);
  
  public abstract int update(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3);
  
  public abstract byte[] update(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  protected abstract void Ȉ(String paramString);
  
  public abstract int ˋ(Key paramKey);
  
  public abstract void ˋ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec);
  
  public abstract void ˋ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom);
  
  protected abstract void ｨ(String paramString);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.util.CipherSpiExt
 * JD-Core Version:    0.7.0.1
 */