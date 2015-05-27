package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPrivateKeySpec;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DSAParameter;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

public class BCDSAPrivateKey
  implements DSAPrivateKey, PKCS12BagAttributeCarrier
{
  private BigInteger aFO;
  private transient DSAParams aWE;
  private transient PKCS12BagAttributeCarrierImpl aWq = new PKCS12BagAttributeCarrierImpl();
  
  protected BCDSAPrivateKey() {}
  
  BCDSAPrivateKey(DSAPrivateKey paramDSAPrivateKey)
  {
    this.aFO = paramDSAPrivateKey.getX();
    this.aWE = paramDSAPrivateKey.getParams();
  }
  
  BCDSAPrivateKey(DSAPrivateKeySpec paramDSAPrivateKeySpec)
  {
    this.aFO = paramDSAPrivateKeySpec.getX();
    this.aWE = new DSAParameterSpec(paramDSAPrivateKeySpec.getP(), paramDSAPrivateKeySpec.getQ(), paramDSAPrivateKeySpec.getG());
  }
  
  public BCDSAPrivateKey(PrivateKeyInfo paramPrivateKeyInfo)
  {
    DSAParameter localDSAParameter = DSAParameter.ﭠ(paramPrivateKeyInfo.fW().fL());
    this.aFO = ((ASN1Integer)paramPrivateKeyInfo.fY()).eA();
    this.aWE = new DSAParameterSpec(localDSAParameter.getP(), localDSAParameter.getQ(), localDSAParameter.getG());
  }
  
  BCDSAPrivateKey(DSAPrivateKeyParameters paramDSAPrivateKeyParameters)
  {
    this.aFO = paramDSAPrivateKeyParameters.getX();
    this.aWE = new DSAParameterSpec(paramDSAPrivateKeyParameters.kB().getP(), paramDSAPrivateKeyParameters.kB().getQ(), paramDSAPrivateKeyParameters.kB().getG());
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.aWE = new DSAParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject());
    this.aWq = new PKCS12BagAttributeCarrierImpl();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(this.aWE.getP());
    paramObjectOutputStream.writeObject(this.aWE.getQ());
    paramObjectOutputStream.writeObject(this.aWE.getG());
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DSAPrivateKey)) {
      return false;
    }
    paramObject = (DSAPrivateKey)paramObject;
    return (getX().equals(paramObject.getX())) && (getParams().getG().equals(paramObject.getParams().getG())) && (getParams().getP().equals(paramObject.getParams().getP())) && (getParams().getQ().equals(paramObject.getParams().getQ()));
  }
  
  public String getAlgorithm()
  {
    return "DSA";
  }
  
  public byte[] getEncoded()
  {
    return KeyUtil.ˋ(new AlgorithmIdentifier(X9ObjectIdentifiers.aEB, new DSAParameter(this.aWE.getP(), this.aWE.getQ(), this.aWE.getG()).ez()), new ASN1Integer(getX()));
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public DSAParams getParams()
  {
    return this.aWE;
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
  
  public int hashCode()
  {
    return getX().hashCode() ^ getParams().getG().hashCode() ^ getParams().getP().hashCode() ^ getParams().getQ().hashCode();
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dsa.BCDSAPrivateKey
 * JD-Core Version:    0.7.0.1
 */