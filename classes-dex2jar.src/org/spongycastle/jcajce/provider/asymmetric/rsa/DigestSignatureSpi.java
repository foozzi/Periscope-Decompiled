package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DigestInfo;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.MD2Digest;
import org.spongycastle.crypto.digests.MD4Digest;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.digests.RIPEMD128Digest;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.digests.RIPEMD256Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSABlindedEngine;

public class DigestSignatureSpi
  extends SignatureSpi
{
  private AsymmetricBlockCipher aEV;
  private Digest aFH;
  private AlgorithmIdentifier agJ;
  
  protected DigestSignatureSpi(ASN1ObjectIdentifier paramASN1ObjectIdentifier, Digest paramDigest, AsymmetricBlockCipher paramAsymmetricBlockCipher)
  {
    this.aFH = paramDigest;
    this.aEV = paramAsymmetricBlockCipher;
    this.agJ = new AlgorithmIdentifier(paramASN1ObjectIdentifier, DERNull.abj);
  }
  
  protected DigestSignatureSpi(Digest paramDigest, AsymmetricBlockCipher paramAsymmetricBlockCipher)
  {
    this.aFH = paramDigest;
    this.aEV = paramAsymmetricBlockCipher;
    this.agJ = null;
  }
  
  private byte[] ᵙ(byte[] paramArrayOfByte)
  {
    if (this.agJ == null) {
      return paramArrayOfByte;
    }
    return new DigestInfo(this.agJ, paramArrayOfByte).getEncoded("DER");
  }
  
  private String ﺩ(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    return paramObject.getClass().getName();
  }
  
  protected Object engineGetParameter(String paramString)
  {
    return null;
  }
  
  protected AlgorithmParameters engineGetParameters()
  {
    return null;
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey)
  {
    if (!(paramPrivateKey instanceof RSAPrivateKey)) {
      throw new InvalidKeyException("Supplied key (" + ﺩ(paramPrivateKey) + ") is not a RSAPrivateKey instance");
    }
    paramPrivateKey = RSAUtil.ˊ((RSAPrivateKey)paramPrivateKey);
    this.aFH.reset();
    this.aEV.ˊ(true, paramPrivateKey);
  }
  
  protected void engineInitVerify(PublicKey paramPublicKey)
  {
    if (!(paramPublicKey instanceof RSAPublicKey)) {
      throw new InvalidKeyException("Supplied key (" + ﺩ(paramPublicKey) + ") is not a RSAPublicKey instance");
    }
    paramPublicKey = RSAUtil.ˊ((RSAPublicKey)paramPublicKey);
    this.aFH.reset();
    this.aEV.ˊ(false, paramPublicKey);
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
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    try
    {
      arrayOfByte = ᵙ(arrayOfByte);
      arrayOfByte = this.aEV.ˑ(arrayOfByte, 0, arrayOfByte.length);
      return arrayOfByte;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      throw new SignatureException("key too small for signature type");
    }
    catch (Exception localException)
    {
      throw new SignatureException(localException.toString());
    }
  }
  
  protected void engineUpdate(byte paramByte)
  {
    this.aFH.update(paramByte);
  }
  
  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  protected boolean engineVerify(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte1, 0);
    byte[] arrayOfByte2;
    try
    {
      paramArrayOfByte = this.aEV.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
      arrayOfByte2 = ᵙ(arrayOfByte1);
    }
    catch (Exception paramArrayOfByte)
    {
      return false;
    }
    int i;
    if (paramArrayOfByte.length == arrayOfByte2.length)
    {
      i = 0;
      while (i < paramArrayOfByte.length)
      {
        if (paramArrayOfByte[i] != arrayOfByte2[i]) {
          return false;
        }
        i += 1;
      }
    }
    else if (paramArrayOfByte.length == arrayOfByte2.length - 2)
    {
      int j = paramArrayOfByte.length - arrayOfByte1.length - 2;
      int k = arrayOfByte2.length;
      int m = arrayOfByte1.length;
      arrayOfByte2[1] = ((byte)(arrayOfByte2[1] - 2));
      arrayOfByte2[3] = ((byte)(arrayOfByte2[3] - 2));
      i = 0;
      while (i < arrayOfByte1.length)
      {
        if (paramArrayOfByte[(j + i)] != arrayOfByte2[(k - m - 2 + i)]) {
          return false;
        }
        i += 1;
      }
      i = 0;
      while (i < j)
      {
        if (paramArrayOfByte[i] != arrayOfByte2[i]) {
          return false;
        }
        i += 1;
      }
    }
    else
    {
      return false;
    }
    return true;
  }
  
  public static class MD2
    extends DigestSignatureSpi
  {
    public MD2()
    {
      super(new MD2Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class MD4
    extends DigestSignatureSpi
  {
    public MD4()
    {
      super(new MD4Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class MD5
    extends DigestSignatureSpi
  {
    public MD5()
    {
      super(new MD5Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class RIPEMD128
    extends DigestSignatureSpi
  {
    public RIPEMD128()
    {
      super(new RIPEMD128Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class RIPEMD160
    extends DigestSignatureSpi
  {
    public RIPEMD160()
    {
      super(new RIPEMD160Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class RIPEMD256
    extends DigestSignatureSpi
  {
    public RIPEMD256()
    {
      super(new RIPEMD256Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class SHA1
    extends DigestSignatureSpi
  {
    public SHA1()
    {
      super(new SHA1Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class SHA224
    extends DigestSignatureSpi
  {
    public SHA224()
    {
      super(new SHA224Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class SHA256
    extends DigestSignatureSpi
  {
    public SHA256()
    {
      super(new SHA256Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class SHA384
    extends DigestSignatureSpi
  {
    public SHA384()
    {
      super(new SHA384Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class SHA512
    extends DigestSignatureSpi
  {
    public SHA512()
    {
      super(new SHA512Digest(), new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class noneRSA
    extends DigestSignatureSpi
  {
    public noneRSA()
    {
      super(new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi
 * JD-Core Version:    0.7.0.1
 */