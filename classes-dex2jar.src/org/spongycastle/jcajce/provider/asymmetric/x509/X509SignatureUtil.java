package org.spongycastle.jcajce.provider.asymmetric.x509;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.PSSParameterSpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Null;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RSASSAPSSparams;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;

class X509SignatureUtil
{
  private static final ASN1Null aYr = DERNull.abj;
  
  private static String ˉ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    if (PKCSObjectIdentifiers.aqT.equals(paramASN1ObjectIdentifier)) {
      return "MD5";
    }
    if (OIWObjectIdentifiers.apM.equals(paramASN1ObjectIdentifier)) {
      return "SHA1";
    }
    if (NISTObjectIdentifiers.aoe.equals(paramASN1ObjectIdentifier)) {
      return "SHA224";
    }
    if (NISTObjectIdentifiers.aob.equals(paramASN1ObjectIdentifier)) {
      return "SHA256";
    }
    if (NISTObjectIdentifiers.aoc.equals(paramASN1ObjectIdentifier)) {
      return "SHA384";
    }
    if (NISTObjectIdentifiers.aod.equals(paramASN1ObjectIdentifier)) {
      return "SHA512";
    }
    if (TeleTrusTObjectIdentifiers.ava.equals(paramASN1ObjectIdentifier)) {
      return "RIPEMD128";
    }
    if (TeleTrusTObjectIdentifiers.auZ.equals(paramASN1ObjectIdentifier)) {
      return "RIPEMD160";
    }
    if (TeleTrusTObjectIdentifiers.avb.equals(paramASN1ObjectIdentifier)) {
      return "RIPEMD256";
    }
    if (CryptoProObjectIdentifiers.agV.equals(paramASN1ObjectIdentifier)) {
      return "GOST3411";
    }
    return paramASN1ObjectIdentifier.getId();
  }
  
  static String ˊ(AlgorithmIdentifier paramAlgorithmIdentifier)
  {
    ASN1Encodable localASN1Encodable = paramAlgorithmIdentifier.fL();
    if ((localASN1Encodable != null) && (!aYr.equals(localASN1Encodable)))
    {
      if (paramAlgorithmIdentifier.fK().equals(PKCSObjectIdentifiers.aqy))
      {
        paramAlgorithmIdentifier = RSASSAPSSparams.ʺ(localASN1Encodable);
        return ˉ(paramAlgorithmIdentifier.ga().fK()) + "withRSAandMGF1";
      }
      if (paramAlgorithmIdentifier.fK().equals(X9ObjectIdentifiers.aDT))
      {
        paramAlgorithmIdentifier = ASN1Sequence.ﹾ(localASN1Encodable);
        return ˉ((ASN1ObjectIdentifier)paramAlgorithmIdentifier.ϲ(0)) + "withECDSA";
      }
    }
    return paramAlgorithmIdentifier.fK().getId();
  }
  
  static void ˊ(Signature paramSignature, ASN1Encodable paramASN1Encodable)
  {
    if ((paramASN1Encodable != null) && (!aYr.equals(paramASN1Encodable)))
    {
      AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance(paramSignature.getAlgorithm(), paramSignature.getProvider());
      try
      {
        localAlgorithmParameters.init(paramASN1Encodable.ez().getEncoded());
      }
      catch (IOException paramSignature)
      {
        throw new SignatureException("IOException decoding parameters: " + paramSignature.getMessage());
      }
      if (paramSignature.getAlgorithm().endsWith("MGF1")) {
        try
        {
          paramSignature.setParameter(localAlgorithmParameters.getParameterSpec(PSSParameterSpec.class));
          return;
        }
        catch (GeneralSecurityException paramSignature)
        {
          throw new SignatureException("Exception extracting parameters: " + paramSignature.getMessage());
        }
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.x509.X509SignatureUtil
 * JD-Core Version:    0.7.0.1
 */