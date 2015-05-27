package org.spongycastle.jcajce.provider.asymmetric.ecgost;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.spec.EllipticCurve;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.ECGOST3410NamedCurveTable;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;

public class BCECGOST3410PublicKey
  implements java.security.interfaces.ECPublicKey, org.spongycastle.jce.interfaces.ECPublicKey, ECPointEncoder
{
  private transient org.spongycastle.math.ec.ECPoint aRv;
  private String aWI = "ECGOST3410";
  private boolean aWJ;
  private transient java.security.spec.ECParameterSpec aWK;
  private transient GOST3410PublicKeyAlgParameters aWZ;
  
  public BCECGOST3410PublicKey(String paramString, ECPublicKeyParameters paramECPublicKeyParameters)
  {
    this.aWI = paramString;
    this.aRv = paramECPublicKeyParameters.kH();
    this.aWK = null;
  }
  
  public BCECGOST3410PublicKey(String paramString, ECPublicKeyParameters paramECPublicKeyParameters, java.security.spec.ECParameterSpec paramECParameterSpec)
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
  
  public BCECGOST3410PublicKey(String paramString, ECPublicKeyParameters paramECPublicKeyParameters, org.spongycastle.jce.spec.ECParameterSpec paramECParameterSpec)
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
  
  public BCECGOST3410PublicKey(java.security.spec.ECPublicKeySpec paramECPublicKeySpec)
  {
    this.aWK = paramECPublicKeySpec.getParams();
    this.aRv = EC5Util.ˊ(this.aWK, paramECPublicKeySpec.getW(), false);
  }
  
  BCECGOST3410PublicKey(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ˎ(paramSubjectPublicKeyInfo);
  }
  
  public BCECGOST3410PublicKey(org.spongycastle.jce.spec.ECPublicKeySpec paramECPublicKeySpec)
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
  
  private void ˊ(byte[] paramArrayOfByte, int paramInt, BigInteger paramBigInteger)
  {
    byte[] arrayOfByte = paramBigInteger.toByteArray();
    paramBigInteger = arrayOfByte;
    if (arrayOfByte.length < 32)
    {
      paramBigInteger = new byte[32];
      System.arraycopy(arrayOfByte, 0, paramBigInteger, paramBigInteger.length - arrayOfByte.length, arrayOfByte.length);
    }
    int i = 0;
    while (i != 32)
    {
      paramArrayOfByte[(paramInt + i)] = paramBigInteger[(paramBigInteger.length - 1 - i)];
      i += 1;
    }
  }
  
  private void ˎ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    Object localObject1 = paramSubjectPublicKeyInfo.hW();
    this.aWI = "ECGOST3410";
    try
    {
      localObject1 = (ASN1OctetString)ASN1Primitive.ՙ(((DERBitString)localObject1).getBytes());
    }
    catch (IOException paramSubjectPublicKeyInfo)
    {
      throw new IllegalArgumentException("error recovering public key");
    }
    Object localObject2 = ((ASN1OctetString)localObject1).eM();
    localObject1 = new byte[32];
    byte[] arrayOfByte = new byte[32];
    int i = 0;
    while (i != localObject1.length)
    {
      localObject1[i] = localObject2[(31 - i)];
      i += 1;
    }
    i = 0;
    while (i != arrayOfByte.length)
    {
      arrayOfByte[i] = localObject2[(63 - i)];
      i += 1;
    }
    this.aWZ = GOST3410PublicKeyAlgParameters.ˤ(paramSubjectPublicKeyInfo.hU().fL());
    paramSubjectPublicKeyInfo = ECGOST3410NamedCurveTable.ﺩ(ECGOST3410NamedCurves.ˎ(this.aWZ.fq()));
    localObject2 = paramSubjectPublicKeyInfo.iv();
    EllipticCurve localEllipticCurve = EC5Util.ˎ((ECCurve)localObject2, paramSubjectPublicKeyInfo.getSeed());
    this.aRv = ((ECCurve)localObject2).ᐝ(new BigInteger(1, (byte[])localObject1), new BigInteger(1, arrayOfByte));
    this.aWK = new ECNamedCurveSpec(ECGOST3410NamedCurves.ˎ(this.aWZ.fq()), localEllipticCurve, new java.security.spec.ECPoint(paramSubjectPublicKeyInfo.iw().pH().toBigInteger(), paramSubjectPublicKeyInfo.iw().pI().toBigInteger()), paramSubjectPublicKeyInfo.gy(), paramSubjectPublicKeyInfo.ix());
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BCECGOST3410PublicKey)) {
      return false;
    }
    paramObject = (BCECGOST3410PublicKey)paramObject;
    return (nE().ʻ(paramObject.nE())) && (nC().equals(paramObject.nC()));
  }
  
  public String getAlgorithm()
  {
    return this.aWI;
  }
  
  public byte[] getEncoded()
  {
    Object localObject;
    if (this.aWZ != null)
    {
      localObject = this.aWZ;
    }
    else if ((this.aWK instanceof ECNamedCurveSpec))
    {
      localObject = new GOST3410PublicKeyAlgParameters(ECGOST3410NamedCurves.ϊ(((ECNamedCurveSpec)this.aWK).getName()), CryptoProObjectIdentifiers.ahg);
    }
    else
    {
      localObject = EC5Util.ˊ(this.aWK.getCurve());
      localObject = new X962Parameters(new X9ECParameters((ECCurve)localObject, EC5Util.ˊ((ECCurve)localObject, this.aWK.getGenerator(), this.aWJ), this.aWK.getOrder(), BigInteger.valueOf(this.aWK.getCofactor()), this.aWK.getCurve().getSeed()));
    }
    BigInteger localBigInteger1 = this.aRv.pH().toBigInteger();
    BigInteger localBigInteger2 = this.aRv.pI().toBigInteger();
    byte[] arrayOfByte = new byte[64];
    ˊ(arrayOfByte, 0, localBigInteger1);
    ˊ(arrayOfByte, 32, localBigInteger2);
    try
    {
      localObject = new SubjectPublicKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.ahd, (ASN1Encodable)localObject), new DEROctetString(arrayOfByte));
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
  
  public org.spongycastle.math.ec.ECPoint nE()
  {
    return this.aRv;
  }
  
  public GOST3410PublicKeyAlgParameters nF()
  {
    return this.aWZ;
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ecgost.BCECGOST3410PublicKey
 * JD-Core Version:    0.7.0.1
 */