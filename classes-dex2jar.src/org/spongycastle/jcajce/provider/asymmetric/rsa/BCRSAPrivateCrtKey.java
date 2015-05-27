package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.pkcs.RSAPrivateKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

public class BCRSAPrivateCrtKey
  extends BCRSAPrivateKey
  implements RSAPrivateCrtKey
{
  private BigInteger aXr;
  private BigInteger aXs;
  private BigInteger aXt;
  private BigInteger aXu;
  private BigInteger aXv;
  private BigInteger asR;
  
  BCRSAPrivateCrtKey(RSAPrivateCrtKey paramRSAPrivateCrtKey)
  {
    this.ajI = paramRSAPrivateCrtKey.getModulus();
    this.asR = paramRSAPrivateCrtKey.getPublicExponent();
    this.asS = paramRSAPrivateCrtKey.getPrivateExponent();
    this.aXr = paramRSAPrivateCrtKey.getPrimeP();
    this.aXs = paramRSAPrivateCrtKey.getPrimeQ();
    this.aXt = paramRSAPrivateCrtKey.getPrimeExponentP();
    this.aXu = paramRSAPrivateCrtKey.getPrimeExponentQ();
    this.aXv = paramRSAPrivateCrtKey.getCrtCoefficient();
  }
  
  BCRSAPrivateCrtKey(RSAPrivateCrtKeySpec paramRSAPrivateCrtKeySpec)
  {
    this.ajI = paramRSAPrivateCrtKeySpec.getModulus();
    this.asR = paramRSAPrivateCrtKeySpec.getPublicExponent();
    this.asS = paramRSAPrivateCrtKeySpec.getPrivateExponent();
    this.aXr = paramRSAPrivateCrtKeySpec.getPrimeP();
    this.aXs = paramRSAPrivateCrtKeySpec.getPrimeQ();
    this.aXt = paramRSAPrivateCrtKeySpec.getPrimeExponentP();
    this.aXu = paramRSAPrivateCrtKeySpec.getPrimeExponentQ();
    this.aXv = paramRSAPrivateCrtKeySpec.getCrtCoefficient();
  }
  
  BCRSAPrivateCrtKey(PrivateKeyInfo paramPrivateKeyInfo)
  {
    this(RSAPrivateKey.ﺑ(paramPrivateKeyInfo.fY()));
  }
  
  BCRSAPrivateCrtKey(RSAPrivateKey paramRSAPrivateKey)
  {
    this.ajI = paramRSAPrivateKey.getModulus();
    this.asR = paramRSAPrivateKey.getPublicExponent();
    this.asS = paramRSAPrivateKey.getPrivateExponent();
    this.aXr = paramRSAPrivateKey.ge();
    this.aXs = paramRSAPrivateKey.gf();
    this.aXt = paramRSAPrivateKey.gg();
    this.aXu = paramRSAPrivateKey.gh();
    this.aXv = paramRSAPrivateKey.gi();
  }
  
  BCRSAPrivateCrtKey(RSAPrivateCrtKeyParameters paramRSAPrivateCrtKeyParameters)
  {
    super(paramRSAPrivateCrtKeyParameters);
    this.asR = paramRSAPrivateCrtKeyParameters.getPublicExponent();
    this.aXr = paramRSAPrivateCrtKeyParameters.getP();
    this.aXs = paramRSAPrivateCrtKeyParameters.getQ();
    this.aXt = paramRSAPrivateCrtKeyParameters.ll();
    this.aXu = paramRSAPrivateCrtKeyParameters.lm();
    this.aXv = paramRSAPrivateCrtKeyParameters.ln();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof RSAPrivateCrtKey)) {
      return false;
    }
    paramObject = (RSAPrivateCrtKey)paramObject;
    return (getModulus().equals(paramObject.getModulus())) && (getPublicExponent().equals(paramObject.getPublicExponent())) && (getPrivateExponent().equals(paramObject.getPrivateExponent())) && (getPrimeP().equals(paramObject.getPrimeP())) && (getPrimeQ().equals(paramObject.getPrimeQ())) && (getPrimeExponentP().equals(paramObject.getPrimeExponentP())) && (getPrimeExponentQ().equals(paramObject.getPrimeExponentQ())) && (getCrtCoefficient().equals(paramObject.getCrtCoefficient()));
  }
  
  public BigInteger getCrtCoefficient()
  {
    return this.aXv;
  }
  
  public byte[] getEncoded()
  {
    return KeyUtil.ˋ(new AlgorithmIdentifier(PKCSObjectIdentifiers.aqq, DERNull.abj), new RSAPrivateKey(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient()));
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public BigInteger getPrimeExponentP()
  {
    return this.aXt;
  }
  
  public BigInteger getPrimeExponentQ()
  {
    return this.aXu;
  }
  
  public BigInteger getPrimeP()
  {
    return this.aXr;
  }
  
  public BigInteger getPrimeQ()
  {
    return this.aXs;
  }
  
  public BigInteger getPublicExponent()
  {
    return this.asR;
  }
  
  public int hashCode()
  {
    return getModulus().hashCode() ^ getPublicExponent().hashCode() ^ getPrivateExponent().hashCode();
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("RSA Private CRT Key").append(str);
    localStringBuffer.append("            modulus: ").append(getModulus().toString(16)).append(str);
    localStringBuffer.append("    public exponent: ").append(getPublicExponent().toString(16)).append(str);
    localStringBuffer.append("   private exponent: ").append(getPrivateExponent().toString(16)).append(str);
    localStringBuffer.append("             primeP: ").append(getPrimeP().toString(16)).append(str);
    localStringBuffer.append("             primeQ: ").append(getPrimeQ().toString(16)).append(str);
    localStringBuffer.append("     primeExponentP: ").append(getPrimeExponentP().toString(16)).append(str);
    localStringBuffer.append("     primeExponentQ: ").append(getPrimeExponentQ().toString(16)).append(str);
    localStringBuffer.append("     crtCoefficient: ").append(getCrtCoefficient().toString(16)).append(str);
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateCrtKey
 * JD-Core Version:    0.7.0.1
 */