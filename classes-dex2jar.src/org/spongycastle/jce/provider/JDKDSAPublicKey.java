package org.spongycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAParameterSpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DSAParameter;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;

public class JDKDSAPublicKey
  implements DSAPublicKey
{
  private BigInteger aPZ;
  private DSAParams aWE;
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    this.aPZ = ((BigInteger)paramObjectInputStream.readObject());
    this.aWE = new DSAParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject());
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(this.aPZ);
    paramObjectOutputStream.writeObject(this.aWE.getP());
    paramObjectOutputStream.writeObject(this.aWE.getQ());
    paramObjectOutputStream.writeObject(this.aWE.getG());
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DSAPublicKey)) {
      return false;
    }
    paramObject = (DSAPublicKey)paramObject;
    return (getY().equals(paramObject.getY())) && (getParams().getG().equals(paramObject.getParams().getG())) && (getParams().getP().equals(paramObject.getParams().getP())) && (getParams().getQ().equals(paramObject.getParams().getQ()));
  }
  
  public String getAlgorithm()
  {
    return "DSA";
  }
  
  public byte[] getEncoded()
  {
    try
    {
      if (this.aWE == null)
      {
        arrayOfByte = new SubjectPublicKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.aEB), new ASN1Integer(this.aPZ)).getEncoded("DER");
        return arrayOfByte;
      }
      byte[] arrayOfByte = new SubjectPublicKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.aEB, new DSAParameter(this.aWE.getP(), this.aWE.getQ(), this.aWE.getG())), new ASN1Integer(this.aPZ)).getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public DSAParams getParams()
  {
    return this.aWE;
  }
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
  
  public int hashCode()
  {
    return getY().hashCode() ^ getParams().getG().hashCode() ^ getParams().getP().hashCode() ^ getParams().getQ().hashCode();
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("DSA Public Key").append(str);
    localStringBuffer.append("            y: ").append(getY().toString(16)).append(str);
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.JDKDSAPublicKey
 * JD-Core Version:    0.7.0.1
 */