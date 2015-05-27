package org.spongycastle.jce.provider;

import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.RSAPublicKeyStructure;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

public class JCERSAPublicKey
  implements RSAPublicKey
{
  private BigInteger ajI;
  private BigInteger asR;
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof RSAPublicKey)) {
      return false;
    }
    paramObject = (RSAPublicKey)paramObject;
    return (getModulus().equals(paramObject.getModulus())) && (getPublicExponent().equals(paramObject.getPublicExponent()));
  }
  
  public String getAlgorithm()
  {
    return "RSA";
  }
  
  public byte[] getEncoded()
  {
    return KeyUtil.ˊ(new AlgorithmIdentifier(PKCSObjectIdentifiers.aqq, DERNull.abj), new RSAPublicKeyStructure(getModulus(), getPublicExponent()));
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public BigInteger getModulus()
  {
    return this.ajI;
  }
  
  public BigInteger getPublicExponent()
  {
    return this.asR;
  }
  
  public int hashCode()
  {
    return getModulus().hashCode() ^ getPublicExponent().hashCode();
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("RSA Public Key").append(str);
    localStringBuffer.append("            modulus: ").append(getModulus().toString(16)).append(str);
    localStringBuffer.append("    public exponent: ").append(getPublicExponent().toString(16)).append(str);
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.JCERSAPublicKey
 * JD-Core Version:    0.7.0.1
 */