package org.spongycastle.jcajce.provider.asymmetric.util;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.sec.SECNamedCurves;
import org.spongycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962NamedCurves;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.ec.CustomNamedCurves;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.ec.BCECPublicKey;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECParameterSpec;

public class ECUtil
{
  public static X9ECParameters ʿ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    Object localObject2 = CustomNamedCurves.ᐝ(paramASN1ObjectIdentifier);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = X962NamedCurves.ᐝ(paramASN1ObjectIdentifier);
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = SECNamedCurves.ᐝ(paramASN1ObjectIdentifier);
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = NISTNamedCurves.ᐝ(paramASN1ObjectIdentifier);
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = TeleTrusTNamedCurves.ᐝ(paramASN1ObjectIdentifier);
      }
    }
    return localObject1;
  }
  
  public static String ˈ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    Object localObject2 = X962NamedCurves.ˎ(paramASN1ObjectIdentifier);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = SECNamedCurves.ˎ(paramASN1ObjectIdentifier);
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = NISTNamedCurves.ˎ(paramASN1ObjectIdentifier);
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = TeleTrusTNamedCurves.ˎ(paramASN1ObjectIdentifier);
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = ECGOST3410NamedCurves.ˎ(paramASN1ObjectIdentifier);
      }
    }
    return localObject1;
  }
  
  public static AsymmetricKeyParameter ˊ(PrivateKey paramPrivateKey)
  {
    ECParameterSpec localECParameterSpec;
    if ((paramPrivateKey instanceof org.spongycastle.jce.interfaces.ECPrivateKey))
    {
      org.spongycastle.jce.interfaces.ECPrivateKey localECPrivateKey = (org.spongycastle.jce.interfaces.ECPrivateKey)paramPrivateKey;
      localECParameterSpec = localECPrivateKey.nB();
      paramPrivateKey = localECParameterSpec;
      if (localECParameterSpec == null) {
        paramPrivateKey = BouncyCastleProvider.baC.nN();
      }
      return new ECPrivateKeyParameters(localECPrivateKey.kz(), new ECDomainParameters(paramPrivateKey.iv(), paramPrivateKey.iw(), paramPrivateKey.gy(), paramPrivateKey.ix(), paramPrivateKey.getSeed()));
    }
    if ((paramPrivateKey instanceof java.security.interfaces.ECPrivateKey))
    {
      paramPrivateKey = (java.security.interfaces.ECPrivateKey)paramPrivateKey;
      localECParameterSpec = EC5Util.ˊ(paramPrivateKey.getParams(), false);
      return new ECPrivateKeyParameters(paramPrivateKey.getS(), new ECDomainParameters(localECParameterSpec.iv(), localECParameterSpec.iw(), localECParameterSpec.gy(), localECParameterSpec.ix(), localECParameterSpec.getSeed()));
    }
    try
    {
      paramPrivateKey = paramPrivateKey.getEncoded();
      if (paramPrivateKey == null) {
        throw new InvalidKeyException("no encoding for EC private key");
      }
      paramPrivateKey = BouncyCastleProvider.ˏ(PrivateKeyInfo.ﹷ(paramPrivateKey));
      if ((paramPrivateKey instanceof java.security.interfaces.ECPrivateKey))
      {
        paramPrivateKey = ˊ(paramPrivateKey);
        return paramPrivateKey;
      }
    }
    catch (Exception paramPrivateKey)
    {
      throw new InvalidKeyException("cannot identify EC private key: " + paramPrivateKey.toString());
    }
    throw new InvalidKeyException("can't identify EC private key.");
  }
  
  public static AsymmetricKeyParameter ˊ(PublicKey paramPublicKey)
  {
    ECParameterSpec localECParameterSpec;
    if ((paramPublicKey instanceof org.spongycastle.jce.interfaces.ECPublicKey))
    {
      paramPublicKey = (org.spongycastle.jce.interfaces.ECPublicKey)paramPublicKey;
      localECParameterSpec = paramPublicKey.nB();
      if (localECParameterSpec == null)
      {
        localECParameterSpec = BouncyCastleProvider.baC.nN();
        return new ECPublicKeyParameters(((BCECPublicKey)paramPublicKey).nE(), new ECDomainParameters(localECParameterSpec.iv(), localECParameterSpec.iw(), localECParameterSpec.gy(), localECParameterSpec.ix(), localECParameterSpec.getSeed()));
      }
      return new ECPublicKeyParameters(paramPublicKey.kH(), new ECDomainParameters(localECParameterSpec.iv(), localECParameterSpec.iw(), localECParameterSpec.gy(), localECParameterSpec.ix(), localECParameterSpec.getSeed()));
    }
    if ((paramPublicKey instanceof java.security.interfaces.ECPublicKey))
    {
      paramPublicKey = (java.security.interfaces.ECPublicKey)paramPublicKey;
      localECParameterSpec = EC5Util.ˊ(paramPublicKey.getParams(), false);
      return new ECPublicKeyParameters(EC5Util.ˊ(paramPublicKey.getParams(), paramPublicKey.getW(), false), new ECDomainParameters(localECParameterSpec.iv(), localECParameterSpec.iw(), localECParameterSpec.gy(), localECParameterSpec.ix(), localECParameterSpec.getSeed()));
    }
    try
    {
      paramPublicKey = paramPublicKey.getEncoded();
      if (paramPublicKey == null) {
        throw new InvalidKeyException("no encoding for EC public key");
      }
      paramPublicKey = BouncyCastleProvider.ʼ(SubjectPublicKeyInfo.ן(paramPublicKey));
      if ((paramPublicKey instanceof java.security.interfaces.ECPublicKey))
      {
        paramPublicKey = ˊ(paramPublicKey);
        return paramPublicKey;
      }
    }
    catch (Exception paramPublicKey)
    {
      throw new InvalidKeyException("cannot identify EC public key: " + paramPublicKey.toString());
    }
    throw new InvalidKeyException("cannot identify EC public key.");
  }
  
  public static ASN1ObjectIdentifier ᴊ(String paramString)
  {
    Object localObject2 = X962NamedCurves.ϊ(paramString);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = SECNamedCurves.ϊ(paramString);
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = NISTNamedCurves.ϊ(paramString);
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = TeleTrusTNamedCurves.ϊ(paramString);
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = ECGOST3410NamedCurves.ϊ(paramString);
      }
    }
    return localObject1;
  }
  
  static int[] ι(int[] paramArrayOfInt)
  {
    int[] arrayOfInt = new int[3];
    if (paramArrayOfInt.length == 1)
    {
      arrayOfInt[0] = paramArrayOfInt[0];
      return arrayOfInt;
    }
    if (paramArrayOfInt.length != 3) {
      throw new IllegalArgumentException("Only Trinomials and pentanomials supported");
    }
    if ((paramArrayOfInt[0] < paramArrayOfInt[1]) && (paramArrayOfInt[0] < paramArrayOfInt[2]))
    {
      arrayOfInt[0] = paramArrayOfInt[0];
      if (paramArrayOfInt[1] < paramArrayOfInt[2])
      {
        arrayOfInt[1] = paramArrayOfInt[1];
        arrayOfInt[2] = paramArrayOfInt[2];
        return arrayOfInt;
      }
      arrayOfInt[1] = paramArrayOfInt[2];
      arrayOfInt[2] = paramArrayOfInt[1];
      return arrayOfInt;
    }
    if (paramArrayOfInt[1] < paramArrayOfInt[2])
    {
      arrayOfInt[0] = paramArrayOfInt[1];
      if (paramArrayOfInt[0] < paramArrayOfInt[2])
      {
        arrayOfInt[1] = paramArrayOfInt[0];
        arrayOfInt[2] = paramArrayOfInt[2];
        return arrayOfInt;
      }
      arrayOfInt[1] = paramArrayOfInt[2];
      arrayOfInt[2] = paramArrayOfInt[0];
      return arrayOfInt;
    }
    arrayOfInt[0] = paramArrayOfInt[2];
    if (paramArrayOfInt[0] < paramArrayOfInt[1])
    {
      arrayOfInt[1] = paramArrayOfInt[0];
      arrayOfInt[2] = paramArrayOfInt[1];
      return arrayOfInt;
    }
    arrayOfInt[1] = paramArrayOfInt[1];
    arrayOfInt[2] = paramArrayOfInt[0];
    return arrayOfInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.ECUtil
 * JD-Core Version:    0.7.0.1
 */