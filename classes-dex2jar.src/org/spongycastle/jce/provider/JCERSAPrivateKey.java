package org.spongycastle.jce.provider;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

public class JCERSAPrivateKey
  implements java.security.interfaces.RSAPrivateKey, PKCS12BagAttributeCarrier
{
  private static BigInteger ZERO = BigInteger.valueOf(0L);
  private PKCS12BagAttributeCarrierImpl aWq = new PKCS12BagAttributeCarrierImpl();
  protected BigInteger ajI;
  protected BigInteger asS;
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    this.ajI = ((BigInteger)paramObjectInputStream.readObject());
    this.aWq = new PKCS12BagAttributeCarrierImpl();
    this.aWq.readObject(paramObjectInputStream);
    this.asS = ((BigInteger)paramObjectInputStream.readObject());
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(this.ajI);
    this.aWq.writeObject(paramObjectOutputStream);
    paramObjectOutputStream.writeObject(this.asS);
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
 * Qualified Name:     org.spongycastle.jce.provider.JCERSAPrivateKey
 * JD-Core Version:    0.7.0.1
 */