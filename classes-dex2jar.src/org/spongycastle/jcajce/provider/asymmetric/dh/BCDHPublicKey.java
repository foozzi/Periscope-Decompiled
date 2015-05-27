package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.DHDomainParameters;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

public class BCDHPublicKey
  implements DHPublicKey
{
  private BigInteger aPZ;
  private transient DHParameterSpec aWo;
  private transient SubjectPublicKeyInfo aWr;
  
  BCDHPublicKey(BigInteger paramBigInteger, DHParameterSpec paramDHParameterSpec)
  {
    this.aPZ = paramBigInteger;
    this.aWo = paramDHParameterSpec;
  }
  
  BCDHPublicKey(DHPublicKey paramDHPublicKey)
  {
    this.aPZ = paramDHPublicKey.getY();
    this.aWo = paramDHPublicKey.getParams();
  }
  
  BCDHPublicKey(DHPublicKeySpec paramDHPublicKeySpec)
  {
    this.aPZ = paramDHPublicKeySpec.getY();
    this.aWo = new DHParameterSpec(paramDHPublicKeySpec.getP(), paramDHPublicKeySpec.getG());
  }
  
  public BCDHPublicKey(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    this.aWr = paramSubjectPublicKeyInfo;
    try
    {
      localObject = (ASN1Integer)paramSubjectPublicKeyInfo.hV();
    }
    catch (IOException paramSubjectPublicKeyInfo)
    {
      throw new IllegalArgumentException("invalid info structure in DH public key");
    }
    this.aPZ = ((ASN1Integer)localObject).eA();
    Object localObject = ASN1Sequence.ﹾ(paramSubjectPublicKeyInfo.hU().fL());
    paramSubjectPublicKeyInfo = paramSubjectPublicKeyInfo.hU().fK();
    if ((paramSubjectPublicKeyInfo.equals(PKCSObjectIdentifiers.aqE)) || (ˎ((ASN1Sequence)localObject)))
    {
      paramSubjectPublicKeyInfo = DHParameter.ᕁ(localObject);
      if (paramSubjectPublicKeyInfo.fH() != null) {
        this.aWo = new DHParameterSpec(paramSubjectPublicKeyInfo.getP(), paramSubjectPublicKeyInfo.getG(), paramSubjectPublicKeyInfo.fH().intValue());
      } else {
        this.aWo = new DHParameterSpec(paramSubjectPublicKeyInfo.getP(), paramSubjectPublicKeyInfo.getG());
      }
      return;
    }
    if (paramSubjectPublicKeyInfo.equals(X9ObjectIdentifiers.aEI))
    {
      paramSubjectPublicKeyInfo = DHDomainParameters.ᴊ(localObject);
      this.aWo = new DHParameterSpec(paramSubjectPublicKeyInfo.ij().eA(), paramSubjectPublicKeyInfo.ik().eA());
      return;
    }
    throw new IllegalArgumentException("unknown algorithm type: " + paramSubjectPublicKeyInfo);
  }
  
  BCDHPublicKey(DHPublicKeyParameters paramDHPublicKeyParameters)
  {
    this.aPZ = paramDHPublicKeyParameters.getY();
    this.aWo = new DHParameterSpec(paramDHPublicKeyParameters.kA().getP(), paramDHPublicKeyParameters.kA().getG(), paramDHPublicKeyParameters.kA().getL());
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.aWo = new DHParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject(), paramObjectInputStream.readInt());
    this.aWr = null;
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(this.aWo.getP());
    paramObjectOutputStream.writeObject(this.aWo.getG());
    paramObjectOutputStream.writeInt(this.aWo.getL());
  }
  
  private boolean ˎ(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() == 2) {
      return true;
    }
    if (paramASN1Sequence.size() > 3) {
      return false;
    }
    ASN1Integer localASN1Integer = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(2));
    paramASN1Sequence = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(0));
    return localASN1Integer.eA().compareTo(BigInteger.valueOf(paramASN1Sequence.eA().bitLength())) <= 0;
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
    return "DH";
  }
  
  public byte[] getEncoded()
  {
    if (this.aWr != null) {
      return KeyUtil.ᐝ(this.aWr);
    }
    return KeyUtil.ˊ(new AlgorithmIdentifier(PKCSObjectIdentifiers.aqE, new DHParameter(this.aWo.getP(), this.aWo.getG(), this.aWo.getL()).ez()), new ASN1Integer(this.aPZ));
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public DHParameterSpec getParams()
  {
    return this.aWo;
  }
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
  
  public int hashCode()
  {
    return getY().hashCode() ^ getParams().getG().hashCode() ^ getParams().getP().hashCode() ^ getParams().getL();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dh.BCDHPublicKey
 * JD-Core Version:    0.7.0.1
 */