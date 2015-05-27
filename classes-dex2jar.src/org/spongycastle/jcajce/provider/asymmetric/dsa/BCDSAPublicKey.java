package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPublicKeySpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DSAParameter;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

public class BCDSAPublicKey
  implements DSAPublicKey
{
  private BigInteger aPZ;
  private transient DSAParams aWE;
  
  BCDSAPublicKey(DSAPublicKey paramDSAPublicKey)
  {
    this.aPZ = paramDSAPublicKey.getY();
    this.aWE = paramDSAPublicKey.getParams();
  }
  
  BCDSAPublicKey(DSAPublicKeySpec paramDSAPublicKeySpec)
  {
    this.aPZ = paramDSAPublicKeySpec.getY();
    this.aWE = new DSAParameterSpec(paramDSAPublicKeySpec.getP(), paramDSAPublicKeySpec.getQ(), paramDSAPublicKeySpec.getG());
  }
  
  public BCDSAPublicKey(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ASN1Integer localASN1Integer;
    try
    {
      localASN1Integer = (ASN1Integer)paramSubjectPublicKeyInfo.hV();
    }
    catch (IOException paramSubjectPublicKeyInfo)
    {
      throw new IllegalArgumentException("invalid info structure in DSA public key");
    }
    this.aPZ = localASN1Integer.eA();
    if (ʻ(paramSubjectPublicKeyInfo.hU().fL()))
    {
      paramSubjectPublicKeyInfo = DSAParameter.ﭠ(paramSubjectPublicKeyInfo.hU().fL());
      this.aWE = new DSAParameterSpec(paramSubjectPublicKeyInfo.getP(), paramSubjectPublicKeyInfo.getQ(), paramSubjectPublicKeyInfo.getG());
    }
  }
  
  BCDSAPublicKey(DSAPublicKeyParameters paramDSAPublicKeyParameters)
  {
    this.aPZ = paramDSAPublicKeyParameters.getY();
    this.aWE = new DSAParameterSpec(paramDSAPublicKeyParameters.kB().getP(), paramDSAPublicKeyParameters.kB().getQ(), paramDSAPublicKeyParameters.kB().getG());
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.aWE = new DSAParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject());
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(this.aWE.getP());
    paramObjectOutputStream.writeObject(this.aWE.getQ());
    paramObjectOutputStream.writeObject(this.aWE.getG());
  }
  
  private boolean ʻ(ASN1Encodable paramASN1Encodable)
  {
    return (paramASN1Encodable != null) && (!DERNull.abj.equals(paramASN1Encodable.ez()));
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
    if (this.aWE == null) {
      return KeyUtil.ˊ(new AlgorithmIdentifier(X9ObjectIdentifiers.aEB), new ASN1Integer(this.aPZ));
    }
    return KeyUtil.ˊ(new AlgorithmIdentifier(X9ObjectIdentifiers.aEB, new DSAParameter(this.aWE.getP(), this.aWE.getQ(), this.aWE.getG()).ez()), new ASN1Integer(this.aPZ));
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dsa.BCDSAPublicKey
 * JD-Core Version:    0.7.0.1
 */