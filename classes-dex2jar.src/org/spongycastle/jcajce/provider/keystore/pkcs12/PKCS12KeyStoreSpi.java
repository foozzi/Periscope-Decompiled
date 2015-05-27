package org.spongycastle.jcajce.provider.keystore.pkcs12;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.Key;
import java.security.KeyStore.LoadStoreParameter;
import java.security.KeyStore.PasswordProtection;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Vector;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.BEROctetString;
import org.spongycastle.asn1.BEROutputStream;
import org.spongycastle.asn1.DERBMPString;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DEROutputStream;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.GOST28147Parameters;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.ntt.NTTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.AuthenticatedSafe;
import org.spongycastle.asn1.pkcs.CertBag;
import org.spongycastle.asn1.pkcs.ContentInfo;
import org.spongycastle.asn1.pkcs.EncryptedData;
import org.spongycastle.asn1.pkcs.EncryptedPrivateKeyInfo;
import org.spongycastle.asn1.pkcs.EncryptionScheme;
import org.spongycastle.asn1.pkcs.KeyDerivationFunc;
import org.spongycastle.asn1.pkcs.MacData;
import org.spongycastle.asn1.pkcs.PBES2Parameters;
import org.spongycastle.asn1.pkcs.PBKDF2Params;
import org.spongycastle.asn1.pkcs.PKCS12PBEParams;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.Pfx;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.pkcs.SafeBag;
import org.spongycastle.asn1.util.ASN1Dump;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.AuthorityKeyIdentifier;
import org.spongycastle.asn1.x509.DigestInfo;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.SubjectKeyIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.jcajce.provider.config.PKCS12StoreParameter;
import org.spongycastle.jcajce.provider.symmetric.util.BCPBEKey;
import org.spongycastle.jcajce.spec.GOST28147ParameterSpec;
import org.spongycastle.jcajce.spec.PBKDF2KeySpec;
import org.spongycastle.jce.interfaces.BCKeyStore;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.provider.JDKPKCS12StoreParameter;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;

