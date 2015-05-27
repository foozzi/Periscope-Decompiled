package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.spec.RSAPrivateKeySpec;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

public class BCRSAPrivateKey
  implements java.security.interfaces.RSAPrivateKey, PKCS12BagAttributeCarrier
{
  private static BigInteger ZERO = BigInteger.valueOf(0L);
  private transient PKCS12BagAttributeCarrierImpl aWq = new PKCS12BagAttributeCarrierImpl();
  protected BigInteger ajI;
  protected BigInteger asS;
  
  protected BCRSAPrivateKey() {}
  
  BCRSAPrivateKey(java.security.interfaces.RSAPrivateKey paramRSAPrivateKey)
  {
    this.ajI = paramRSAPrivateKey.getModulus();
    this.asS = paramRSAPrivateKey.getPrivateExponent();
  }
  
  BCRSAPrivateKey(RSAPrivateKeySpec paramRSAPrivateKeySpec)
  {
    this.ajI = paramRSAPrivateKeySpec.getModulus();
    this.asS = paramRSAPrivateKeySpec.getPrivateExponent();
  }
  
  BCRSAPrivateKey(org.spongycastle.asn1.pkcs.RSAPrivateKey paramRSAPrivateKey)
  {
    this.ajI = paramRSAPrivateKey.getModulus();
    this.asS = paramRSAPrivateKey.getPrivateExponent();
  }
  
  BCRSAPrivateKey(RSAKeyParameters paramRSAKeyParameters)
  {
    this.ajI = paramRSAKeyParameters.getModulus();
    this.asS = paramRSAKeyParameters.getExponent();
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.aWq = new PKCS12BagAttributeCarrierImpl();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof java.security.interfaces.RSAPrivateKey)) {
      return false;
    }
    if (paramObject == this) {
      return true;
    }
    paramObject = (java.security.interfaces.RSAPrivateKey)paramObject;
    return (getModulus().equals(paramObject.getModulus())) && (getPrivateExponent().equals(paramObject.getPrivateExponent()));
  }
  
  public String getAlgorithm()
  {
    return "RSA";
  }
  
  public byte[] getEncoded()
  {
    return KeyUtil.ˋ(new AlgorithmIdentifier(PKCSObjectIdentifiers.aqq, DERNull.abj), new org.spongycastle.asn1.pkcs.RSAPrivateKey(getModulus(), ZERO, getPrivateExponent(), ZERO, ZERO, ZERO, ZERO, ZERO));
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public BigInteger getModulus()
  {
    return this.ajI;
  }
  
  public BigInteger getPrivateExponent()
  {
    return this.asS;
  }
  
  public int hashCode()
  {
    return getModulus().hashCode() ^ getPrivateExponent().hashCode();
  }
  
  public Enumeration nA()
  {
    return this.aWq.nA();
  }
  
  public void ˋ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.aWq.ˋ(paramASN1ObjectIdentifier, paramASN1Encodable);
  }
  
  public ASN1Encodable ͺ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    return this.aWq.ͺ(paramASN1ObjectIdentifier);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey
 * JD-Core Version:    0.7.0.1
 */