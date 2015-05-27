package org.spongycastle.jce.provider;

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
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECPoint;
import org.spongycastle.asn1.x9.X9IntegerConverter;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.ECGOST3410NamedCurveTable;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;

public class JCEECPublicKey
  implements java.security.interfaces.ECPublicKey, org.spongycastle.jce.interfaces.ECPublicKey, ECPointEncoder
{
  private org.spongycastle.math.ec.ECPoint aRv;
  private String aWI;
  private boolean aWJ;
  private java.security.spec.ECParameterSpec aWK;
  private GOST3410PublicKeyAlgParameters aWZ;
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    ˎ(SubjectPublicKeyInfo.ן(ASN1Primitive.ՙ((byte[])paramObjectInputStream.readObject())));
    this.aWI = ((String)paramObjectInputStream.readObject());
    this.aWJ = paramObjectInputStream.readBoolean();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(getEncoded());
    paramObjectOutputStream.writeObject(this.aWI);
    paramObjectOutputStream.writeBoolean(this.aWJ);
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
    EllipticCurve localEllipticCurve;
    if (paramSubjectPublicKeyInfo.fX().fO().equals(CryptoProObjectIdentifiers.ahd))
    {
      localObject1 = paramSubjectPublicKeyInfo.hW();
      this.aWI = "ECGOST3410";
      try
      {
        localObject1 = (ASN1OctetString)ASN1Primitive.ՙ(((DERBitString)localObject1).getBytes());
      }
      catch (IOException paramSubjectPublicKeyInfo)
      {
        throw new IllegalArgumentException("error recovering public key");
      }
      localObject3 = ((ASN1OctetString)localObject1).eM();
      localObject1 = new byte[32];
      localObject2 = new byte[32];
      int i = 0;
      while (i != localObject1.length)
      {
        localObject1[i] = localObject3[(31 - i)];
        i += 1;
      }
      i = 0;
      while (i != localObject2.length)
      {
        localObject2[i] = localObject3[(63 - i)];
        i += 1;
      }
      this.aWZ = new GOST3410PublicKeyAlgParameters((ASN1Sequence)paramSubjectPublicKeyInfo.fX().fL());
      paramSubjectPublicKeyInfo = ECGOST3410NamedCurveTable.ﺩ(ECGOST3410NamedCurves.ˎ(this.aWZ.fq()));
      localObject3 = paramSubjectPublicKeyInfo.iv();
      localEllipticCurve = EC5Util.ˎ((ECCurve)localObject3, paramSubjectPublicKeyInfo.getSeed());
      this.aRv = ((ECCurve)localObject3).ˋ(new BigInteger(1, (byte[])localObject1), new BigInteger(1, (byte[])localObject2), false);
      this.aWK = new ECNamedCurveSpec(ECGOST3410NamedCurves.ˎ(this.aWZ.fq()), localEllipticCurve, new java.security.spec.ECPoint(paramSubjectPublicKeyInfo.iw().pH().toBigInteger(), paramSubjectPublicKeyInfo.iw().pI().toBigInteger()), paramSubjectPublicKeyInfo.gy(), paramSubjectPublicKeyInfo.ix());
      return;
    }
    Object localObject1 = new X962Parameters((ASN1Primitive)paramSubjectPublicKeyInfo.fX().fL());
    if (((X962Parameters)localObject1).gA())
    {
      localObject2 = (ASN1ObjectIdentifier)((X962Parameters)localObject1).it();
      localObject3 = ECUtil.ʿ((ASN1ObjectIdentifier)localObject2);
      localObject1 = ((X9ECParameters)localObject3).iv();
      localEllipticCurve = EC5Util.ˎ((ECCurve)localObject1, ((X9ECParameters)localObject3).getSeed());
      this.aWK = new ECNamedCurveSpec(ECUtil.ˈ((ASN1ObjectIdentifier)localObject2), localEllipticCurve, new java.security.spec.ECPoint(((X9ECParameters)localObject3).iw().pH().toBigInteger(), ((X9ECParameters)localObject3).iw().pI().toBigInteger()), ((X9ECParameters)localObject3).gy(), ((X9ECParameters)localObject3).ix());
    }
    else if (((X962Parameters)localObject1).is())
    {
      this.aWK = null;
      localObject1 = BouncyCastleProvider.baC.nN().iv();
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
    if (!(paramObject instanceof JCEECPublicKey)) {
      return false;
    }
    paramObject = (JCEECPublicKey)paramObject;
    return (nE().ʻ(paramObject.nE())) && (nC().equals(paramObject.nC()));
  }
  
  public String getAlgorithm()
  {
    return this.aWI;
  }
  
  public byte[] getEncoded()
  {
    Object localObject3;
    Object localObject2;
    if (this.aWI.equals("ECGOST3410"))
    {
      Object localObject1;
      if (this.aWZ != null)
      {
        localObject1 = this.aWZ;
      }
      else if ((this.aWK instanceof ECNamedCurveSpec))
      {
        localObject1 = new GOST3410PublicKeyAlgParameters(ECGOST3410NamedCurves.ϊ(((ECNamedCurveSpec)this.aWK).getName()), CryptoProObjectIdentifiers.ahg);
      }
      else
      {
        localObject1 = EC5Util.ˊ(this.aWK.getCurve());
        localObject1 = new X962Parameters(new X9ECParameters((ECCurve)localObject1, EC5Util.ˊ((ECCurve)localObject1, this.aWK.getGenerator(), this.aWJ), this.aWK.getOrder(), BigInteger.valueOf(this.aWK.getCofactor()), this.aWK.getCurve().getSeed()));
      }
      localObject3 = this.aRv.pH().toBigInteger();
      BigInteger localBigInteger = this.aRv.pI().toBigInteger();
      byte[] arrayOfByte = new byte[64];
      ˊ(arrayOfByte, 0, (BigInteger)localObject3);
      ˊ(arrayOfByte, 32, localBigInteger);
      try
      {
        localObject1 = new SubjectPublicKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.ahd, (ASN1Encodable)localObject1), new DEROctetString(arrayOfByte));
      }
      catch (IOException localIOException)
      {
        return null;
      }
    }
    else
    {
      if ((this.aWK instanceof ECNamedCurveSpec))
      {
        localObject3 = ECUtil.ᴊ(((ECNamedCurveSpec)this.aWK).getName());
        localObject2 = localObject3;
        if (localObject3 == null) {
          localObject2 = new ASN1ObjectIdentifier(((ECNamedCurveSpec)this.aWK).getName());
        }
        localObject2 = new X962Parameters((ASN1ObjectIdentifier)localObject2);
      }
      else if (this.aWK == null)
      {
        localObject2 = new X962Parameters(DERNull.abj);
      }
      else
      {
        localObject2 = EC5Util.ˊ(this.aWK.getCurve());
        localObject2 = new X962Parameters(new X9ECParameters((ECCurve)localObject2, EC5Util.ˊ((ECCurve)localObject2, this.aWK.getGenerator(), this.aWJ), this.aWK.getOrder(), BigInteger.valueOf(this.aWK.getCofactor()), this.aWK.getCurve().getSeed()));
      }
      localObject3 = (ASN1OctetString)new X9ECPoint(nE().iv().ˋ(kH().pH().toBigInteger(), kH().pI().toBigInteger(), this.aWJ)).ez();
      localObject2 = new SubjectPublicKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.aDS, (ASN1Encodable)localObject2), ((ASN1OctetString)localObject3).eM());
    }
    return KeyUtil.ᐝ((SubjectPublicKeyInfo)localObject2);
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
 * Qualified Name:     org.spongycastle.jce.provider.JCEECPublicKey
 * JD-Core Version:    0.7.0.1
 */