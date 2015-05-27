package org.spongycastle.jcajce.provider.asymmetric.dh;

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
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x9.DHDomainParameters;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

public class BCDHPrivateKey
  implements DHPrivateKey, PKCS12BagAttributeCarrier
{
  private BigInteger aFO;
  private transient DHParameterSpec aWo;
  private transient PrivateKeyInfo aWp;
  private transient PKCS12BagAttributeCarrierImpl aWq = new PKCS12BagAttributeCarrierImpl();
  
  protected BCDHPrivateKey() {}
  
  BCDHPrivateKey(DHPrivateKey paramDHPrivateKey)
  {
    this.aFO = paramDHPrivateKey.getX();
    this.aWo = paramDHPrivateKey.getParams();
  }
  
  BCDHPrivateKey(DHPrivateKeySpec paramDHPrivateKeySpec)
  {
    this.aFO = paramDHPrivateKeySpec.getX();
    this.aWo = new DHParameterSpec(paramDHPrivateKeySpec.getP(), paramDHPrivateKeySpec.getG());
  }
  
  public BCDHPrivateKey(PrivateKeyInfo paramPrivateKeyInfo)
  {
    ASN1Sequence localASN1Sequence = ASN1Sequence.ﹾ(paramPrivateKeyInfo.fW().fL());
    ASN1Integer localASN1Integer = (ASN1Integer)paramPrivateKeyInfo.fY();
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramPrivateKeyInfo.fW().fK();
    this.aWp = paramPrivateKeyInfo;
    this.aFO = localASN1Integer.eA();
    if (localASN1ObjectIdentifier.equals(PKCSObjectIdentifiers.aqE))
    {
      paramPrivateKeyInfo = DHParameter.ᕁ(localASN1Sequence);
      if (paramPrivateKeyInfo.fH() != null) {
        this.aWo = new DHParameterSpec(paramPrivateKeyInfo.getP(), paramPrivateKeyInfo.getG(), paramPrivateKeyInfo.fH().intValue());
      } else {
        this.aWo = new DHParameterSpec(paramPrivateKeyInfo.getP(), paramPrivateKeyInfo.getG());
      }
      return;
    }
    if (localASN1ObjectIdentifier.equals(X9ObjectIdentifiers.aEI))
    {
      paramPrivateKeyInfo = DHDomainParameters.ᴊ(localASN1Sequence);
      this.aWo = new DHParameterSpec(paramPrivateKeyInfo.ij().eA(), paramPrivateKeyInfo.ik().eA());
      return;
    }
    throw new IllegalArgumentException("unknown algorithm type: " + localASN1ObjectIdentifier);
  }
  
  BCDHPrivateKey(DHPrivateKeyParameters paramDHPrivateKeyParameters)
  {
    this.aFO = paramDHPrivateKeyParameters.getX();
    this.aWo = new DHParameterSpec(paramDHPrivateKeyParameters.kA().getP(), paramDHPrivateKeyParameters.kA().getG(), paramDHPrivateKeyParameters.kA().getL());
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.aWo = new DHParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject(), paramObjectInputStream.readInt());
    this.aWp = null;
    this.aWq = new PKCS12BagAttributeCarrierImpl();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(this.aWo.getP());
    paramObjectOutputStream.writeObject(this.aWo.getG());
    paramObjectOutputStream.writeInt(this.aWo.getL());
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
    return "DH";
  }
  
  public byte[] getEncoded()
  {
    try
    {
      if (this.aWp != null)
      {
        arrayOfByte = this.aWp.getEncoded("DER");
        return arrayOfByte;
      }
      byte[] arrayOfByte = new PrivateKeyInfo(new AlgorithmIdentifier(PKCSObjectIdentifiers.aqE, new DHParameter(this.aWo.getP(), this.aWo.getG(), this.aWo.getL()).ez()), new ASN1Integer(getX())).getEncoded("DER");
      return arrayOfByte;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public DHParameterSpec getParams()
  {
    return this.aWo;
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dh.BCDHPrivateKey
 * JD-Core Version:    0.7.0.1
 */