public class PKCS12KeyStoreSpi
  extends KeyStoreSpi
  implements PKCSObjectIdentifiers, X509ObjectIdentifiers, BCKeyStore
{
  private static final Provider aYA = new BouncyCastleProvider();
  private static final DefaultSecretKeyProvider aYB = new DefaultSecretKeyProvider();
  protected SecureRandom aFa = new SecureRandom();
  private IgnoresCaseHashtable aYC = new IgnoresCaseHashtable(null);
  private Hashtable aYD = new Hashtable();
  private IgnoresCaseHashtable aYE = new IgnoresCaseHashtable(null);
  private Hashtable aYF = new Hashtable();
  private Hashtable aYG = new Hashtable();
  private CertificateFactory aYH;
  private ASN1ObjectIdentifier aYI;
  private ASN1ObjectIdentifier aYJ;
  
  public PKCS12KeyStoreSpi(Provider paramProvider, ASN1ObjectIdentifier paramASN1ObjectIdentifier1, ASN1ObjectIdentifier paramASN1ObjectIdentifier2)
  {
    this.aYI = paramASN1ObjectIdentifier1;
    this.aYJ = paramASN1ObjectIdentifier2;
    if (paramProvider != null) {}
    try
    {
      this.aYH = CertificateFactory.getInstance("X.509", paramProvider);
      break label108;
      this.aYH = CertificateFactory.getInstance("X.509");
      label108:
      return;
    }
    catch (Exception paramProvider)
    {
      throw new IllegalArgumentException("can't create cert factory - " + paramProvider.toString());
    }
  }
  
  private static byte[] ʻ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    SHA1Digest localSHA1Digest = new SHA1Digest();
    byte[] arrayOfByte = new byte[localSHA1Digest.iJ()];
    paramSubjectPublicKeyInfo = paramSubjectPublicKeyInfo.hW().getBytes();
    localSHA1Digest.update(paramSubjectPublicKeyInfo, 0, paramSubjectPublicKeyInfo.length);
    localSHA1Digest.doFinal(arrayOfByte, 0);
    return arrayOfByte;
  }
  
  private Cipher ˊ(int paramInt, char[] paramArrayOfChar, AlgorithmIdentifier paramAlgorithmIdentifier)
  {
    paramAlgorithmIdentifier = PBES2Parameters.ᵧ(paramAlgorithmIdentifier.fL());
    Object localObject = PBKDF2Params.וּ(paramAlgorithmIdentifier.fP().fL());
    AlgorithmIdentifier localAlgorithmIdentifier = AlgorithmIdentifier.ᓪ(paramAlgorithmIdentifier.fQ());
    SecretKeyFactory localSecretKeyFactory = SecretKeyFactory.getInstance(paramAlgorithmIdentifier.fP().fK().getId(), aYA);
    if (((PBKDF2Params)localObject).fR()) {
      paramArrayOfChar = localSecretKeyFactory.generateSecret(new PBEKeySpec(paramArrayOfChar, ((PBKDF2Params)localObject).getSalt(), ((PBKDF2Params)localObject).fN().intValue(), aYB.ˋ(localAlgorithmIdentifier)));
    } else {
      paramArrayOfChar = localSecretKeyFactory.generateSecret(new PBKDF2KeySpec(paramArrayOfChar, ((PBKDF2Params)localObject).getSalt(), ((PBKDF2Params)localObject).fN().intValue(), aYB.ˋ(localAlgorithmIdentifier), ((PBKDF2Params)localObject).fS()));
    }
    localObject = Cipher.getInstance(paramAlgorithmIdentifier.fQ().fK().getId());
    AlgorithmIdentifier.ᓪ(paramAlgorithmIdentifier.fQ());
    paramAlgorithmIdentifier = paramAlgorithmIdentifier.fQ().fL();
    if ((paramAlgorithmIdentifier instanceof ASN1OctetString))
    {
      ((Cipher)localObject).init(paramInt, paramArrayOfChar, new IvParameterSpec(ASN1OctetString.ﹸ(paramAlgorithmIdentifier).eM()));
      return localObject;
    }
    paramAlgorithmIdentifier = GOST28147Parameters.ˢ(paramAlgorithmIdentifier);
    ((Cipher)localObject).init(paramInt, paramArrayOfChar, new GOST28147ParameterSpec(paramAlgorithmIdentifier.fp(), paramAlgorithmIdentifier.getIV()));
    return localObject;
  }
  
  private void ˊ(OutputStream paramOutputStream, char[] paramArrayOfChar, boolean paramBoolean)
  {
    if (paramArrayOfChar == null) {
      throw new NullPointerException("No password supplied for PKCS#12 KeyStore.");
    }
    Object localObject1 = new ASN1EncodableVector();
    Object localObject2 = this.aYC.keys();
    Object localObject6;
    int i;
    int j;
    Object localObject7;
    Object localObject8;
    Object localObject9;
    while (((Enumeration)localObject2).hasMoreElements())
    {
      localObject4 = new byte[20];
      this.aFa.nextBytes((byte[])localObject4);
      localObject3 = (String)((Enumeration)localObject2).nextElement();
      localObject6 = (PrivateKey)this.aYC.get((String)localObject3);
      localObject4 = new PKCS12PBEParams((byte[])localObject4, 1024);
      localObject5 = ˊ(this.aYI.getId(), (Key)localObject6, (PKCS12PBEParams)localObject4, paramArrayOfChar);
      localObject4 = new EncryptedPrivateKeyInfo(new AlgorithmIdentifier(this.aYI, ((PKCS12PBEParams)localObject4).ez()), (byte[])localObject5);
      i = 0;
      j = 0;
      localObject5 = new ASN1EncodableVector();
      if ((localObject6 instanceof PKCS12BagAttributeCarrier))
      {
        localObject6 = (PKCS12BagAttributeCarrier)localObject6;
        localObject7 = (DERBMPString)((PKCS12BagAttributeCarrier)localObject6).ͺ(arn);
        if ((localObject7 == null) || (!((DERBMPString)localObject7).getString().equals(localObject3))) {
          ((PKCS12BagAttributeCarrier)localObject6).ˋ(arn, new DERBMPString((String)localObject3));
        }
        if (((PKCS12BagAttributeCarrier)localObject6).ͺ(aro) == null)
        {
          localObject7 = engineGetCertificate((String)localObject3);
          ((PKCS12BagAttributeCarrier)localObject6).ˋ(aro, ˋ(((Certificate)localObject7).getPublicKey()));
        }
        localObject7 = ((PKCS12BagAttributeCarrier)localObject6).nA();
        i = j;
        while (((Enumeration)localObject7).hasMoreElements())
        {
          localObject8 = (ASN1ObjectIdentifier)((Enumeration)localObject7).nextElement();
          localObject9 = new ASN1EncodableVector();
          ((ASN1EncodableVector)localObject9).ˊ((ASN1Encodable)localObject8);
          ((ASN1EncodableVector)localObject9).ˊ(new DERSet(((PKCS12BagAttributeCarrier)localObject6).ͺ((ASN1ObjectIdentifier)localObject8)));
          i = 1;
          ((ASN1EncodableVector)localObject5).ˊ(new DERSequence((ASN1EncodableVector)localObject9));
        }
      }
      if (i == 0)
      {
        localObject6 = new ASN1EncodableVector();
        localObject7 = engineGetCertificate((String)localObject3);
        ((ASN1EncodableVector)localObject6).ˊ(aro);
        ((ASN1EncodableVector)localObject6).ˊ(new DERSet(ˋ(((Certificate)localObject7).getPublicKey())));
        ((ASN1EncodableVector)localObject5).ˊ(new DERSequence((ASN1EncodableVector)localObject6));
        localObject6 = new ASN1EncodableVector();
        ((ASN1EncodableVector)localObject6).ˊ(arn);
        ((ASN1EncodableVector)localObject6).ˊ(new DERSet(new DERBMPString((String)localObject3)));
        ((ASN1EncodableVector)localObject5).ˊ(new DERSequence((ASN1EncodableVector)localObject6));
      }
      ((ASN1EncodableVector)localObject1).ˊ(new SafeBag(ast, ((EncryptedPrivateKeyInfo)localObject4).ez(), new DERSet((ASN1EncodableVector)localObject5)));
    }
    localObject1 = new BEROctetString(new DERSequence((ASN1EncodableVector)localObject1).getEncoded("DER"));
    Object localObject3 = new byte[20];
    this.aFa.nextBytes((byte[])localObject3);
    localObject2 = new ASN1EncodableVector();
    localObject3 = new PKCS12PBEParams((byte[])localObject3, 1024);
    localObject3 = new AlgorithmIdentifier(this.aYJ, ((PKCS12PBEParams)localObject3).ez());
    Object localObject4 = new Hashtable();
    Object localObject5 = this.aYC.keys();
    Object localObject10;
    Object localObject11;
    ASN1ObjectIdentifier localASN1ObjectIdentifier;
    ASN1EncodableVector localASN1EncodableVector;
    while (((Enumeration)localObject5).hasMoreElements()) {
      try
      {
        localObject6 = (String)((Enumeration)localObject5).nextElement();
        localObject7 = engineGetCertificate((String)localObject6);
        i = 0;
        j = 0;
        localObject8 = new CertBag(arr, new DEROctetString(((Certificate)localObject7).getEncoded()));
        localObject9 = new ASN1EncodableVector();
        if ((localObject7 instanceof PKCS12BagAttributeCarrier))
        {
          localObject10 = (PKCS12BagAttributeCarrier)localObject7;
          localObject11 = (DERBMPString)((PKCS12BagAttributeCarrier)localObject10).ͺ(arn);
          if ((localObject11 == null) || (!((DERBMPString)localObject11).getString().equals(localObject6))) {
            ((PKCS12BagAttributeCarrier)localObject10).ˋ(arn, new DERBMPString((String)localObject6));
          }
          if (((PKCS12BagAttributeCarrier)localObject10).ͺ(aro) == null) {
            ((PKCS12BagAttributeCarrier)localObject10).ˋ(aro, ˋ(((Certificate)localObject7).getPublicKey()));
          }
          localObject11 = ((PKCS12BagAttributeCarrier)localObject10).nA();
          for (i = j; ((Enumeration)localObject11).hasMoreElements(); i = 1)
          {
            localASN1ObjectIdentifier = (ASN1ObjectIdentifier)((Enumeration)localObject11).nextElement();
            localASN1EncodableVector = new ASN1EncodableVector();
            localASN1EncodableVector.ˊ(localASN1ObjectIdentifier);
            localASN1EncodableVector.ˊ(new DERSet(((PKCS12BagAttributeCarrier)localObject10).ͺ(localASN1ObjectIdentifier)));
            ((ASN1EncodableVector)localObject9).ˊ(new DERSequence(localASN1EncodableVector));
          }
        }
        if (i == 0)
        {
          localObject10 = new ASN1EncodableVector();
          ((ASN1EncodableVector)localObject10).ˊ(aro);
          ((ASN1EncodableVector)localObject10).ˊ(new DERSet(ˋ(((Certificate)localObject7).getPublicKey())));
          ((ASN1EncodableVector)localObject9).ˊ(new DERSequence((ASN1EncodableVector)localObject10));
          localObject10 = new ASN1EncodableVector();
          ((ASN1EncodableVector)localObject10).ˊ(arn);
          ((ASN1EncodableVector)localObject10).ˊ(new DERSet(new DERBMPString((String)localObject6)));
          ((ASN1EncodableVector)localObject9).ˊ(new DERSequence((ASN1EncodableVector)localObject10));
        }
        ((ASN1EncodableVector)localObject2).ˊ(new SafeBag(asu, ((CertBag)localObject8).ez(), new DERSet((ASN1EncodableVector)localObject9)));
        ((Hashtable)localObject4).put(localObject7, localObject7);
      }
      catch (CertificateEncodingException paramOutputStream)
      {
        throw new IOException("Error encoding certificate: " + paramOutputStream.toString());
      }
    }
    localObject5 = this.aYE.keys();
    while (((Enumeration)localObject5).hasMoreElements()) {
      try
      {
        localObject6 = (String)((Enumeration)localObject5).nextElement();
        localObject7 = (Certificate)this.aYE.get((String)localObject6);
        j = 0;
        i = 0;
        localObject8 = this.aYC.get((String)localObject6);
        if (localObject8 == null)
        {
          localObject8 = new CertBag(arr, new DEROctetString(((Certificate)localObject7).getEncoded()));
          localObject9 = new ASN1EncodableVector();
          if ((localObject7 instanceof PKCS12BagAttributeCarrier))
          {
            localObject10 = (PKCS12BagAttributeCarrier)localObject7;
            localObject11 = (DERBMPString)((PKCS12BagAttributeCarrier)localObject10).ͺ(arn);
            if ((localObject11 == null) || (!((DERBMPString)localObject11).getString().equals(localObject6))) {
              ((PKCS12BagAttributeCarrier)localObject10).ˋ(arn, new DERBMPString((String)localObject6));
            }
            localObject11 = ((PKCS12BagAttributeCarrier)localObject10).nA();
            for (;;)
            {
              j = i;
              if (!((Enumeration)localObject11).hasMoreElements()) {
                break;
              }
              localASN1ObjectIdentifier = (ASN1ObjectIdentifier)((Enumeration)localObject11).nextElement();
              if (!localASN1ObjectIdentifier.equals(PKCSObjectIdentifiers.aro))
              {
                localASN1EncodableVector = new ASN1EncodableVector();
                localASN1EncodableVector.ˊ(localASN1ObjectIdentifier);
                localASN1EncodableVector.ˊ(new DERSet(((PKCS12BagAttributeCarrier)localObject10).ͺ(localASN1ObjectIdentifier)));
                ((ASN1EncodableVector)localObject9).ˊ(new DERSequence(localASN1EncodableVector));
                i = 1;
              }
            }
          }
          if (j == 0)
          {
            localObject10 = new ASN1EncodableVector();
            ((ASN1EncodableVector)localObject10).ˊ(arn);
            ((ASN1EncodableVector)localObject10).ˊ(new DERSet(new DERBMPString((String)localObject6)));
            ((ASN1EncodableVector)localObject9).ˊ(new DERSequence((ASN1EncodableVector)localObject10));
          }
          ((ASN1EncodableVector)localObject2).ˊ(new SafeBag(asu, ((CertBag)localObject8).ez(), new DERSet((ASN1EncodableVector)localObject9)));
          ((Hashtable)localObject4).put(localObject7, localObject7);
        }
      }
      catch (CertificateEncodingException paramOutputStream)
      {
        throw new IOException("Error encoding certificate: " + paramOutputStream.toString());
      }
    }
    localObject5 = this.aYF.keys();
    while (((Enumeration)localObject5).hasMoreElements()) {
      try
      {
        localObject6 = (CertId)((Enumeration)localObject5).nextElement();
        localObject8 = (Certificate)this.aYF.get(localObject6);
        localObject6 = ((Hashtable)localObject4).get(localObject8);
        if (localObject6 == null)
        {
          localObject6 = new CertBag(arr, new DEROctetString(((Certificate)localObject8).getEncoded()));
          localObject7 = new ASN1EncodableVector();
          if ((localObject8 instanceof PKCS12BagAttributeCarrier))
          {
            localObject8 = (PKCS12BagAttributeCarrier)localObject8;
            localObject9 = ((PKCS12BagAttributeCarrier)localObject8).nA();
            while (((Enumeration)localObject9).hasMoreElements())
            {
              localObject10 = (ASN1ObjectIdentifier)((Enumeration)localObject9).nextElement();
              if (!((ASN1ObjectIdentifier)localObject10).equals(PKCSObjectIdentifiers.aro))
              {
                localObject11 = new ASN1EncodableVector();
                ((ASN1EncodableVector)localObject11).ˊ((ASN1Encodable)localObject10);
                ((ASN1EncodableVector)localObject11).ˊ(new DERSet(((PKCS12BagAttributeCarrier)localObject8).ͺ((ASN1ObjectIdentifier)localObject10)));
                ((ASN1EncodableVector)localObject7).ˊ(new DERSequence((ASN1EncodableVector)localObject11));
              }
            }
          }
          ((ASN1EncodableVector)localObject2).ˊ(new SafeBag(asu, ((CertBag)localObject6).ez(), new DERSet((ASN1EncodableVector)localObject7)));
        }
      }
      catch (CertificateEncodingException paramOutputStream)
      {
        throw new IOException("Error encoding certificate: " + paramOutputStream.toString());
      }
    }
    localObject2 = ˊ(true, (AlgorithmIdentifier)localObject3, paramArrayOfChar, false, new DERSequence((ASN1EncodableVector)localObject2).getEncoded("DER"));
    localObject2 = new EncryptedData(aeB, (AlgorithmIdentifier)localObject3, new BEROctetString((byte[])localObject2));
    localObject2 = new AuthenticatedSafe(new ContentInfo[] { new ContentInfo(aeB, (ASN1Encodable)localObject1), new ContentInfo(aeG, ((EncryptedData)localObject2).ez()) });
    localObject3 = new ByteArrayOutputStream();
    if (paramBoolean) {
      localObject1 = new DEROutputStream((OutputStream)localObject3);
    } else {
      localObject1 = new BEROutputStream((OutputStream)localObject3);
    }
    ((DEROutputStream)localObject1).ˋ((ASN1Encodable)localObject2);
    localObject1 = ((ByteArrayOutputStream)localObject3).toByteArray();
    localObject1 = new ContentInfo(aeB, new BEROctetString((byte[])localObject1));
    localObject2 = new byte[20];
    this.aFa.nextBytes((byte[])localObject2);
    localObject3 = ((ASN1OctetString)((ContentInfo)localObject1).fG()).eM();
    try
    {
      paramArrayOfChar = ˊ(aCd, (byte[])localObject2, 1024, paramArrayOfChar, false, (byte[])localObject3);
      paramArrayOfChar = new MacData(new DigestInfo(new AlgorithmIdentifier(aCd, DERNull.abj), paramArrayOfChar), (byte[])localObject2, 1024);
    }
    catch (Exception paramOutputStream)
    {
      throw new IOException("error constructing MAC: " + paramOutputStream.toString());
    }
    paramArrayOfChar = new Pfx((ContentInfo)localObject1, paramArrayOfChar);
    if (paramBoolean) {
      paramOutputStream = new DEROutputStream(paramOutputStream);
    } else {
      paramOutputStream = new BEROutputStream(paramOutputStream);
    }
    paramOutputStream.ˋ(paramArrayOfChar);
  }
  
  private static byte[] ˊ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, byte[] paramArrayOfByte1, int paramInt, char[] paramArrayOfChar, boolean paramBoolean, byte[] paramArrayOfByte2)
  {
    SecretKeyFactory localSecretKeyFactory = SecretKeyFactory.getInstance(paramASN1ObjectIdentifier.getId(), aYA);
    paramArrayOfByte1 = new PBEParameterSpec(paramArrayOfByte1, paramInt);
    paramArrayOfChar = (BCPBEKey)localSecretKeyFactory.generateSecret(new PBEKeySpec(paramArrayOfChar));
    paramArrayOfChar.ﻧ(paramBoolean);
    paramASN1ObjectIdentifier = Mac.getInstance(paramASN1ObjectIdentifier.getId(), aYA);
    paramASN1ObjectIdentifier.init(paramArrayOfChar, paramArrayOfByte1);
    paramASN1ObjectIdentifier.update(paramArrayOfByte2);
    return paramASN1ObjectIdentifier.doFinal();
  }
  
  private SubjectKeyIdentifier ˋ(PublicKey paramPublicKey)
  {
    try
    {
      paramPublicKey = new SubjectKeyIdentifier(ʻ(new SubjectPublicKeyInfo((ASN1Sequence)ASN1Primitive.ՙ(paramPublicKey.getEncoded()))));
      return paramPublicKey;
    }
    catch (Exception paramPublicKey)
    {
      throw new RuntimeException("error creating key");
    }
  }
  
  public Enumeration engineAliases()
  {
    Hashtable localHashtable = new Hashtable();
    Enumeration localEnumeration = this.aYE.keys();
    while (localEnumeration.hasMoreElements()) {
      localHashtable.put(localEnumeration.nextElement(), "cert");
    }
    localEnumeration = this.aYC.keys();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      if (localHashtable.get(str) == null) {
        localHashtable.put(str, "key");
      }
    }
    return localHashtable.keys();
  }
  
  public boolean engineContainsAlias(String paramString)
  {
    return (this.aYE.get(paramString) != null) || (this.aYC.get(paramString) != null);
  }
  
  public void engineDeleteEntry(String paramString)
  {
    Object localObject = (Key)this.aYC.remove(paramString);
    Certificate localCertificate = (Certificate)this.aYE.remove(paramString);
    if (localCertificate != null) {
      this.aYF.remove(new CertId(localCertificate.getPublicKey()));
    }
    if (localObject != null)
    {
      localObject = (String)this.aYD.remove(paramString);
      paramString = localCertificate;
      if (localObject != null) {
        paramString = (Certificate)this.aYG.remove(localObject);
      }
      if (paramString != null) {
        this.aYF.remove(new CertId(paramString.getPublicKey()));
      }
    }
  }
  
  public Certificate engineGetCertificate(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("null alias passed to getCertificate.");
    }
    Certificate localCertificate = (Certificate)this.aYE.get(paramString);
    Object localObject = localCertificate;
    if (localCertificate == null)
    {
      localObject = (String)this.aYD.get(paramString);
      if (localObject != null) {
        return (Certificate)this.aYG.get(localObject);
      }
      localObject = (Certificate)this.aYG.get(paramString);
    }
    return localObject;
  }
  
  public String engineGetCertificateAlias(Certificate paramCertificate)
  {
    Enumeration localEnumeration1 = this.aYE.elements();
    Enumeration localEnumeration2 = this.aYE.keys();
    Certificate localCertificate;
    String str;
    while (localEnumeration1.hasMoreElements())
    {
      localCertificate = (Certificate)localEnumeration1.nextElement();
      str = (String)localEnumeration2.nextElement();
      if (localCertificate.equals(paramCertificate)) {
        return str;
      }
    }
    localEnumeration1 = this.aYG.elements();
    localEnumeration2 = this.aYG.keys();
    while (localEnumeration1.hasMoreElements())
    {
      localCertificate = (Certificate)localEnumeration1.nextElement();
      str = (String)localEnumeration2.nextElement();
      if (localCertificate.equals(paramCertificate)) {
        return str;
      }
    }
    return null;
  }
  
  public Certificate[] engineGetCertificateChain(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("null alias passed to getCertificateChain.");
    }
    if (!engineIsKeyEntry(paramString)) {
      return null;
    }
    Object localObject2 = engineGetCertificate(paramString);
    if (localObject2 != null)
    {
      Vector localVector = new Vector();
      while (localObject2 != null)
      {
        X509Certificate localX509Certificate = (X509Certificate)localObject2;
        paramString = null;
        Object localObject1 = null;
        Object localObject3 = localX509Certificate.getExtensionValue(Extension.ayZ.getId());
        if (localObject3 != null) {
          try
          {
            localObject3 = AuthorityKeyIdentifier.ᵘ(new ASN1InputStream(((ASN1OctetString)new ASN1InputStream((byte[])localObject3).eH()).eM()).eH());
            paramString = (String)localObject1;
            if (((AuthorityKeyIdentifier)localObject3).gY() != null) {
              paramString = (Certificate)this.aYF.get(new CertId(((AuthorityKeyIdentifier)localObject3).gY()));
            }
          }
          catch (IOException paramString)
          {
            throw new RuntimeException(paramString.toString());
          }
        }
        localObject1 = paramString;
        if (paramString == null)
        {
          localObject3 = localX509Certificate.getIssuerDN();
          localObject1 = paramString;
          if (!((Principal)localObject3).equals(localX509Certificate.getSubjectDN()))
          {
            Enumeration localEnumeration = this.aYF.keys();
            for (;;)
            {
              localObject1 = paramString;
              if (!localEnumeration.hasMoreElements()) {
                break;
              }
              localObject1 = (X509Certificate)this.aYF.get(localEnumeration.nextElement());
              if (((X509Certificate)localObject1).getSubjectDN().equals(localObject3)) {
                try
                {
                  localX509Certificate.verify(((X509Certificate)localObject1).getPublicKey());
                }
                catch (Exception localException) {}
              }
            }
          }
        }
        localVector.addElement(localObject2);
        if (localException != localObject2) {
          paramString = localException;
        } else {
          paramString = null;
        }
        localObject2 = paramString;
      }
      paramString = new Certificate[localVector.size()];
      int i = 0;
      while (i != paramString.length)
      {
        paramString[i] = ((Certificate)localVector.elementAt(i));
        i += 1;
      }
      return paramString;
    }
    return null;
  }
  
  public Date engineGetCreationDate(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("alias == null");
    }
    if ((this.aYC.get(paramString) == null) && (this.aYE.get(paramString) == null)) {
      return null;
    }
    return new Date();
  }
  
  public Key engineGetKey(String paramString, char[] paramArrayOfChar)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("null alias passed to getKey.");
    }
    return (Key)this.aYC.get(paramString);
  }
  
  public boolean engineIsCertificateEntry(String paramString)
  {
    return (this.aYE.get(paramString) != null) && (this.aYC.get(paramString) == null);
  }
  
  public boolean engineIsKeyEntry(String paramString)
  {
    return this.aYC.get(paramString) != null;
  }
  
  public void engineLoad(InputStream paramInputStream, char[] paramArrayOfChar)
  {
    if (paramInputStream == null) {
      return;
    }
    if (paramArrayOfChar == null) {
      throw new NullPointerException("No password supplied for PKCS#12 KeyStore.");
    }
    paramInputStream = new BufferedInputStream(paramInputStream);
    paramInputStream.mark(10);
    if (paramInputStream.read() != 48) {
      throw new IOException("stream does not represent a PKCS12 key store");
    }
    paramInputStream.reset();
    Object localObject1 = Pfx.ﹲ((ASN1Sequence)new ASN1InputStream(paramInputStream).eH());
    paramInputStream = ((Pfx)localObject1).fU();
    Vector localVector = new Vector();
    int k = 0;
    int i = 0;
    boolean bool1 = false;
    boolean bool2 = false;
    Object localObject4;
    Object localObject3;
    Object localObject2;
    int j;
    Object localObject5;
    if (((Pfx)localObject1).fV() != null)
    {
      localObject4 = ((Pfx)localObject1).fV();
      localObject3 = ((MacData)localObject4).fM();
      localObject1 = ((DigestInfo)localObject3).fX();
      localObject2 = ((MacData)localObject4).getSalt();
      j = ((MacData)localObject4).fN().intValue();
      localObject4 = ((ASN1OctetString)paramInputStream.fG()).eM();
      try
      {
        localObject5 = ˊ(((AlgorithmIdentifier)localObject1).fK(), (byte[])localObject2, j, paramArrayOfChar, false, (byte[])localObject4);
        localObject3 = ((DigestInfo)localObject3).hs();
        bool1 = bool2;
        if (!Arrays.ｰ((byte[])localObject5, (byte[])localObject3))
        {
          if (paramArrayOfChar.length > 0) {
            throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
          }
          if (!Arrays.ｰ(ˊ(((AlgorithmIdentifier)localObject1).fK(), (byte[])localObject2, j, paramArrayOfChar, true, (byte[])localObject4), (byte[])localObject3)) {
            throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
          }
          bool1 = true;
        }
      }
      catch (IOException paramInputStream)
      {
        throw paramInputStream;
      }
      catch (Exception paramInputStream)
      {
        throw new IOException("error constructing MAC: " + paramInputStream.toString());
      }
    }
    this.aYC = new IgnoresCaseHashtable(null);
    this.aYD = new Hashtable();
    Object localObject6;
    if (paramInputStream.fF().equals(aeB))
    {
      localObject4 = AuthenticatedSafe.ᔉ(new ASN1InputStream(((ASN1OctetString)paramInputStream.fG()).eM()).eH()).fC();
      j = 0;
      for (;;)
      {
        k = i;
        if (j == localObject4.length) {
          break;
        }
        Object localObject7;
        PKCS12BagAttributeCarrier localPKCS12BagAttributeCarrier;
        ASN1ObjectIdentifier localASN1ObjectIdentifier;
        Object localObject8;
        if (localObject4[j].fF().equals(aeB))
        {
          localObject5 = (ASN1Sequence)new ASN1InputStream(((ASN1OctetString)localObject4[j].fG()).eM()).eH();
          k = 0;
          while (k != ((ASN1Sequence)localObject5).size())
          {
            localObject7 = SafeBag.Ι(((ASN1Sequence)localObject5).ϲ(k));
            if (((SafeBag)localObject7).gl().equals(ast))
            {
              paramInputStream = EncryptedPrivateKeyInfo.ᕽ(((SafeBag)localObject7).gm());
              localObject6 = ˊ(paramInputStream.fI(), paramInputStream.getEncryptedData(), paramArrayOfChar, bool1);
              localPKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier)localObject6;
              localObject2 = null;
              paramInputStream = null;
              localObject3 = null;
              localObject1 = null;
              if (((SafeBag)localObject7).gn() != null)
              {
                localObject7 = ((SafeBag)localObject7).gn().eT();
                for (;;)
                {
                  localObject2 = paramInputStream;
                  localObject3 = localObject1;
                  if (!((Enumeration)localObject7).hasMoreElements()) {
                    break;
                  }
                  localObject2 = (ASN1Sequence)((Enumeration)localObject7).nextElement();
                  localASN1ObjectIdentifier = (ASN1ObjectIdentifier)((ASN1Sequence)localObject2).ϲ(0);
                  localObject3 = (ASN1Set)((ASN1Sequence)localObject2).ϲ(1);
                  localObject2 = null;
                  if (((ASN1Set)localObject3).size() > 0)
                  {
                    localObject3 = (ASN1Primitive)((ASN1Set)localObject3).ϲ(0);
                    localObject8 = localPKCS12BagAttributeCarrier.ͺ(localASN1ObjectIdentifier);
                    if (localObject8 != null)
                    {
                      localObject2 = localObject3;
                      if (!((ASN1Encodable)localObject8).ez().equals(localObject3)) {
                        throw new IOException("attempt to add existing attribute with different value");
                      }
                    }
                    else
                    {
                      localPKCS12BagAttributeCarrier.ˋ(localASN1ObjectIdentifier, (ASN1Encodable)localObject3);
                      localObject2 = localObject3;
                    }
                  }
                  if (localASN1ObjectIdentifier.equals(arn))
                  {
                    localObject3 = ((DERBMPString)localObject2).getString();
                    this.aYC.put((String)localObject3, localObject6);
                  }
                  else
                  {
                    localObject3 = paramInputStream;
                    if (localASN1ObjectIdentifier.equals(aro))
                    {
                      localObject1 = (ASN1OctetString)localObject2;
                      localObject3 = paramInputStream;
                    }
                  }
                  paramInputStream = (InputStream)localObject3;
                }
              }
              if (localObject3 != null)
              {
                paramInputStream = new String(Hex.ײ(((ASN1OctetString)localObject3).eM()));
                if (localObject2 == null) {
                  this.aYC.put(paramInputStream, localObject6);
                } else {
                  this.aYD.put(localObject2, paramInputStream);
                }
              }
              else
              {
                i = 1;
                this.aYC.put("unmarked", localObject6);
              }
            }
            else if (((SafeBag)localObject7).gl().equals(asu))
            {
              localVector.addElement(localObject7);
            }
            else
            {
              System.out.println("extra in data " + ((SafeBag)localObject7).gl());
              System.out.println(ASN1Dump.ᑉ(localObject7));
            }
            k += 1;
          }
        }
        else if (localObject4[j].fF().equals(aeG))
        {
          paramInputStream = EncryptedData.ᕑ(localObject4[j].fG());
          localObject5 = (ASN1Sequence)ASN1Primitive.ՙ(ˊ(false, paramInputStream.fI(), paramArrayOfChar, bool1, paramInputStream.fJ().eM()));
          k = 0;
          while (k != ((ASN1Sequence)localObject5).size())
          {
            localObject2 = SafeBag.Ι(((ASN1Sequence)localObject5).ϲ(k));
            if (((SafeBag)localObject2).gl().equals(asu))
            {
              localVector.addElement(localObject2);
            }
            else if (((SafeBag)localObject2).gl().equals(ast))
            {
              paramInputStream = EncryptedPrivateKeyInfo.ᕽ(((SafeBag)localObject2).gm());
              localObject6 = ˊ(paramInputStream.fI(), paramInputStream.getEncryptedData(), paramArrayOfChar, bool1);
              localPKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier)localObject6;
              paramInputStream = null;
              localObject1 = null;
              localObject7 = ((SafeBag)localObject2).gn().eT();
              while (((Enumeration)localObject7).hasMoreElements())
              {
                localObject2 = (ASN1Sequence)((Enumeration)localObject7).nextElement();
                localASN1ObjectIdentifier = (ASN1ObjectIdentifier)((ASN1Sequence)localObject2).ϲ(0);
                localObject3 = (ASN1Set)((ASN1Sequence)localObject2).ϲ(1);
                localObject2 = null;
                if (((ASN1Set)localObject3).size() > 0)
                {
                  localObject3 = (ASN1Primitive)((ASN1Set)localObject3).ϲ(0);
                  localObject8 = localPKCS12BagAttributeCarrier.ͺ(localASN1ObjectIdentifier);
                  if (localObject8 != null)
                  {
                    localObject2 = localObject3;
                    if (!((ASN1Encodable)localObject8).ez().equals(localObject3)) {
                      throw new IOException("attempt to add existing attribute with different value");
                    }
                  }
                  else
                  {
                    localPKCS12BagAttributeCarrier.ˋ(localASN1ObjectIdentifier, (ASN1Encodable)localObject3);
                    localObject2 = localObject3;
                  }
                }
                if (localASN1ObjectIdentifier.equals(arn))
                {
                  localObject3 = ((DERBMPString)localObject2).getString();
                  this.aYC.put((String)localObject3, localObject6);
                }
                else
                {
                  localObject3 = paramInputStream;
                  if (localASN1ObjectIdentifier.equals(aro))
                  {
                    localObject1 = (ASN1OctetString)localObject2;
                    localObject3 = paramInputStream;
                  }
                }
                paramInputStream = (InputStream)localObject3;
              }
              localObject1 = new String(Hex.ײ(((ASN1OctetString)localObject1).eM()));
              if (paramInputStream == null) {
                this.aYC.put((String)localObject1, localObject6);
              } else {
                this.aYD.put(paramInputStream, localObject1);
              }
            }
            else if (((SafeBag)localObject2).gl().equals(ass))
            {
              localObject6 = BouncyCastleProvider.ˏ(PrivateKeyInfo.ﹷ(((SafeBag)localObject2).gm()));
              localPKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier)localObject6;
              paramInputStream = null;
              localObject1 = null;
              localObject7 = ((SafeBag)localObject2).gn().eT();
              while (((Enumeration)localObject7).hasMoreElements())
              {
                localObject2 = ASN1Sequence.ﹾ(((Enumeration)localObject7).nextElement());
                localASN1ObjectIdentifier = ASN1ObjectIdentifier.ﹴ(((ASN1Sequence)localObject2).ϲ(0));
                localObject8 = ASN1Set.ɩ(((ASN1Sequence)localObject2).ϲ(1));
                localObject2 = paramInputStream;
                localObject3 = localObject1;
                if (((ASN1Set)localObject8).size() > 0)
                {
                  localObject8 = (ASN1Primitive)((ASN1Set)localObject8).ϲ(0);
                  localObject2 = localPKCS12BagAttributeCarrier.ͺ(localASN1ObjectIdentifier);
                  if (localObject2 != null)
                  {
                    if (!((ASN1Encodable)localObject2).ez().equals(localObject8)) {
                      throw new IOException("attempt to add existing attribute with different value");
                    }
                  }
                  else {
                    localPKCS12BagAttributeCarrier.ˋ(localASN1ObjectIdentifier, (ASN1Encodable)localObject8);
                  }
                  if (localASN1ObjectIdentifier.equals(arn))
                  {
                    localObject2 = ((DERBMPString)localObject8).getString();
                    this.aYC.put((String)localObject2, localObject6);
                    localObject3 = localObject1;
                  }
                  else
                  {
                    localObject2 = paramInputStream;
                    localObject3 = localObject1;
                    if (localASN1ObjectIdentifier.equals(aro))
                    {
                      localObject3 = (ASN1OctetString)localObject8;
                      localObject2 = paramInputStream;
                    }
                  }
                }
                paramInputStream = (InputStream)localObject2;
                localObject1 = localObject3;
              }
              localObject1 = new String(Hex.ײ(((ASN1OctetString)localObject1).eM()));
              if (paramInputStream == null) {
                this.aYC.put((String)localObject1, localObject6);
              } else {
                this.aYD.put(paramInputStream, localObject1);
              }
            }
            else
            {
              System.out.println("extra in encryptedData " + ((SafeBag)localObject2).gl());
              System.out.println(ASN1Dump.ᑉ(localObject2));
            }
            k += 1;
          }
        }
        else
        {
          System.out.println("extra " + localObject4[j].fF().getId());
          System.out.println("extra " + ASN1Dump.ᑉ(localObject4[j].fG()));
        }
        j += 1;
      }
    }
    this.aYE = new IgnoresCaseHashtable(null);
    this.aYF = new Hashtable();
    this.aYG = new Hashtable();
    i = 0;
    while (i != localVector.size())
    {
      localObject4 = (SafeBag)localVector.elementAt(i);
      paramInputStream = CertBag.ᔊ(((SafeBag)localObject4).gm());
      if (!paramInputStream.fD().equals(arr)) {
        throw new RuntimeException("Unsupported certificate type: " + paramInputStream.fD());
      }
      try
      {
        paramInputStream = new ByteArrayInputStream(((ASN1OctetString)paramInputStream.fE()).eM());
        localObject3 = this.aYH.generateCertificate(paramInputStream);
      }
      catch (Exception paramInputStream)
      {
        throw new RuntimeException(paramInputStream.toString());
      }
      localObject1 = null;
      paramArrayOfChar = null;
      localObject2 = null;
      paramInputStream = null;
      if (((SafeBag)localObject4).gn() != null)
      {
        localObject4 = ((SafeBag)localObject4).gn().eT();
        for (;;)
        {
          localObject1 = paramArrayOfChar;
          localObject2 = paramInputStream;
          if (!((Enumeration)localObject4).hasMoreElements()) {
            break;
          }
          localObject1 = ASN1Sequence.ﹾ(((Enumeration)localObject4).nextElement());
          localObject5 = ASN1ObjectIdentifier.ﹴ(((ASN1Sequence)localObject1).ϲ(0));
          localObject6 = ASN1Set.ɩ(((ASN1Sequence)localObject1).ϲ(1));
          localObject1 = paramArrayOfChar;
          localObject2 = paramInputStream;
          if (((ASN1Set)localObject6).size() > 0)
          {
            localObject6 = (ASN1Primitive)((ASN1Set)localObject6).ϲ(0);
            if ((localObject3 instanceof PKCS12BagAttributeCarrier))
            {
              localObject1 = (PKCS12BagAttributeCarrier)localObject3;
              localObject2 = ((PKCS12BagAttributeCarrier)localObject1).ͺ((ASN1ObjectIdentifier)localObject5);
              if (localObject2 != null)
              {
                if (!((ASN1Encodable)localObject2).ez().equals(localObject6)) {
                  throw new IOException("attempt to add existing attribute with different value");
                }
              }
              else {
                ((PKCS12BagAttributeCarrier)localObject1).ˋ((ASN1ObjectIdentifier)localObject5, (ASN1Encodable)localObject6);
              }
            }
            if (((ASN1ObjectIdentifier)localObject5).equals(arn))
            {
              localObject2 = ((DERBMPString)localObject6).getString();
              localObject1 = paramArrayOfChar;
            }
            else
            {
              localObject1 = paramArrayOfChar;
              localObject2 = paramInputStream;
              if (((ASN1ObjectIdentifier)localObject5).equals(aro))
              {
                localObject1 = (ASN1OctetString)localObject6;
                localObject2 = paramInputStream;
              }
            }
          }
          paramArrayOfChar = (char[])localObject1;
          paramInputStream = (InputStream)localObject2;
        }
      }
      this.aYF.put(new CertId(((Certificate)localObject3).getPublicKey()), localObject3);
      if (k != 0)
      {
        if (this.aYG.isEmpty())
        {
          paramInputStream = new String(Hex.ײ(ˋ(((Certificate)localObject3).getPublicKey()).gY()));
          this.aYG.put(paramInputStream, localObject3);
          this.aYC.put(paramInputStream, this.aYC.remove("unmarked"));
        }
      }
      else
      {
        if (localObject1 != null)
        {
          paramInputStream = new String(Hex.ײ(((ASN1OctetString)localObject1).eM()));
          this.aYG.put(paramInputStream, localObject3);
        }
        if (localObject2 != null) {
          this.aYE.put((String)localObject2, localObject3);
        }
      }
      i += 1;
    }
  }
  
  public void engineSetCertificateEntry(String paramString, Certificate paramCertificate)
  {
    if (this.aYC.get(paramString) != null) {
      throw new KeyStoreException("There is a key entry with the name " + paramString + ".");
    }
    this.aYE.put(paramString, paramCertificate);
    this.aYF.put(new CertId(paramCertificate.getPublicKey()), paramCertificate);
  }
  
  public void engineSetKeyEntry(String paramString, Key paramKey, char[] paramArrayOfChar, Certificate[] paramArrayOfCertificate)
  {
    if (!(paramKey instanceof PrivateKey)) {
      throw new KeyStoreException("PKCS12 does not support non-PrivateKeys");
    }
    if (((paramKey instanceof PrivateKey)) && (paramArrayOfCertificate == null)) {
      throw new KeyStoreException("no certificate chain for private key");
    }
    if (this.aYC.get(paramString) != null) {
      engineDeleteEntry(paramString);
    }
    this.aYC.put(paramString, paramKey);
    if (paramArrayOfCertificate != null)
    {
      this.aYE.put(paramString, paramArrayOfCertificate[0]);
      int i = 0;
      while (i != paramArrayOfCertificate.length)
      {
        this.aYF.put(new CertId(paramArrayOfCertificate[i].getPublicKey()), paramArrayOfCertificate[i]);
        i += 1;
      }
    }
  }
  
  public void engineSetKeyEntry(String paramString, byte[] paramArrayOfByte, Certificate[] paramArrayOfCertificate)
  {
    throw new RuntimeException("operation not supported");
  }
  
  public int engineSize()
  {
    Hashtable localHashtable = new Hashtable();
    Enumeration localEnumeration = this.aYE.keys();
    while (localEnumeration.hasMoreElements()) {
      localHashtable.put(localEnumeration.nextElement(), "cert");
    }
    localEnumeration = this.aYC.keys();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      if (localHashtable.get(str) == null) {
        localHashtable.put(str, "key");
      }
    }
    return localHashtable.size();
  }
  
  public void engineStore(OutputStream paramOutputStream, char[] paramArrayOfChar)
  {
    ˊ(paramOutputStream, paramArrayOfChar, false);
  }
  
  public void engineStore(KeyStore.LoadStoreParameter paramLoadStoreParameter)
  {
    if (paramLoadStoreParameter == null) {
      throw new IllegalArgumentException("'param' arg cannot be null");
    }
    if ((!(paramLoadStoreParameter instanceof PKCS12StoreParameter)) && (!(paramLoadStoreParameter instanceof JDKPKCS12StoreParameter))) {
      throw new IllegalArgumentException("No support for 'param' of type " + paramLoadStoreParameter.getClass().getName());
    }
    PKCS12StoreParameter localPKCS12StoreParameter;
    if ((paramLoadStoreParameter instanceof PKCS12StoreParameter)) {
      localPKCS12StoreParameter = (PKCS12StoreParameter)paramLoadStoreParameter;
    } else {
      localPKCS12StoreParameter = new PKCS12StoreParameter(((JDKPKCS12StoreParameter)paramLoadStoreParameter).getOutputStream(), paramLoadStoreParameter.getProtectionParameter(), ((JDKPKCS12StoreParameter)paramLoadStoreParameter).oW());
    }
    paramLoadStoreParameter = paramLoadStoreParameter.getProtectionParameter();
    if (paramLoadStoreParameter == null) {
      paramLoadStoreParameter = null;
    } else if ((paramLoadStoreParameter instanceof KeyStore.PasswordProtection)) {
      paramLoadStoreParameter = ((KeyStore.PasswordProtection)paramLoadStoreParameter).getPassword();
    } else {
      throw new IllegalArgumentException("No support for protection parameter of type " + paramLoadStoreParameter.getClass().getName());
    }
    ˊ(localPKCS12StoreParameter.getOutputStream(), paramLoadStoreParameter, localPKCS12StoreParameter.nM());
  }
  
  protected PrivateKey ˊ(AlgorithmIdentifier paramAlgorithmIdentifier, byte[] paramArrayOfByte, char[] paramArrayOfChar, boolean paramBoolean)
  {
    Object localObject = paramAlgorithmIdentifier.fK();
    try
    {
      if (((ASN1ObjectIdentifier)localObject).ˊ(PKCSObjectIdentifiers.asy))
      {
        paramAlgorithmIdentifier = PKCS12PBEParams.וֹ(paramAlgorithmIdentifier.fL());
        paramArrayOfChar = new PBEKeySpec(paramArrayOfChar);
        SecretKeyFactory localSecretKeyFactory = SecretKeyFactory.getInstance(((ASN1ObjectIdentifier)localObject).getId(), aYA);
        paramAlgorithmIdentifier = new PBEParameterSpec(paramAlgorithmIdentifier.getIV(), paramAlgorithmIdentifier.fT().intValue());
        paramArrayOfChar = localSecretKeyFactory.generateSecret(paramArrayOfChar);
        ((BCPBEKey)paramArrayOfChar).ﻧ(paramBoolean);
        localObject = Cipher.getInstance(((ASN1ObjectIdentifier)localObject).getId(), aYA);
        ((Cipher)localObject).init(4, paramArrayOfChar, paramAlgorithmIdentifier);
        paramAlgorithmIdentifier = (PrivateKey)((Cipher)localObject).unwrap(paramArrayOfByte, "", 2);
        return paramAlgorithmIdentifier;
      }
      if (((ASN1ObjectIdentifier)localObject).equals(PKCSObjectIdentifiers.aqM))
      {
        paramAlgorithmIdentifier = (PrivateKey)ˊ(4, paramArrayOfChar, paramAlgorithmIdentifier).unwrap(paramArrayOfByte, "", 2);
        return paramAlgorithmIdentifier;
      }
    }
    catch (Exception paramAlgorithmIdentifier)
    {
      throw new IOException("exception unwrapping private key - " + paramAlgorithmIdentifier.toString());
    }
    throw new IOException("exception unwrapping private key - cannot recognise: " + localObject);
  }
  
  protected byte[] ˊ(String paramString, Key paramKey, PKCS12PBEParams paramPKCS12PBEParams, char[] paramArrayOfChar)
  {
    paramArrayOfChar = new PBEKeySpec(paramArrayOfChar);
    try
    {
      SecretKeyFactory localSecretKeyFactory = SecretKeyFactory.getInstance(paramString, aYA);
      paramPKCS12PBEParams = new PBEParameterSpec(paramPKCS12PBEParams.getIV(), paramPKCS12PBEParams.fT().intValue());
      paramString = Cipher.getInstance(paramString, aYA);
      paramString.init(3, localSecretKeyFactory.generateSecret(paramArrayOfChar), paramPKCS12PBEParams);
      paramString = paramString.wrap(paramKey);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new IOException("exception encrypting data - " + paramString.toString());
    }
  }
  
  protected byte[] ˊ(boolean paramBoolean1, AlgorithmIdentifier paramAlgorithmIdentifier, char[] paramArrayOfChar, boolean paramBoolean2, byte[] paramArrayOfByte)
  {
    Object localObject = paramAlgorithmIdentifier.fK();
    int i;
    if (paramBoolean1) {
      i = 1;
    } else {
      i = 2;
    }
    if (((ASN1ObjectIdentifier)localObject).ˊ(PKCSObjectIdentifiers.asy))
    {
      paramAlgorithmIdentifier = PKCS12PBEParams.וֹ(paramAlgorithmIdentifier.fL());
      paramArrayOfChar = new PBEKeySpec(paramArrayOfChar);
      try
      {
        SecretKeyFactory localSecretKeyFactory = SecretKeyFactory.getInstance(((ASN1ObjectIdentifier)localObject).getId(), aYA);
        paramAlgorithmIdentifier = new PBEParameterSpec(paramAlgorithmIdentifier.getIV(), paramAlgorithmIdentifier.fT().intValue());
        paramArrayOfChar = (BCPBEKey)localSecretKeyFactory.generateSecret(paramArrayOfChar);
        paramArrayOfChar.ﻧ(paramBoolean2);
        localObject = Cipher.getInstance(((ASN1ObjectIdentifier)localObject).getId(), aYA);
        ((Cipher)localObject).init(i, paramArrayOfChar, paramAlgorithmIdentifier);
        paramAlgorithmIdentifier = ((Cipher)localObject).doFinal(paramArrayOfByte);
        return paramAlgorithmIdentifier;
      }
      catch (Exception paramAlgorithmIdentifier)
      {
        throw new IOException("exception decrypting data - " + paramAlgorithmIdentifier.toString());
      }
    }
    if (((ASN1ObjectIdentifier)localObject).equals(PKCSObjectIdentifiers.aqM)) {
      try
      {
        paramAlgorithmIdentifier = ˊ(i, paramArrayOfChar, paramAlgorithmIdentifier).doFinal(paramArrayOfByte);
        return paramAlgorithmIdentifier;
      }
      catch (Exception paramAlgorithmIdentifier)
      {
        throw new IOException("exception decrypting data - " + paramAlgorithmIdentifier.toString());
      }
    }
    throw new IOException("unknown PBE algorithm: " + localObject);
  }
  
  public static class BCPKCS12KeyStore
    extends PKCS12KeyStoreSpi
  {
    public BCPKCS12KeyStore()
    {
      super(asB, asE);
    }
  }
  
  public static class BCPKCS12KeyStore3DES
    extends PKCS12KeyStoreSpi
  {
    public BCPKCS12KeyStore3DES()
    {
      super(asB, asB);
    }
  }
  
  class CertId
  {
    byte[] aYK;
    
    CertId(PublicKey paramPublicKey)
    {
      this.aYK = PKCS12KeyStoreSpi.ˊ(PKCS12KeyStoreSpi.this, paramPublicKey).gY();
    }
    
    CertId(byte[] paramArrayOfByte)
    {
      this.aYK = paramArrayOfByte;
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {
        return true;
      }
      if (!(paramObject instanceof CertId)) {
        return false;
      }
      paramObject = (CertId)paramObject;
      return Arrays.ﹺ(this.aYK, paramObject.aYK);
    }
    
    public int hashCode()
    {
      return Arrays.hashCode(this.aYK);
    }
  }
  
  public static class DefPKCS12KeyStore
    extends PKCS12KeyStoreSpi
  {
    public DefPKCS12KeyStore()
    {
      super(asB, asE);
    }
  }
  
  public static class DefPKCS12KeyStore3DES
    extends PKCS12KeyStoreSpi
  {
    public DefPKCS12KeyStore3DES()
    {
      super(asB, asB);
    }
  }
  
  static class DefaultSecretKeyProvider
  {
    private final Map aYM;
    
    DefaultSecretKeyProvider()
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put(new ASN1ObjectIdentifier("1.2.840.113533.7.66.10"), Integers.valueOf(128));
      localHashMap.put(PKCSObjectIdentifiers.aqO.getId(), Integers.valueOf(192));
      localHashMap.put(NISTObjectIdentifiers.aoj, Integers.valueOf(128));
      localHashMap.put(NISTObjectIdentifiers.aoq, Integers.valueOf(192));
      localHashMap.put(NISTObjectIdentifiers.aox, Integers.valueOf(256));
      localHashMap.put(NTTObjectIdentifiers.aoI, Integers.valueOf(128));
      localHashMap.put(NTTObjectIdentifiers.aoJ, Integers.valueOf(192));
      localHashMap.put(NTTObjectIdentifiers.aoK, Integers.valueOf(256));
      localHashMap.put(CryptoProObjectIdentifiers.agX, Integers.valueOf(256));
      this.aYM = Collections.unmodifiableMap(localHashMap);
    }
    
    public int ˋ(AlgorithmIdentifier paramAlgorithmIdentifier)
    {
      paramAlgorithmIdentifier = (Integer)this.aYM.get(paramAlgorithmIdentifier.fK());
      if (paramAlgorithmIdentifier != null) {
        return paramAlgorithmIdentifier.intValue();
      }
      return -1;
    }
  }
  
  static class IgnoresCaseHashtable
  {
    private Hashtable aYN = new Hashtable();
    private Hashtable aYO = new Hashtable();
    
    public Enumeration elements()
    {
      return this.aYN.elements();
    }
    
    public Object get(String paramString)
    {
      Hashtable localHashtable = this.aYO;
      if (paramString == null) {
        paramString = null;
      } else {
        paramString = Strings.ʰ(paramString);
      }
      paramString = (String)localHashtable.get(paramString);
      if (paramString == null) {
        return null;
      }
      return this.aYN.get(paramString);
    }
    
    public Enumeration keys()
    {
      return this.aYN.keys();
    }
    
    public void put(String paramString, Object paramObject)
    {
      String str1;
      if (paramString == null) {
        str1 = null;
      } else {
        str1 = Strings.ʰ(paramString);
      }
      String str2 = (String)this.aYO.get(str1);
      if (str2 != null) {
        this.aYN.remove(str2);
      }
      this.aYO.put(str1, paramString);
      this.aYN.put(paramString, paramObject);
    }
    
    public Object remove(String paramString)
    {
      Hashtable localHashtable = this.aYO;
      if (paramString == null) {
        paramString = null;
      } else {
        paramString = Strings.ʰ(paramString);
      }
      paramString = (String)localHashtable.remove(paramString);
      if (paramString == null) {
        return null;
      }
      return this.aYN.remove(paramString);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi
 * JD-Core Version:    0.7.0.1
 */