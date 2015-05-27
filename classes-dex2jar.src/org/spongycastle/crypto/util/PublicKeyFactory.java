package org.spongycastle.crypto.util;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RSAPublicKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DSAParameter;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.asn1.x9.DHDomainParameters;
import org.spongycastle.asn1.x9.DHPublicKey;
import org.spongycastle.asn1.x9.DHValidationParms;
import org.spongycastle.asn1.x9.ECNamedCurveTable;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECPoint;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.ec.CustomNamedCurves;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.crypto.params.DHValidationParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECNamedDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;

public class PublicKeyFactory
{
  public static AsymmetricKeyParameter ˊ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    Object localObject3 = paramSubjectPublicKeyInfo.hU();
    if ((((AlgorithmIdentifier)localObject3).fK().equals(PKCSObjectIdentifiers.aqq)) || (((AlgorithmIdentifier)localObject3).fK().equals(X509ObjectIdentifiers.aCf)))
    {
      paramSubjectPublicKeyInfo = RSAPublicKey.ﻧ(paramSubjectPublicKeyInfo.hV());
      return new RSAKeyParameters(false, paramSubjectPublicKeyInfo.getModulus(), paramSubjectPublicKeyInfo.getPublicExponent());
    }
    Object localObject2;
    Object localObject1;
    if (((AlgorithmIdentifier)localObject3).fK().equals(X9ObjectIdentifiers.aEI))
    {
      localObject2 = DHPublicKey.ᴷ(paramSubjectPublicKeyInfo.hV()).ip().eA();
      Object localObject4 = DHDomainParameters.ᴊ(((AlgorithmIdentifier)localObject3).fL());
      localObject3 = ((DHDomainParameters)localObject4).ij().eA();
      BigInteger localBigInteger1 = ((DHDomainParameters)localObject4).ik().eA();
      BigInteger localBigInteger2 = ((DHDomainParameters)localObject4).il().eA();
      paramSubjectPublicKeyInfo = null;
      if (((DHDomainParameters)localObject4).im() != null) {
        paramSubjectPublicKeyInfo = ((DHDomainParameters)localObject4).im().eA();
      }
      localObject1 = null;
      localObject4 = ((DHDomainParameters)localObject4).io();
      if (localObject4 != null) {
        localObject1 = new DHValidationParameters(((DHValidationParms)localObject4).iq().getBytes(), ((DHValidationParms)localObject4).ir().eA().intValue());
      }
      return new DHPublicKeyParameters((BigInteger)localObject2, new DHParameters((BigInteger)localObject3, localBigInteger1, localBigInteger2, paramSubjectPublicKeyInfo, (DHValidationParameters)localObject1));
    }
    if (((AlgorithmIdentifier)localObject3).fK().equals(PKCSObjectIdentifiers.aqE))
    {
      localObject1 = DHParameter.ᕁ(((AlgorithmIdentifier)localObject3).fL());
      paramSubjectPublicKeyInfo = (ASN1Integer)paramSubjectPublicKeyInfo.hV();
      localObject2 = ((DHParameter)localObject1).fH();
      int i;
      if (localObject2 == null) {
        i = 0;
      } else {
        i = ((BigInteger)localObject2).intValue();
      }
      localObject1 = new DHParameters(((DHParameter)localObject1).getP(), ((DHParameter)localObject1).getG(), null, i);
      return new DHPublicKeyParameters(paramSubjectPublicKeyInfo.eA(), (DHParameters)localObject1);
    }
    if (((AlgorithmIdentifier)localObject3).fK().equals(OIWObjectIdentifiers.apP))
    {
      localObject1 = ElGamalParameter.ᔅ(((AlgorithmIdentifier)localObject3).fL());
      return new ElGamalPublicKeyParameters(((ASN1Integer)paramSubjectPublicKeyInfo.hV()).eA(), new ElGamalParameters(((ElGamalParameter)localObject1).getP(), ((ElGamalParameter)localObject1).getG()));
    }
    if ((((AlgorithmIdentifier)localObject3).fK().equals(X9ObjectIdentifiers.aEB)) || (((AlgorithmIdentifier)localObject3).fK().equals(OIWObjectIdentifiers.apN)))
    {
      localObject1 = (ASN1Integer)paramSubjectPublicKeyInfo.hV();
      localObject2 = ((AlgorithmIdentifier)localObject3).fL();
      paramSubjectPublicKeyInfo = null;
      if (localObject2 != null)
      {
        paramSubjectPublicKeyInfo = DSAParameter.ﭠ(((ASN1Encodable)localObject2).ez());
        paramSubjectPublicKeyInfo = new DSAParameters(paramSubjectPublicKeyInfo.getP(), paramSubjectPublicKeyInfo.getQ(), paramSubjectPublicKeyInfo.getG());
      }
      return new DSAPublicKeyParameters(((ASN1Integer)localObject1).eA(), paramSubjectPublicKeyInfo);
    }
    if (((AlgorithmIdentifier)localObject3).fK().equals(X9ObjectIdentifiers.aDS))
    {
      localObject1 = X962Parameters.ⅼ(((AlgorithmIdentifier)localObject3).fL());
      if (((X962Parameters)localObject1).gA())
      {
        localObject3 = (ASN1ObjectIdentifier)((X962Parameters)localObject1).it();
        localObject2 = CustomNamedCurves.ᐝ((ASN1ObjectIdentifier)localObject3);
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = ECNamedCurveTable.ᐝ((ASN1ObjectIdentifier)localObject3);
        }
        localObject2 = new ECNamedDomainParameters((ASN1ObjectIdentifier)localObject3, ((X9ECParameters)localObject1).iv(), ((X9ECParameters)localObject1).iw(), ((X9ECParameters)localObject1).gy(), ((X9ECParameters)localObject1).ix(), ((X9ECParameters)localObject1).getSeed());
      }
      else
      {
        localObject1 = X9ECParameters.ﭘ(((X962Parameters)localObject1).it());
        localObject2 = new ECDomainParameters(((X9ECParameters)localObject1).iv(), ((X9ECParameters)localObject1).iw(), ((X9ECParameters)localObject1).gy(), ((X9ECParameters)localObject1).ix(), ((X9ECParameters)localObject1).getSeed());
      }
      paramSubjectPublicKeyInfo = new DEROctetString(paramSubjectPublicKeyInfo.hW().getBytes());
      return new ECPublicKeyParameters(new X9ECPoint(((X9ECParameters)localObject1).iv(), paramSubjectPublicKeyInfo).iy(), (ECDomainParameters)localObject2);
    }
    throw new RuntimeException("algorithm identifier in key not recognised");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.util.PublicKeyFactory
 * JD-Core Version:    0.7.0.1
 */