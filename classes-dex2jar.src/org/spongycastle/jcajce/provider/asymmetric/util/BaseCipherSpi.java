package org.spongycastle.jcajce.provider.asymmetric.util;

import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
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
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.jce.provider.BouncyCastleProvider;

public abstract class BaseCipherSpi
  extends CipherSpi
{
  protected Wrapper aXL = null;
  protected AlgorithmParameters aXe = null;
  private Class[] aXo = { IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class };
  
  public int engineGetBlockSize()
  {
    return 0;
  }
  
  protected byte[] engineGetIV()
  {
    return null;
  }
  
  public int engineGetKeySize(Key paramKey)
  {
    return paramKey.getEncoded().length;
  }
  
  public int engineGetOutputSize(int paramInt)
  {
    return -1;
  }
  
  public AlgorithmParameters engineGetParameters()
  {
    return null;
  }
  
  public void engineSetMode(String paramString)
  {
    throw new NoSuchAlgorithmException("can't support mode " + paramString);
  }
  
  public void engineSetPadding(String paramString)
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
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      throw new InvalidKeyException("Unknown key type " + paramArrayOfByte.getMessage());
    }
    catch (InvalidKeySpecException paramArrayOfByte)
    {
      throw new InvalidKeyException("Unknown key type " + paramArrayOfByte.getMessage());
    }
    throw new InvalidKeyException("Unknown key type " + paramInt);
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.BaseCipherSpi
 * JD-Core Version:    0.7.0.1
 */