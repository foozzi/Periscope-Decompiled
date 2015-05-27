package org.spongycastle.jcajce.provider.asymmetric.elgamal;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.jce.interfaces.ElGamalPublicKey;
import org.spongycastle.jce.spec.ElGamalParameterSpec;
import org.spongycastle.jce.spec.ElGamalPublicKeySpec;

public class BCElGamalPublicKey
  implements ElGamalPublicKey, DHPublicKey
{
  private BigInteger aPZ;
  private transient ElGamalParameterSpec aXb;
  
  BCElGamalPublicKey(DHPublicKey paramDHPublicKey)
  {
    this.aPZ = paramDHPublicKey.getY();
    this.aXb = new ElGamalParameterSpec(paramDHPublicKey.getParams().getP(), paramDHPublicKey.getParams().getG());
  }
  
  BCElGamalPublicKey(DHPublicKeySpec paramDHPublicKeySpec)
  {
    this.aPZ = paramDHPublicKeySpec.getY();
    this.aXb = new ElGamalParameterSpec(paramDHPublicKeySpec.getP(), paramDHPublicKeySpec.getG());
  }
  
  BCElGamalPublicKey(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ElGamalParameter localElGamalParameter = ElGamalParameter.ᔅ(paramSubjectPublicKeyInfo.hU().fL());
    try
    {
      paramSubjectPublicKeyInfo = (ASN1Integer)paramSubjectPublicKeyInfo.hV();
    }
    catch (IOException paramSubjectPublicKeyInfo)
    {
      throw new IllegalArgumentException("invalid info structure in DSA public key");
    }
    this.aPZ = paramSubjectPublicKeyInfo.eA();
    this.aXb = new ElGamalParameterSpec(localElGamalParameter.getP(), localElGamalParameter.getG());
  }
  
  BCElGamalPublicKey(ElGamalPublicKeyParameters paramElGamalPublicKeyParameters)
  {
    this.aPZ = paramElGamalPublicKeyParameters.getY();
    this.aXb = new ElGamalParameterSpec(paramElGamalPublicKeyParameters.kI().getP(), paramElGamalPublicKeyParameters.kI().getG());
  }
  
  BCElGamalPublicKey(ElGamalPublicKey paramElGamalPublicKey)
  {
    this.aPZ = paramElGamalPublicKey.getY();
    this.aXb = paramElGamalPublicKey.nG();
  }
  
  BCElGamalPublicKey(ElGamalPublicKeySpec paramElGamalPublicKeySpec)
  {
    this.aPZ = paramElGamalPublicKeySpec.getY();
    this.aXb = new ElGamalParameterSpec(paramElGamalPublicKeySpec.pe().getP(), paramElGamalPublicKeySpec.pe().getG());
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.aXb = new ElGamalParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject());
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(this.aXb.getP());
    paramObjectOutputStream.writeObject(this.aXb.getG());
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DHPublicKey)) {
      return false;
    }
    paramObject = (DHPublicKey)paramObject;
    return (getY().equals(paramObject.getY())) && (getParams().getG().equals(paramObject.getParams().getG())) && (getParams().getP().equals(paramObject.getParams().getP())) && (getParams().getL() == paramObject.getParams().getL());
  }
  
  public String getAlgorithm()
  {
    return "ElGamal";
  }
  
  public byte[] getEncoded()
  {
    try
    {
      byte[] arrayOfByte = new SubjectPublicKeyInfo(new AlgorithmIdentifier(OIWObjectIdentifiers.apP, new ElGamalParameter(this.aXb.getP(), this.aXb.getG())), new ASN1Integer(this.aPZ)).getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public DHParameterSpec getParams()
  {
    return new DHParameterSpec(this.aXb.getP(), this.aXb.getG());
  }
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
  
  public int hashCode()
  {
    return getY().hashCode() ^ getParams().getG().hashCode() ^ getParams().getP().hashCode() ^ getParams().getL();
  }
  
  public ElGamalParameterSpec nG()
  {
    return this.aXb;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.elgamal.BCElGamalPublicKey
 * JD-Core Version:    0.7.0.1
 */