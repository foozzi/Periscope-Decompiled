package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.spec.EllipticCurve;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;

public class BCECPrivateKey
  implements java.security.interfaces.ECPrivateKey, org.spongycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier, ECPointEncoder
{
  private transient BigInteger aPU;
  private String aWI = "EC";
  private boolean aWJ;
  private transient java.security.spec.ECParameterSpec aWK;
  private transient ProviderConfiguration aWQ;
  private transient PKCS12BagAttributeCarrierImpl aWq = new PKCS12BagAttributeCarrierImpl();
  private transient DERBitString aft;
  
  protected BCECPrivateKey() {}
  
  public BCECPrivateKey(String paramString, java.security.spec.ECPrivateKeySpec paramECPrivateKeySpec, ProviderConfiguration paramProviderConfiguration)
  {
    this.aWI = paramString;
    this.aPU = paramECPrivateKeySpec.getS();
    this.aWK = paramECPrivateKeySpec.getParams();
    this.aWQ = paramProviderConfiguration;
  }
  
  BCECPrivateKey(String paramString, PrivateKeyInfo paramPrivateKeyInfo, ProviderConfiguration paramProviderConfiguration)
  {
    this.aWI = paramString;
    this.aWQ = paramProviderConfiguration;
    ˋ(paramPrivateKeyInfo);
  }
  
  public BCECPrivateKey(String paramString, ECPrivateKeyParameters paramECPrivateKeyParameters, BCECPublicKey paramBCECPublicKey, java.security.spec.ECParameterSpec paramECParameterSpec, ProviderConfiguration paramProviderConfiguration)
  {
    ECDomainParameters localECDomainParameters = paramECPrivateKeyParameters.kG();
    this.aWI = paramString;
    this.aPU = paramECPrivateKeyParameters.kz();
    this.aWQ = paramProviderConfiguration;
    if (paramECParameterSpec == null) {
      this.aWK = new java.security.spec.ECParameterSpec(EC5Util.ˎ(localECDomainParameters.iv(), localECDomainParameters.getSeed()), new java.security.spec.ECPoint(localECDomainParameters.iw().pH().toBigInteger(), localECDomainParameters.iw().pI().toBigInteger()), localECDomainParameters.gy(), localECDomainParameters.ix().intValue());
    } else {
      this.aWK = paramECParameterSpec;
    }
    this.aft = ˊ(paramBCECPublicKey);
  }
  
  public BCECPrivateKey(String paramString, ECPrivateKeyParameters paramECPrivateKeyParameters, BCECPublicKey paramBCECPublicKey, org.spongycastle.jce.spec.ECParameterSpec paramECParameterSpec, ProviderConfiguration paramProviderConfiguration)
  {
    ECDomainParameters localECDomainParameters = paramECPrivateKeyParameters.kG();
    this.aWI = paramString;
    this.aPU = paramECPrivateKeyParameters.kz();
    this.aWQ = paramProviderConfiguration;
    if (paramECParameterSpec == null) {
      this.aWK = new java.security.spec.ECParameterSpec(EC5Util.ˎ(localECDomainParameters.iv(), localECDomainParameters.getSeed()), new java.security.spec.ECPoint(localECDomainParameters.iw().pH().toBigInteger(), localECDomainParameters.iw().pI().toBigInteger()), localECDomainParameters.gy(), localECDomainParameters.ix().intValue());
    } else {
      this.aWK = EC5Util.ˊ(EC5Util.ˎ(paramECParameterSpec.iv(), paramECParameterSpec.getSeed()), paramECParameterSpec);
    }
    this.aft = ˊ(paramBCECPublicKey);
  }
  
  public BCECPrivateKey(String paramString, ECPrivateKeyParameters paramECPrivateKeyParameters, ProviderConfiguration paramProviderConfiguration)
  {
    this.aWI = paramString;
    this.aPU = paramECPrivateKeyParameters.kz();
    this.aWK = null;
    this.aWQ = paramProviderConfiguration;
  }
  
  public BCECPrivateKey(String paramString, org.spongycastle.jce.spec.ECPrivateKeySpec paramECPrivateKeySpec, ProviderConfiguration paramProviderConfiguration)
  {
    this.aWI = paramString;
    this.aPU = paramECPrivateKeySpec.kz();
    if (paramECPrivateKeySpec.pd() != null) {
      this.aWK = EC5Util.ˊ(EC5Util.ˎ(paramECPrivateKeySpec.pd().iv(), paramECPrivateKeySpec.pd().getSeed()), paramECPrivateKeySpec.pd());
    } else {
      this.aWK = null;
    }
    this.aWQ = paramProviderConfiguration;
  }
  
  public BCECPrivateKey(java.security.interfaces.ECPrivateKey paramECPrivateKey, ProviderConfiguration paramProviderConfiguration)
  {
    this.aPU = paramECPrivateKey.getS();
    this.aWI = paramECPrivateKey.getAlgorithm();
    this.aWK = paramECPrivateKey.getParams();
    this.aWQ = paramProviderConfiguration;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    ˋ(PrivateKeyInfo.ﹷ(ASN1Primitive.ՙ((byte[])paramObjectInputStream.readObject())));
    this.aWQ = BouncyCastleProvider.baC;
    this.aWq = new PKCS12BagAttributeCarrierImpl();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(getEncoded());
  }
  
  private DERBitString ˊ(BCECPublicKey paramBCECPublicKey)
  {
    try
    {
      paramBCECPublicKey = SubjectPublicKeyInfo.ן(ASN1Primitive.ՙ(paramBCECPublicKey.getEncoded())).hW();
      return paramBCECPublicKey;
    }
    catch (IOException paramBCECPublicKey) {}
    return null;
  }
  
  private void ˋ(PrivateKeyInfo paramPrivateKeyInfo)
  {
    Object localObject = X962Parameters.ⅼ(paramPrivateKeyInfo.fW().fL());
    if (((X962Parameters)localObject).gA())
    {
      localObject = ASN1ObjectIdentifier.ﹴ(((X962Parameters)localObject).it());
      X9ECParameters localX9ECParameters = ECUtil.ʿ((ASN1ObjectIdentifier)localObject);
      EllipticCurve localEllipticCurve = EC5Util.ˎ(localX9ECParameters.iv(), localX9ECParameters.getSeed());
      this.aWK = new ECNamedCurveSpec(ECUtil.ˈ((ASN1ObjectIdentifier)localObject), localEllipticCurve, new java.security.spec.ECPoint(localX9ECParameters.iw().pH().toBigInteger(), localX9ECParameters.iw().pI().toBigInteger()), localX9ECParameters.gy(), localX9ECParameters.ix());
    }
    else if (((X962Parameters)localObject).is())
    {
      this.aWK = null;
    }
    else
    {
      localObject = X9ECParameters.ﭘ(((X962Parameters)localObject).it());
      this.aWK = new java.security.spec.ECParameterSpec(EC5Util.ˎ(((X9ECParameters)localObject).iv(), ((X9ECParameters)localObject).getSeed()), new java.security.spec.ECPoint(((X9ECParameters)localObject).iw().pH().toBigInteger(), ((X9ECParameters)localObject).iw().pI().toBigInteger()), ((X9ECParameters)localObject).gy(), ((X9ECParameters)localObject).ix().intValue());
    }
    paramPrivateKeyInfo = paramPrivateKeyInfo.fY();
    if ((paramPrivateKeyInfo instanceof ASN1Integer))
    {
      this.aPU = ASN1Integer.ﯨ(paramPrivateKeyInfo).eA();
      return;
    }
    paramPrivateKeyInfo = org.spongycastle.asn1.sec.ECPrivateKey.і(paramPrivateKeyInfo);
    this.aPU = paramPrivateKeyInfo.gq();
    this.aft = paramPrivateKeyInfo.gr();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BCECPrivateKey)) {
      return false;
    }
    paramObject = (BCECPrivateKey)paramObject;
    return (kz().equals(paramObject.kz())) && (nC().equals(paramObject.nC()));
  }
  
  public String getAlgorithm()
  {
    return this.aWI;
  }
  
  public byte[] getEncoded()
  {
    Object localObject2;
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
    if (this.aft != null) {
      localObject2 = new org.spongycastle.asn1.sec.ECPrivateKey(getS(), this.aft, (ASN1Encodable)localObject1);
    } else {
      localObject2 = new org.spongycastle.asn1.sec.ECPrivateKey(getS(), (ASN1Encodable)localObject1);
    }
    try
    {
      localObject1 = new PrivateKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.aDS, (ASN1Encodable)localObject1), (ASN1Encodable)localObject2).getEncoded("DER");
      return localObject1;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public java.security.spec.ECParameterSpec getParams()
  {
    return this.aWK;
  }
  
  public BigInteger getS()
  {
    return this.aPU;
  }
  
  public int hashCode()
  {
    return kz().hashCode() ^ nC().hashCode();
  }
  
  public BigInteger kz()
  {
    return this.aPU;
  }
  
  public Enumeration nA()
  {
    return this.aWq.nA();
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
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("EC Private Key").append(str);
    localStringBuffer.append("             S: ").append(this.aPU.toString(16)).append(str);
    return localStringBuffer.toString();
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ec.BCECPrivateKey
 * JD-Core Version:    0.7.0.1
 */