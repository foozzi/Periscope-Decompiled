package org.spongycastle.jcajce.provider.asymmetric.dstu;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.spec.EllipticCurve;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.ua.DSTU4145BinaryField;
import org.spongycastle.asn1.ua.DSTU4145ECBinary;
import org.spongycastle.asn1.ua.DSTU4145NamedCurves;
import org.spongycastle.asn1.ua.DSTU4145Params;
import org.spongycastle.asn1.ua.DSTU4145PointEncoder;
import org.spongycastle.asn1.ua.UAObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.ECFieldElement;

public class BCDSTU4145PublicKey
  implements java.security.interfaces.ECPublicKey, org.spongycastle.jce.interfaces.ECPublicKey, ECPointEncoder
{
  private transient org.spongycastle.math.ec.ECPoint aRv;
  private String aWI = "DSTU4145";
  private boolean aWJ;
  private transient java.security.spec.ECParameterSpec aWK;
  private transient DSTU4145Params aWL;
  
  public BCDSTU4145PublicKey(String paramString, ECPublicKeyParameters paramECPublicKeyParameters)
  {
    this.aWI = paramString;
    this.aRv = paramECPublicKeyParameters.kH();
    this.aWK = null;
  }
  
  public BCDSTU4145PublicKey(String paramString, ECPublicKeyParameters paramECPublicKeyParameters, java.security.spec.ECParameterSpec paramECParameterSpec)
  {
    ECDomainParameters localECDomainParameters = paramECPublicKeyParameters.kG();
    this.aWI = paramString;
    this.aRv = paramECPublicKeyParameters.kH();
    if (paramECParameterSpec == null)
    {
      this.aWK = ˊ(EC5Util.ˎ(localECDomainParameters.iv(), localECDomainParameters.getSeed()), localECDomainParameters);
      return;
    }
    this.aWK = paramECParameterSpec;
  }
  
  public BCDSTU4145PublicKey(String paramString, ECPublicKeyParameters paramECPublicKeyParameters, org.spongycastle.jce.spec.ECParameterSpec paramECParameterSpec)
  {
    ECDomainParameters localECDomainParameters = paramECPublicKeyParameters.kG();
    this.aWI = paramString;
    this.aRv = paramECPublicKeyParameters.kH();
    if (paramECParameterSpec == null)
    {
      this.aWK = ˊ(EC5Util.ˎ(localECDomainParameters.iv(), localECDomainParameters.getSeed()), localECDomainParameters);
      return;
    }
    this.aWK = EC5Util.ˊ(EC5Util.ˎ(paramECParameterSpec.iv(), paramECParameterSpec.getSeed()), paramECParameterSpec);
  }
  
  public BCDSTU4145PublicKey(java.security.spec.ECPublicKeySpec paramECPublicKeySpec)
  {
    this.aWK = paramECPublicKeySpec.getParams();
    this.aRv = EC5Util.ˊ(this.aWK, paramECPublicKeySpec.getW(), false);
  }
  
  BCDSTU4145PublicKey(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ˎ(paramSubjectPublicKeyInfo);
  }
  
  public BCDSTU4145PublicKey(org.spongycastle.jce.spec.ECPublicKeySpec paramECPublicKeySpec)
  {
    this.aRv = paramECPublicKeySpec.kH();
    if (paramECPublicKeySpec.pd() != null)
    {
      this.aWK = EC5Util.ˊ(EC5Util.ˎ(paramECPublicKeySpec.pd().iv(), paramECPublicKeySpec.pd().getSeed()), paramECPublicKeySpec.pd());
      return;
    }
    if (this.aRv.iv() == null) {
      this.aRv = BouncyCastleProvider.baC.nN().iv().ᐝ(this.aRv.pH().toBigInteger(), this.aRv.pI().toBigInteger());
    }
    this.aWK = null;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    ˎ(SubjectPublicKeyInfo.ן(ASN1Primitive.ՙ((byte[])paramObjectInputStream.readObject())));
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
    Object localObject1 = paramSubjectPublicKeyInfo.hW();
    this.aWI = "DSTU4145";
    try
    {
      localObject1 = (ASN1OctetString)ASN1Primitive.ՙ(((DERBitString)localObject1).getBytes());
    }
    catch (IOException paramSubjectPublicKeyInfo)
    {
      throw new IllegalArgumentException("error recovering public key");
    }
    localObject1 = ((ASN1OctetString)localObject1).eM();
    if (paramSubjectPublicKeyInfo.hU().fK().equals(UAObjectIdentifiers.awc)) {
      ᒻ((byte[])localObject1);
    }
    this.aWL = DSTU4145Params.ײ((ASN1Sequence)paramSubjectPublicKeyInfo.hU().fL());
    if (this.aWL.gA())
    {
      paramSubjectPublicKeyInfo = this.aWL.gE();
      localObject2 = DSTU4145NamedCurves.ˋ(paramSubjectPublicKeyInfo);
      paramSubjectPublicKeyInfo = new ECNamedCurveParameterSpec(paramSubjectPublicKeyInfo.getId(), ((ECDomainParameters)localObject2).iv(), ((ECDomainParameters)localObject2).iw(), ((ECDomainParameters)localObject2).gy(), ((ECDomainParameters)localObject2).ix(), ((ECDomainParameters)localObject2).getSeed());
    }
    else
    {
      localObject2 = this.aWL.gB();
      localObject3 = ((DSTU4145ECBinary)localObject2).gx();
      if (paramSubjectPublicKeyInfo.hU().fK().equals(UAObjectIdentifiers.awc)) {
        ᒻ((byte[])localObject3);
      }
      Object localObject4 = ((DSTU4145ECBinary)localObject2).gw();
      localObject3 = new ECCurve.F2m(((DSTU4145BinaryField)localObject4).getM(), ((DSTU4145BinaryField)localObject4).gt(), ((DSTU4145BinaryField)localObject4).gu(), ((DSTU4145BinaryField)localObject4).gv(), ((DSTU4145ECBinary)localObject2).getA(), new BigInteger(1, (byte[])localObject3));
      localObject4 = ((DSTU4145ECBinary)localObject2).gz();
      if (paramSubjectPublicKeyInfo.hU().fK().equals(UAObjectIdentifiers.awc)) {
        ᒻ((byte[])localObject4);
      }
      paramSubjectPublicKeyInfo = new org.spongycastle.jce.spec.ECParameterSpec((ECCurve)localObject3, DSTU4145PointEncoder.ˊ((ECCurve)localObject3, (byte[])localObject4), ((DSTU4145ECBinary)localObject2).gy());
    }
    Object localObject2 = paramSubjectPublicKeyInfo.iv();
    Object localObject3 = EC5Util.ˎ((ECCurve)localObject2, paramSubjectPublicKeyInfo.getSeed());
    this.aRv = DSTU4145PointEncoder.ˊ((ECCurve)localObject2, (byte[])localObject1);
    if (this.aWL.gA())
    {
      this.aWK = new ECNamedCurveSpec(this.aWL.gE().getId(), (EllipticCurve)localObject3, new java.security.spec.ECPoint(paramSubjectPublicKeyInfo.iw().pH().toBigInteger(), paramSubjectPublicKeyInfo.iw().pI().toBigInteger()), paramSubjectPublicKeyInfo.gy(), paramSubjectPublicKeyInfo.ix());
      return;
    }
    this.aWK = new java.security.spec.ECParameterSpec((EllipticCurve)localObject3, new java.security.spec.ECPoint(paramSubjectPublicKeyInfo.iw().pH().toBigInteger(), paramSubjectPublicKeyInfo.iw().pI().toBigInteger()), paramSubjectPublicKeyInfo.gy(), paramSubjectPublicKeyInfo.ix().intValue());
  }
  
  private void ᒻ(byte[] paramArrayOfByte)
  {
    int j = 0;
    while (j < paramArrayOfByte.length / 2)
    {
      int i = paramArrayOfByte[j];
      paramArrayOfByte[j] = paramArrayOfByte[(paramArrayOfByte.length - 1 - j)];
      paramArrayOfByte[(paramArrayOfByte.length - 1 - j)] = i;
      j += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BCDSTU4145PublicKey)) {
      return false;
    }
    paramObject = (BCDSTU4145PublicKey)paramObject;
    return (nE().ʻ(paramObject.nE())) && (nC().equals(paramObject.nC()));
  }
  
  public String getAlgorithm()
  {
    return this.aWI;
  }
  
  public byte[] getEncoded()
  {
    Object localObject;
    if (this.aWL != null)
    {
      localObject = this.aWL;
    }
    else if ((this.aWK instanceof ECNamedCurveSpec))
    {
      localObject = new DSTU4145Params(new ASN1ObjectIdentifier(((ECNamedCurveSpec)this.aWK).getName()));
    }
    else
    {
      localObject = EC5Util.ˊ(this.aWK.getCurve());
      localObject = new X962Parameters(new X9ECParameters((ECCurve)localObject, EC5Util.ˊ((ECCurve)localObject, this.aWK.getGenerator(), this.aWJ), this.aWK.getOrder(), BigInteger.valueOf(this.aWK.getCofactor()), this.aWK.getCurve().getSeed()));
    }
    byte[] arrayOfByte = DSTU4145PointEncoder.ˊ(this.aRv);
    try
    {
      localObject = new SubjectPublicKeyInfo(new AlgorithmIdentifier(UAObjectIdentifiers.awd, (ASN1Encodable)localObject), new DEROctetString(arrayOfByte));
    }
    catch (IOException localIOException)
    {
      return null;
    }
    return KeyUtil.ᐝ(localIOException);
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
    return BouncyCastleProvider.baC.nN();
  }
  
  public byte[] nD()
  {
    if (this.aWL != null) {
      return this.aWL.gC();
    }
    return DSTU4145Params.gD();
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dstu.BCDSTU4145PublicKey
 * JD-Core Version:    0.7.0.1
 */