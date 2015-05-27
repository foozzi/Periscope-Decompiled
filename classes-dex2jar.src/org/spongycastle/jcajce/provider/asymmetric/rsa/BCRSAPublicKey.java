package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OptionalDataException;
import java.math.BigInteger;
import java.security.spec.RSAPublicKeySpec;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

public class BCRSAPublicKey
  implements java.security.interfaces.RSAPublicKey
{
  private static final AlgorithmIdentifier aXw = new AlgorithmIdentifier(PKCSObjectIdentifiers.aqq, DERNull.abj);
  private transient AlgorithmIdentifier agM;
  private BigInteger ajI;
  private BigInteger asR;
  
  BCRSAPublicKey(java.security.interfaces.RSAPublicKey paramRSAPublicKey)
  {
    this.agM = aXw;
    this.ajI = paramRSAPublicKey.getModulus();
    this.asR = paramRSAPublicKey.getPublicExponent();
  }
  
  BCRSAPublicKey(RSAPublicKeySpec paramRSAPublicKeySpec)
  {
    this.agM = aXw;
    this.ajI = paramRSAPublicKeySpec.getModulus();
    this.asR = paramRSAPublicKeySpec.getPublicExponent();
  }
  
  BCRSAPublicKey(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ˏ(paramSubjectPublicKeyInfo);
  }
  
  BCRSAPublicKey(RSAKeyParameters paramRSAKeyParameters)
  {
    this.agM = aXw;
    this.ajI = paramRSAKeyParameters.getModulus();
    this.asR = paramRSAKeyParameters.getExponent();
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    try
    {
      this.agM = AlgorithmIdentifier.ᓪ(paramObjectInputStream.readObject());
      return;
    }
    catch (OptionalDataException paramObjectInputStream)
    {
      this.agM = aXw;
      return;
    }
    catch (EOFException paramObjectInputStream)
    {
      this.agM = aXw;
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    if (!this.agM.equals(aXw)) {
      paramObjectOutputStream.writeObject(this.agM.getEncoded());
    }
  }
  
  private void ˏ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    try
    {
      org.spongycastle.asn1.pkcs.RSAPublicKey localRSAPublicKey = org.spongycastle.asn1.pkcs.RSAPublicKey.ﻧ(paramSubjectPublicKeyInfo.hV());
      this.agM = paramSubjectPublicKeyInfo.hU();
      this.ajI = localRSAPublicKey.getModulus();
      this.asR = localRSAPublicKey.getPublicExponent();
      return;
    }
    catch (IOException paramSubjectPublicKeyInfo)
    {
      throw new IllegalArgumentException("invalid info structure in RSA public key");
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof java.security.interfaces.RSAPublicKey)) {
      return false;
    }
    paramObject = (java.security.interfaces.RSAPublicKey)paramObject;
    return (getModulus().equals(paramObject.getModulus())) && (getPublicExponent().equals(paramObject.getPublicExponent()));
  }
  
  public String getAlgorithm()
  {
    return "RSA";
  }
  
  public byte[] getEncoded()
  {
    return KeyUtil.ˊ(this.agM, new org.spongycastle.asn1.pkcs.RSAPublicKey(getModulus(), getPublicExponent()));
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.BCRSAPublicKey
 * JD-Core Version:    0.7.0.1
 */