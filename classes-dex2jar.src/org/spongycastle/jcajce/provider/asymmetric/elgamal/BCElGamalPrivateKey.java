package org.spongycastle.jcajce.provider.asymmetric.elgamal;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.ElGamalPrivateKey;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.spec.ElGamalParameterSpec;
import org.spongycastle.jce.spec.ElGamalPrivateKeySpec;

public class BCElGamalPrivateKey
  implements ElGamalPrivateKey, DHPrivateKey, PKCS12BagAttributeCarrier
{
  private BigInteger aFO;
  private transient PKCS12BagAttributeCarrierImpl aWq = new PKCS12BagAttributeCarrierImpl();
  private transient ElGamalParameterSpec aXb;
  
  protected BCElGamalPrivateKey() {}
  
  BCElGamalPrivateKey(DHPrivateKey paramDHPrivateKey)
  {
    this.aFO = paramDHPrivateKey.getX();
    this.aXb = new ElGamalParameterSpec(paramDHPrivateKey.getParams().getP(), paramDHPrivateKey.getParams().getG());
  }
  
  BCElGamalPrivateKey(DHPrivateKeySpec paramDHPrivateKeySpec)
  {
    this.aFO = paramDHPrivateKeySpec.getX();
    this.aXb = new ElGamalParameterSpec(paramDHPrivateKeySpec.getP(), paramDHPrivateKeySpec.getG());
  }
  
  BCElGamalPrivateKey(PrivateKeyInfo paramPrivateKeyInfo)
  {
    ElGamalParameter localElGamalParameter = ElGamalParameter.ᔅ(paramPrivateKeyInfo.fW().fL());
    this.aFO = ASN1Integer.ﯨ(paramPrivateKeyInfo.fY()).eA();
    this.aXb = new ElGamalParameterSpec(localElGamalParameter.getP(), localElGamalParameter.getG());
  }
  
  BCElGamalPrivateKey(ElGamalPrivateKeyParameters paramElGamalPrivateKeyParameters)
  {
    this.aFO = paramElGamalPrivateKeyParameters.getX();
    this.aXb = new ElGamalParameterSpec(paramElGamalPrivateKeyParameters.kI().getP(), paramElGamalPrivateKeyParameters.kI().getG());
  }
  
  BCElGamalPrivateKey(ElGamalPrivateKey paramElGamalPrivateKey)
  {
    this.aFO = paramElGamalPrivateKey.getX();
    this.aXb = paramElGamalPrivateKey.nG();
  }
  
  BCElGamalPrivateKey(ElGamalPrivateKeySpec paramElGamalPrivateKeySpec)
  {
    this.aFO = paramElGamalPrivateKeySpec.getX();
    this.aXb = new ElGamalParameterSpec(paramElGamalPrivateKeySpec.pe().getP(), paramElGamalPrivateKeySpec.pe().getG());
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.aXb = new ElGamalParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject());
    this.aWq = new PKCS12BagAttributeCarrierImpl();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(this.aXb.getP());
    paramObjectOutputStream.writeObject(this.aXb.getG());
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DHPrivateKey)) {
      return false;
    }
    paramObject = (DHPrivateKey)paramObject;
    return (getX().equals(paramObject.getX())) && (getParams().getG().equals(paramObject.getParams().getG())) && (getParams().getP().equals(paramObject.getParams().getP())) && (getParams().getL() == paramObject.getParams().getL());
  }
  
  public String getAlgorithm()
  {
    return "ElGamal";
  }
  
  public byte[] getEncoded()
  {
    try
    {
      byte[] arrayOfByte = new PrivateKeyInfo(new AlgorithmIdentifier(OIWObjectIdentifiers.apP, new ElGamalParameter(this.aXb.getP(), this.aXb.getG())), new ASN1Integer(getX())).getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public DHParameterSpec getParams()
  {
    return new DHParameterSpec(this.aXb.getP(), this.aXb.getG());
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
  
  public int hashCode()
  {
    return getX().hashCode() ^ getParams().getG().hashCode() ^ getParams().getP().hashCode() ^ getParams().getL();
  }
  
  public Enumeration nA()
  {
    return this.aWq.nA();
  }
  
  public ElGamalParameterSpec nG()
  {
    return this.aXb;
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.elgamal.BCElGamalPrivateKey
 * JD-Core Version:    0.7.0.1
 */