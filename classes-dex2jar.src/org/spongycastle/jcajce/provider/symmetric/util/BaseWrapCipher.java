package org.spongycastle.jcajce.provider.symmetric.util;

import java.io.PrintStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.jce.provider.BouncyCastleProvider;

public abstract class BaseWrapCipher
  extends CipherSpi
  implements PBE
{
  protected Wrapper aXL = null;
  protected AlgorithmParameters aXe = null;
  private Class[] aXo = { IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class };
  private int aYU;
  protected int aZu = 2;
  protected int aZv = 1;
  private byte[] iv;
  
  protected BaseWrapCipher() {}
  
  public BaseWrapCipher(Wrapper paramWrapper)
  {
    this(paramWrapper, 0);
  }
  
  public BaseWrapCipher(Wrapper paramWrapper, int paramInt)
  {
    this.aXL = paramWrapper;
    this.aYU = paramInt;
  }
  
  protected int engineDoFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    return 0;
  }
  
  protected byte[] engineDoFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return null;
  }
  
  protected int engineGetBlockSize()
  {
    return 0;
  }
  
  protected byte[] engineGetIV()
  {
    return (byte[])this.iv.clone();
  }
  
  protected int engineGetKeySize(Key paramKey)
  {
    return paramKey.getEncoded().length;
  }
  
  protected int engineGetOutputSize(int paramInt)
  {
    return -1;
  }
  
  protected AlgorithmParameters engineGetParameters()
  {
    return null;
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameters paramAlgorithmParameters, SecureRandom paramSecureRandom)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramAlgorithmParameters != null)
    {
      int i = 0;
      for (;;)
      {
        Object localObject1 = localObject3;
        if (i == this.aXo.length) {
          break;
        }
        try
        {
          localObject1 = paramAlgorithmParameters.getParameterSpec(this.aXo[i]);
        }
        catch (Exception localException)
        {
          i += 1;
        }
      }
      localObject2 = localException;
      if (localException == null) {
        throw new InvalidAlgorithmParameterException("can't handle parameter " + paramAlgorithmParameters.toString());
      }
    }
    this.aXe = paramAlgorithmParameters;
    engineInit(paramInt, paramKey, localObject2, paramSecureRandom);
  }
  
  protected void engineInit(int paramInt, Key paramKey, SecureRandom paramSecureRandom)
  {
    try
    {
      engineInit(paramInt, paramKey, null, paramSecureRandom);
      return;
    }
    catch (InvalidAlgorithmParameterException paramKey)
    {
      throw new IllegalArgumentException(paramKey.getMessage());
    }
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    Object localObject;
    if ((paramKey instanceof BCPBEKey))
    {
      paramKey = (BCPBEKey)paramKey;
      if ((paramAlgorithmParameterSpec instanceof PBEParameterSpec)) {
        localObject = PBE.Util.ˊ(paramKey, paramAlgorithmParameterSpec, this.aXL.iG());
      } else if (paramKey.nU() != null) {
        localObject = paramKey.nU();
      } else {
        throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
      }
    }
    else
    {
      localObject = new KeyParameter(paramKey.getEncoded());
    }
    paramKey = (Key)localObject;
    if ((paramAlgorithmParameterSpec instanceof IvParameterSpec)) {
      paramKey = new ParametersWithIV((CipherParameters)localObject, ((IvParameterSpec)paramAlgorithmParameterSpec).getIV());
    }
    paramAlgorithmParameterSpec = paramKey;
    if ((paramKey instanceof KeyParameter))
    {
      paramAlgorithmParameterSpec = paramKey;
      if (this.aYU != 0)
      {
        this.iv = new byte[this.aYU];
        paramSecureRandom.nextBytes(this.iv);
        paramAlgorithmParameterSpec = new ParametersWithIV(paramKey, this.iv);
      }
    }
    paramKey = paramAlgorithmParameterSpec;
    if (paramSecureRandom != null) {
      paramKey = new ParametersWithRandom(paramAlgorithmParameterSpec, paramSecureRandom);
    }
    switch (paramInt)
    {
    default: 
      break;
    case 3: 
      this.aXL.ˊ(true, paramKey);
      return;
    case 4: 
      this.aXL.ˊ(false, paramKey);
      return;
    case 1: 
    case 2: 
      throw new IllegalArgumentException("engine only valid for wrapping");
    }
    System.out.println("eeek!");
  }
  
  protected void engineSetMode(String paramString)
  {
    throw new NoSuchAlgorithmException("can't support mode " + paramString);
  }
  
  protected void engineSetPadding(String paramString)
  {
    throw new NoSuchPaddingException("Padding " + paramString + " unknown.");
  }
  
  protected Key engineUnwrap(byte[] paramArrayOfByte, String paramString, int paramInt)
  {
    try
    {
      if (this.aXL == null) {
        paramArrayOfByte = engineDoFinal(paramArrayOfByte, 0, paramArrayOfByte.length);
      } else {
        paramArrayOfByte = this.aXL.ﹳ(paramArrayOfByte, 0, paramArrayOfByte.length);
      }
    }
    catch (InvalidCipherTextException paramArrayOfByte)
    {
      throw new InvalidKeyException(paramArrayOfByte.getMessage());
    }
    catch (BadPaddingException paramArrayOfByte)
    {
      throw new InvalidKeyException(paramArrayOfByte.getMessage());
    }
    catch (IllegalBlockSizeException paramArrayOfByte)
    {
      throw new InvalidKeyException(paramArrayOfByte.getMessage());
    }
    if (paramInt == 3) {
      return new SecretKeySpec(paramArrayOfByte, paramString);
    }
    if ((paramString.equals("")) && (paramInt == 2)) {
      try
      {
        paramArrayOfByte = PrivateKeyInfo.ﹷ(paramArrayOfByte);
        paramString = BouncyCastleProvider.ˏ(paramArrayOfByte);
        if (paramString != null) {
          return paramString;
        }
        throw new InvalidKeyException("algorithm " + paramArrayOfByte.fW().fK() + " not supported");
      }
      catch (Exception paramArrayOfByte)
      {
        throw new InvalidKeyException("Invalid key encoding.");
      }
    }
    try
    {
      paramString = KeyFactory.getInstance(paramString, "SC");
      if (paramInt == 1)
      {
        paramArrayOfByte = paramString.generatePublic(new X509EncodedKeySpec(paramArrayOfByte));
        return paramArrayOfByte;
      }
      if (paramInt == 2)
      {
        paramArrayOfByte = paramString.generatePrivate(new PKCS8EncodedKeySpec(paramArrayOfByte));
        return paramArrayOfByte;
      }
    }
    catch (NoSuchProviderException paramArrayOfByte)
    {
      throw new InvalidKeyException("Unknown key type " + paramArrayOfByte.getMessage());
    }
    catch (InvalidKeySpecException paramArrayOfByte)
    {
      throw new InvalidKeyException("Unknown key type " + paramArrayOfByte.getMessage());
    }
    throw new InvalidKeyException("Unknown key type " + paramInt);
  }
  
  protected int engineUpdate(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    throw new RuntimeException("not supported for wrapping");
  }
  
  protected byte[] engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    throw new RuntimeException("not supported for wrapping");
  }
  
  protected byte[] engineWrap(Key paramKey)
  {
    paramKey = paramKey.getEncoded();
    if (paramKey == null) {
      throw new InvalidKeyException("Cannot wrap key, null encoding.");
    }
    try
    {
      if (this.aXL == null)
      {
        paramKey = engineDoFinal(paramKey, 0, paramKey.length);
        return paramKey;
      }
      paramKey = this.aXL.ᐨ(paramKey, 0, paramKey.length);
      return paramKey;
    }
    catch (BadPaddingException paramKey)
    {
      throw new IllegalBlockSizeException(paramKey.getMessage());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher
 * JD-Core Version:    0.7.0.1
 */