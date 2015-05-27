package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.spec.EllipticCurve;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECPoint;
import org.spongycastle.asn1.x9.X9IntegerConverter;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;

public class BCECPublicKey
  implements java.security.interfaces.ECPublicKey, org.spongycastle.jce.interfaces.ECPublicKey, ECPointEncoder
{
  private transient org.spongycastle.math.ec.ECPoint aRv;
  private String aWI = "EC";
  private boolean aWJ;
  private transient java.security.spec.ECParameterSpec aWK;
  private transient ProviderConfiguration aWQ;
  
  public BCECPublicKey(String paramString, java.security.spec.ECPublicKeySpec paramECPublicKeySpec, ProviderConfiguration paramProviderConfiguration)
  {
    this.aWI = paramString;
    this.aWK = paramECPublicKeySpec.getParams();
    this.aRv = EC5Util.ˊ(this.aWK, paramECPublicKeySpec.getW(), false);
    this.aWQ = paramProviderConfiguration;
  }
  
  BCECPublicKey(String paramString, SubjectPublicKeyInfo paramSubjectPublicKeyInfo, ProviderConfiguration paramProviderConfiguration)
  {
    this.aWI = paramString;
    this.aWQ = paramProviderConfiguration;
    ˎ(paramSubjectPublicKeyInfo);
  }
  
  public BCECPublicKey(String paramString, ECPublicKeyParameters paramECPublicKeyParameters, java.security.spec.ECParameterSpec paramECParameterSpec, ProviderConfiguration paramProviderConfiguration)
  {
    ECDomainParameters localECDomainParameters = paramECPublicKeyParameters.kG();
    this.aWI = paramString;
    this.aRv = paramECPublicKeyParameters.kH();
    if (paramECParameterSpec == null) {
      this.aWK = ˊ(EC5Util.ˎ(localECDomainParameters.iv(), localECDomainParameters.getSeed()), localECDomainParameters);
    } else {
      this.aWK = paramECParameterSpec;
    }
    this.aWQ = paramProviderConfiguration;
  }
  
  public BCECPublicKey(String paramString, ECPublicKeyParameters paramECPublicKeyParameters, ProviderConfiguration paramProviderConfiguration)
  {
    this.aWI = paramString;
    this.aRv = paramECPublicKeyParameters.kH();
    this.aWK = null;
    this.aWQ = paramProviderConfiguration;
  }
  
  public BCECPublicKey(String paramString, ECPublicKeyParameters paramECPublicKeyParameters, org.spongycastle.jce.spec.ECParameterSpec paramECParameterSpec, ProviderConfiguration paramProviderConfiguration)
  {
    ECDomainParameters localECDomainParameters = paramECPublicKeyParameters.kG();
    this.aWI = paramString;
    if (paramECParameterSpec == null) {
      this.aWK = ˊ(EC5Util.ˎ(localECDomainParameters.iv(), localECDomainParameters.getSeed()), localECDomainParameters);
    } else {
      this.aWK = EC5Util.ˊ(EC5Util.ˎ(paramECParameterSpec.iv(), paramECParameterSpec.getSeed()), paramECParameterSpec);
    }
    this.aRv = EC5Util.ˊ(this.aWK.getCurve()).ᐝ(paramECPublicKeyParameters.kH().pH().toBigInteger(), paramECPublicKeyParameters.kH().pI().toBigInteger());
    this.aWQ = paramProviderConfiguration;
  }
  
  public BCECPublicKey(String paramString, org.spongycastle.jce.spec.ECPublicKeySpec paramECPublicKeySpec, ProviderConfiguration paramProviderConfiguration)
  {
    this.aWI = paramString;
    this.aRv = paramECPublicKeySpec.kH();
    if (paramECPublicKeySpec.pd() != null)
    {
      paramString = EC5Util.ˎ(paramECPublicKeySpec.pd().iv(), paramECPublicKeySpec.pd().getSeed());
      this.aRv = EC5Util.ˊ(paramString).ᐝ(paramECPublicKeySpec.kH().pH().toBigInteger(), paramECPublicKeySpec.kH().pI().toBigInteger());
      this.aWK = EC5Util.ˊ(paramString, paramECPublicKeySpec.pd());
    }
    else
    {
      if (this.aRv.iv() == null) {
        this.aRv = paramProviderConfiguration.nN().iv().ˋ(this.aRv.pJ().toBigInteger(), this.aRv.pK().toBigInteger(), false);
      }
      this.aWK = null;
    }
    this.aWQ = paramProviderConfiguration;
  }
  
  public BCECPublicKey(java.security.interfaces.ECPublicKey paramECPublicKey, ProviderConfiguration paramProviderConfiguration)
  {
    this.aWI = paramECPublicKey.getAlgorithm();
    this.aWK = paramECPublicKey.getParams();
    this.aRv = EC5Util.ˊ(this.aWK, paramECPublicKey.getW(), false);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    ˎ(SubjectPublicKeyInfo.ן(ASN1Primitive.ՙ((byte[])paramObjectInputStream.readObject())));
    this.aWQ = BouncyCastleProvider.baC;
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(getEncoded());
  }
  
  private java.security.spec.ECParameterSpec ˊ(EllipticCurve paramEllipticCurve, ECDomainParameters paramECDomainParameters)
  {
    return new java.security.spec.ECParameterSpec(paramEllipticCurve, new java.security.spec.ECPoint(paramECDomainParameters.iw().pH().toBigInteger(), paramECDomainParameters.iw().pI().toBigInteger()), paramECDomainParameters.gy(), paramECDomainParameters.ix().intValue());
  }
  
  private void ˎ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    Object localObject1 = new X962Parameters((ASN1Primitive)paramSubjectPublicKeyInfo.hU().fL());
    if (((X962Parameters)localObject1).gA())
    {
      localObject2 = (ASN1ObjectIdentifier)((X962Parameters)localObject1).it();
      localObject3 = ECUtil.ʿ((ASN1ObjectIdentifier)localObject2);
      localObject1 = ((X9ECParameters)localObject3).iv();
      EllipticCurve localEllipticCurve = EC5Util.ˎ((ECCurve)localObject1, ((X9ECParameters)localObject3).getSeed());
      this.aWK = new ECNamedCurveSpec(ECUtil.ˈ((ASN1ObjectIdentifier)localObject2), localEllipticCurve, new java.security.spec.ECPoint(((X9ECParameters)localObject3).iw().pH().toBigInteger(), ((X9ECParameters)localObject3).iw().pI().toBigInteger()), ((X9ECParameters)localObject3).gy(), ((X9ECParameters)localObject3).ix());
    }
    else if (((X962Parameters)localObject1).is())
    {
      this.aWK = null;
      localObject1 = this.aWQ.nN().iv();
    }
    else
    {
      localObject2 = X9ECParameters.ﭘ(((X962Parameters)localObject1).it());
      localObject1 = ((X9ECParameters)localObject2).iv();
      this.aWK = new java.security.spec.ECParameterSpec(EC5Util.ˎ((ECCurve)localObject1, ((X9ECParameters)localObject2).getSeed()), new java.security.spec.ECPoint(((X9ECParameters)localObject2).iw().pH().toBigInteger(), ((X9ECParameters)localObject2).iw().pI().toBigInteger()), ((X9ECParameters)localObject2).gy(), ((X9ECParameters)localObject2).ix().intValue());
    }
    Object localObject3 = paramSubjectPublicKeyInfo.hW().getBytes();
    Object localObject2 = new DEROctetString((byte[])localObject3);
    paramSubjectPublicKeyInfo = (SubjectPublicKeyInfo)localObject2;
    if (localObject3[0] == 4)
    {
      paramSubjectPublicKeyInfo = (SubjectPublicKeyInfo)localObject2;
      if (localObject3[1] == localObject3.length - 2) {
        if (localObject3[2] != 2)
        {
          paramSubjectPublicKeyInfo = (SubjectPublicKeyInfo)localObject2;
          if (localObject3[2] != 3) {}
        }
        else
        {
          paramSubjectPublicKeyInfo = (SubjectPublicKeyInfo)localObject2;
          if (new X9IntegerConverter().ˏ((ECCurve)localObject1) >= localObject3.length - 3) {
            try
            {
              paramSubjectPublicKeyInfo = (ASN1OctetString)ASN1Primitive.ՙ((byte[])localObject3);
            }
            catch (IOException paramSubjectPublicKeyInfo)
            {
              throw new IllegalArgumentException("error recovering public key");
            }
          }
        }
      }
    }
    this.aRv = new X9ECPoint((ECCurve)localObject1, paramSubjectPublicKeyInfo).iy();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BCECPublicKey)) {
      return false;
    }
    paramObject = (BCECPublicKey)paramObject;
    return (nE().ʻ(paramObject.nE())) && (nC().equals(paramObject.nC()));
  }
  
  public String getAlgorithm()
  {
    return this.aWI;
  }
  
  public byte[] getEncoded()
  {
    Object localObject1;
    if ((this.aWK instanceof ECNamedCurveSpec))
    {
      localObject2 = ECUtil.ᴊ(((ECNamedCurveSpec)this.aWK).getName());
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new ASN1ObjectIdentifier(((ECNamedCurveSpec)this.aWK).getName());
      }
      localObject1 = new X962Parameters((ASN1ObjectIdentifier)localObject1);
    }
    else if (this.aWK == null)
    {
      localObject1 = new X962Parameters(DERNull.abj);
    }
    else
    {
      localObject1 = EC5Util.ˊ(this.aWK.getCurve());
      localObject1 = new X962Parameters(new X9ECParameters((ECCurve)localObject1, EC5Util.ˊ((ECCurve)localObject1, this.aWK.getGenerator(), this.aWJ), this.aWK.getOrder(), BigInteger.valueOf(this.aWK.getCofactor()), this.aWK.getCurve().getSeed()));
    }
    Object localObject2 = nE().iv();
    if (this.aWK == null) {
      localObject2 = (ASN1OctetString)new X9ECPoint(((ECCurve)localObject2).ˋ(kH().pJ().toBigInteger(), kH().pK().toBigInteger(), this.aWJ)).ez();
    } else {
      localObject2 = (ASN1OctetString)new X9ECPoint(((ECCurve)localObject2).ˋ(kH().pH().toBigInteger(), kH().pI().toBigInteger(), this.aWJ)).ez();
    }
    return KeyUtil.ᐝ(new SubjectPublicKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.aDS, (ASN1Encodable)localObject1), ((ASN1OctetString)localObject2).eM()));
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public java.security.spec.ECParameterSpec getParams()
  {
    return this.aWK;
  }
  
  public java.security.spec.ECPoint getW()
  {
    return new java.security.spec.ECPoint(this.aRv.pH().toBigInteger(), this.aRv.pI().toBigInteger());
  }
  
  public int hashCode()
  {
    return nE().hashCode() ^ nC().hashCode();
  }
  
  public org.spongycastle.math.ec.ECPoint kH()
  {
    if (this.aWK == null) {
      return this.aRv.pE();
    }
    return this.aRv;
  }
  
  public org.spongycastle.jce.spec.ECParameterSpec nB()
  {
    if (this.aWK == null) {
      return null;
    }
    return EC5Util.ˊ(this.aWK, this.aWJ);
  }
  
  org.spongycastle.jce.spec.ECParameterSpec nC()
  {
    if (this.aWK != null) {
      return EC5Util.ˊ(this.aWK, this.aWJ);
    }
    return this.aWQ.nN();
  }
  
  public org.spongycastle.math.ec.ECPoint nE()
  {
    return this.aRv;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("EC Public Key").append(str);
    localStringBuffer.append("            X: ").append(this.aRv.pH().toBigInteger().toString(16)).append(str);
    localStringBuffer.append("            Y: ").append(this.aRv.pI().toBigInteger().toString(16)).append(str);
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ec.BCECPublicKey
 * JD-Core Version:    0.7.0.1
 */