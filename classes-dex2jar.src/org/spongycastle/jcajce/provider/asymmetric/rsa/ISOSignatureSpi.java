package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.signers.ISO9796d2Signer;

public class ISOSignatureSpi
  extends SignatureSpi
{
  private ISO9796d2Signer aXz;
  
  protected ISOSignatureSpi(Digest paramDigest, AsymmetricBlockCipher paramAsymmetricBlockCipher)
  {
    this.aXz = new ISO9796d2Signer(paramAsymmetricBlockCipher, paramDigest, true);
  }
  
  protected Object engineGetParameter(String paramString)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey)
  {
    paramPrivateKey = RSAUtil.ˊ((RSAPrivateKey)paramPrivateKey);
    this.aXz.ˊ(true, paramPrivateKey);
  }
  
  protected void engineInitVerify(PublicKey paramPublicKey)
  {
    paramPublicKey = RSAUtil.ˊ((RSAPublicKey)paramPublicKey);
    this.aXz.ˊ(false, paramPublicKey);
  }
  
  protected void engineSetParameter(String paramString, Object paramObject)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineSetParameter(AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected byte[] engineSign()
  {
    try
    {
      byte[] arrayOfByte = this.aXz.iP();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      throw new SignatureException(localException.toString());
    }
  }
  
  protected void engineUpdate(byte paramByte)
  {
    this.aXz.update(paramByte);
  }
  
  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aXz.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  protected boolean engineVerify(byte[] paramArrayOfByte)
  {
    return this.aXz.ᵔ(paramArrayOfByte);
  }
  
  public static class MD5WithRSAEncryption
    extends ISOSignatureSpi
  {
    public MD5WithRSAEncryption()
    {
      super(new RSABlindedEngine());
    }
  }
  
  public static class RIPEMD160WithRSAEncryption
    extends ISOSignatureSpi
  {
    public RIPEMD160WithRSAEncryption()
    {
      super(new RSABlindedEngine());
    }
  }
  
  public static class SHA1WithRSAEncryption
    extends ISOSignatureSpi
  {
    public SHA1WithRSAEncryption()
    {
      super(new RSABlindedEngine());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi
 * JD-Core Version:    0.7.0.1
 */