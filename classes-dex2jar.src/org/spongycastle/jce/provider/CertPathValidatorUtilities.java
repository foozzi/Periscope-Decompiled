package org.spongycastle.jce.provider;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyQualifierInfo;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1OutputStream;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.isismtt.ISISMTTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.CRLDistPoint;
import org.spongycastle.asn1.x509.DistributionPoint;
import org.spongycastle.asn1.x509.DistributionPointName;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jce.X509LDAPCertStoreParameters.Builder;
import org.spongycastle.jce.exception.ExtCertPathValidatorException;
import org.spongycastle.util.Integers;
import org.spongycastle.util.StoreException;
import org.spongycastle.x509.ExtendedPKIXBuilderParameters;
import org.spongycastle.x509.ExtendedPKIXParameters;
import org.spongycastle.x509.X509AttributeCertStoreSelector;
import org.spongycastle.x509.X509AttributeCertificate;
import org.spongycastle.x509.X509CRLStoreSelector;
import org.spongycastle.x509.X509CertStoreSelector;
import org.spongycastle.x509.X509Store;

public class CertPathValidatorUtilities
{
  protected static final PKIXCRLUtil baW = new PKIXCRLUtil();
  protected static final String baX = Extension.ayX.getId();
  protected static final String baY = Extension.ayN.getId();
  protected static final String baZ = Extension.ayY.getId();
  protected static final String bba = Extension.ayL.getId();
  protected static final String bbb = Extension.ayV.getId();
  protected static final String bbc = Extension.ayJ.getId();
  protected static final String bbd = Extension.azd.getId();
  protected static final String bbe = Extension.ayT.getId();
  protected static final String bbf = Extension.ayS.getId();
  protected static final String bbg = Extension.aza.getId();
  protected static final String bbh = Extension.azc.getId();
  protected static final String bbi = Extension.ayW.getId();
  protected static final String bbj = Extension.ayZ.getId();
  protected static final String bbk = Extension.ayO.getId();
  protected static final String[] bbl = { "unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise" };
  
  protected static X500Principal ʼ(X509Certificate paramX509Certificate)
  {
    return paramX509Certificate.getSubjectX500Principal();
  }
  
  protected static boolean ʽ(X509Certificate paramX509Certificate)
  {
    return paramX509Certificate.getSubjectDN().equals(paramX509Certificate.getIssuerDN());
  }
  
  protected static TrustAnchor ˊ(X509Certificate paramX509Certificate, Set paramSet, String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    Object localObject4 = null;
    X509CertSelector localX509CertSelector = new X509CertSelector();
    X500Principal localX500Principal = ﻨ(paramX509Certificate);
    try
    {
      localX509CertSelector.setSubject(localX500Principal.getEncoded());
    }
    catch (IOException paramX509Certificate)
    {
      throw new AnnotatedException("Cannot set subject search criteria for trust anchor.", paramX509Certificate);
    }
    Iterator localIterator = paramSet.iterator();
    while ((localIterator.hasNext()) && (localObject2 == null))
    {
      paramSet = (TrustAnchor)localIterator.next();
      Object localObject3;
      if (paramSet.getTrustedCert() != null)
      {
        if (localX509CertSelector.match(paramSet.getTrustedCert()))
        {
          localObject3 = paramSet.getTrustedCert().getPublicKey();
        }
        else
        {
          paramSet = null;
          localObject3 = localObject1;
        }
      }
      else if ((paramSet.getCAName() != null) && (paramSet.getCAPublicKey() != null))
      {
        try
        {
          if (localX500Principal.equals(new X500Principal(paramSet.getCAName())))
          {
            localObject2 = paramSet.getCAPublicKey();
            localObject1 = localObject2;
          }
          else
          {
            paramSet = null;
          }
          localObject3 = localObject1;
        }
        catch (IllegalArgumentException paramSet)
        {
          paramSet = null;
          localObject3 = localObject1;
        }
      }
      else
      {
        paramSet = null;
        localObject3 = localObject1;
      }
      localObject2 = paramSet;
      localObject1 = localObject3;
      if (localObject3 != null) {
        try
        {
          ˊ(paramX509Certificate, (PublicKey)localObject3, paramString);
          localObject2 = paramSet;
          localObject1 = localObject3;
        }
        catch (Exception localException)
        {
          localObject2 = null;
          localObject1 = null;
        }
      }
    }
    if ((localObject2 == null) && (localException != null)) {
      throw new AnnotatedException("TrustAnchor found but certificate validation failed.", localException);
    }
    return localObject2;
  }
  
  protected static Collection ˊ(X509Certificate paramX509Certificate, ExtendedPKIXBuilderParameters paramExtendedPKIXBuilderParameters)
  {
    X509CertStoreSelector localX509CertStoreSelector = new X509CertStoreSelector();
    HashSet localHashSet = new HashSet();
    try
    {
      localX509CertStoreSelector.setSubject(paramX509Certificate.getIssuerX500Principal().getEncoded());
    }
    catch (IOException paramX509Certificate)
    {
      throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate could not be set.", paramX509Certificate);
    }
    try
    {
      paramX509Certificate = new ArrayList();
      paramX509Certificate.addAll(ˊ(localX509CertStoreSelector, paramExtendedPKIXBuilderParameters.getCertStores()));
      paramX509Certificate.addAll(ˊ(localX509CertStoreSelector, paramExtendedPKIXBuilderParameters.tl()));
      paramX509Certificate.addAll(ˊ(localX509CertStoreSelector, paramExtendedPKIXBuilderParameters.tk()));
      paramX509Certificate = paramX509Certificate.iterator();
    }
    catch (AnnotatedException paramX509Certificate)
    {
      throw new AnnotatedException("Issuer certificate cannot be searched.", paramX509Certificate);
    }
    while (paramX509Certificate.hasNext()) {
      localHashSet.add((X509Certificate)paramX509Certificate.next());
    }
    return localHashSet;
  }
  
  protected static Collection ˊ(X509AttributeCertStoreSelector paramX509AttributeCertStoreSelector, List paramList)
  {
    HashSet localHashSet = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = paramList.next();
      if ((localObject instanceof X509Store))
      {
        localObject = (X509Store)localObject;
        try
        {
          localHashSet.addAll(((X509Store)localObject).ˋ(paramX509AttributeCertStoreSelector));
        }
        catch (StoreException paramX509AttributeCertStoreSelector)
        {
          throw new AnnotatedException("Problem while picking certificates from X.509 store.", paramX509AttributeCertStoreSelector);
        }
      }
    }
    return localHashSet;
  }
  
  protected static Collection ˊ(X509CertStoreSelector paramX509CertStoreSelector, List paramList)
  {
    HashSet localHashSet = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = paramList.next();
      if ((localObject instanceof X509Store))
      {
        localObject = (X509Store)localObject;
        try
        {
          localHashSet.addAll(((X509Store)localObject).ˋ(paramX509CertStoreSelector));
        }
        catch (StoreException paramX509CertStoreSelector)
        {
          throw new AnnotatedException("Problem while picking certificates from X.509 store.", paramX509CertStoreSelector);
        }
      }
      else
      {
        localObject = (CertStore)localObject;
        try
        {
          localHashSet.addAll(((CertStore)localObject).getCertificates(paramX509CertStoreSelector));
        }
        catch (CertStoreException paramX509CertStoreSelector)
        {
          throw new AnnotatedException("Problem while picking certificates from certificate store.", paramX509CertStoreSelector);
        }
      }
    }
    return localHashSet;
  }
  
  protected static Date ˊ(PKIXParameters paramPKIXParameters)
  {
    Date localDate = paramPKIXParameters.getDate();
    paramPKIXParameters = localDate;
    if (localDate == null) {
      paramPKIXParameters = new Date();
    }
    return paramPKIXParameters;
  }
  
  protected static Date ˊ(ExtendedPKIXParameters paramExtendedPKIXParameters, CertPath paramCertPath, int paramInt)
  {
    if (paramExtendedPKIXParameters.tj() == 1)
    {
      if (paramInt <= 0) {
        return ˊ(paramExtendedPKIXParameters);
      }
      if (paramInt - 1 == 0)
      {
        paramExtendedPKIXParameters = null;
        try
        {
          byte[] arrayOfByte = ((X509Certificate)paramCertPath.getCertificates().get(paramInt - 1)).getExtensionValue(ISISMTTObjectIdentifiers.amo.getId());
          if (arrayOfByte != null) {
            paramExtendedPKIXParameters = ASN1GeneralizedTime.ᵥ(ASN1Primitive.ՙ(arrayOfByte));
          }
        }
        catch (IOException paramExtendedPKIXParameters)
        {
          throw new AnnotatedException("Date of cert gen extension could not be read.");
        }
        catch (IllegalArgumentException paramExtendedPKIXParameters)
        {
          throw new AnnotatedException("Date of cert gen extension could not be read.");
        }
        if (paramExtendedPKIXParameters != null) {
          try
          {
            paramExtendedPKIXParameters = paramExtendedPKIXParameters.getDate();
            return paramExtendedPKIXParameters;
          }
          catch (ParseException paramExtendedPKIXParameters)
          {
            throw new AnnotatedException("Date from date of cert gen extension could not be parsed.", paramExtendedPKIXParameters);
          }
        }
        return ((X509Certificate)paramCertPath.getCertificates().get(paramInt - 1)).getNotBefore();
      }
      return ((X509Certificate)paramCertPath.getCertificates().get(paramInt - 1)).getNotBefore();
    }
    return ˊ(paramExtendedPKIXParameters);
  }
  
  protected static Set ˊ(Date paramDate, ExtendedPKIXParameters paramExtendedPKIXParameters, X509CRL paramX509CRL)
  {
    X509CRLStoreSelector localX509CRLStoreSelector = new X509CRLStoreSelector();
    try
    {
      localX509CRLStoreSelector.addIssuerName(ˋ(paramX509CRL).getEncoded());
    }
    catch (IOException paramDate)
    {
      throw new AnnotatedException("Cannot extract issuer from CRL.", paramDate);
    }
    BigInteger localBigInteger = null;
    Object localObject;
    try
    {
      localObject = ˊ(paramX509CRL, bbk);
      if (localObject != null) {
        localBigInteger = ASN1Integer.ﯨ(localObject).eI();
      }
    }
    catch (Exception paramDate)
    {
      throw new AnnotatedException("CRL number extension could not be extracted from CRL.", paramDate);
    }
    try
    {
      localObject = paramX509CRL.getExtensionValue(bbe);
    }
    catch (Exception paramDate)
    {
      throw new AnnotatedException("Issuing distribution point extension value could not be read.", paramDate);
    }
    if (localBigInteger == null) {
      paramX509CRL = null;
    } else {
      paramX509CRL = localBigInteger.add(BigInteger.valueOf(1L));
    }
    localX509CRLStoreSelector.setMinCRLNumber(paramX509CRL);
    localX509CRLStoreSelector.ᑋ((byte[])localObject);
    localX509CRLStoreSelector.Ӏ(true);
    localX509CRLStoreSelector.ᵔ(localBigInteger);
    paramExtendedPKIXParameters = baW.ˊ(localX509CRLStoreSelector, paramExtendedPKIXParameters, paramDate);
    paramDate = new HashSet();
    paramExtendedPKIXParameters = paramExtendedPKIXParameters.iterator();
    while (paramExtendedPKIXParameters.hasNext())
    {
      paramX509CRL = (X509CRL)paramExtendedPKIXParameters.next();
      if (ˎ(paramX509CRL)) {
        paramDate.add(paramX509CRL);
      }
    }
    return paramDate;
  }
  
  protected static Set ˊ(DistributionPoint paramDistributionPoint, Object paramObject, Date paramDate, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    X509CRLStoreSelector localX509CRLStoreSelector = new X509CRLStoreSelector();
    try
    {
      HashSet localHashSet = new HashSet();
      if ((paramObject instanceof X509AttributeCertificate)) {
        localHashSet.add(((X509AttributeCertificate)paramObject).ty().getPrincipals()[0]);
      } else {
        localHashSet.add(ﻨ(paramObject));
      }
      ˊ(paramDistributionPoint, localHashSet, localX509CRLStoreSelector, paramExtendedPKIXParameters);
    }
    catch (AnnotatedException paramDistributionPoint)
    {
      throw new AnnotatedException("Could not get issuer information from distribution point.", paramDistributionPoint);
    }
    if ((paramObject instanceof X509Certificate)) {
      localX509CRLStoreSelector.setCertificateChecking((X509Certificate)paramObject);
    } else if ((paramObject instanceof X509AttributeCertificate)) {
      localX509CRLStoreSelector.ˊ((X509AttributeCertificate)paramObject);
    }
    localX509CRLStoreSelector.ײ(true);
    paramDistributionPoint = baW.ˊ(localX509CRLStoreSelector, paramExtendedPKIXParameters, paramDate);
    if (paramDistributionPoint.isEmpty())
    {
      if ((paramObject instanceof X509AttributeCertificate))
      {
        paramDistributionPoint = (X509AttributeCertificate)paramObject;
        throw new AnnotatedException("No CRLs found for issuer \"" + paramDistributionPoint.ty().getPrincipals()[0] + "\"");
      }
      paramDistributionPoint = (X509Certificate)paramObject;
      throw new AnnotatedException("No CRLs found for issuer \"" + paramDistributionPoint.getIssuerX500Principal() + "\"");
    }
    return paramDistributionPoint;
  }
  
  protected static ASN1Primitive ˊ(java.security.cert.X509Extension paramX509Extension, String paramString)
  {
    paramX509Extension = paramX509Extension.getExtensionValue(paramString);
    if (paramX509Extension == null) {
      return null;
    }
    return ˎ(paramString, paramX509Extension);
  }
  
  protected static PKIXPolicyNode ˊ(PKIXPolicyNode paramPKIXPolicyNode1, List[] paramArrayOfList, PKIXPolicyNode paramPKIXPolicyNode2)
  {
    PKIXPolicyNode localPKIXPolicyNode = (PKIXPolicyNode)paramPKIXPolicyNode2.getParent();
    if (paramPKIXPolicyNode1 == null) {
      return null;
    }
    if (localPKIXPolicyNode == null)
    {
      int i = 0;
      while (i < paramArrayOfList.length)
      {
        paramArrayOfList[i] = new ArrayList();
        i += 1;
      }
      return null;
    }
    localPKIXPolicyNode.ˋ(paramPKIXPolicyNode2);
    ˊ(paramArrayOfList, paramPKIXPolicyNode2);
    return paramPKIXPolicyNode1;
  }
  
  protected static void ˊ(String paramString, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    if (paramExtendedPKIXParameters.tm()) {
      try
      {
        if (paramString.startsWith("ldap://"))
        {
          String str = paramString.substring(7);
          paramString = null;
          if (str.indexOf("/") != -1)
          {
            paramString = str.substring(str.indexOf("/"));
            str = "ldap://" + str.substring(0, str.indexOf("/"));
          }
          else
          {
            str = "ldap://" + str;
          }
          paramString = new X509LDAPCertStoreParameters.Builder(str, paramString).oK();
          paramExtendedPKIXParameters.ˊ(X509Store.ˊ("CERTIFICATE/LDAP", paramString, "SC"));
          paramExtendedPKIXParameters.ˊ(X509Store.ˊ("CRL/LDAP", paramString, "SC"));
          paramExtendedPKIXParameters.ˊ(X509Store.ˊ("ATTRIBUTECERTIFICATE/LDAP", paramString, "SC"));
          paramExtendedPKIXParameters.ˊ(X509Store.ˊ("CERTIFICATEPAIR/LDAP", paramString, "SC"));
        }
        return;
      }
      catch (Exception paramString)
      {
        throw new RuntimeException("Exception adding X.509 stores.");
      }
    }
  }
  
  protected static void ˊ(X509Certificate paramX509Certificate, PublicKey paramPublicKey, String paramString)
  {
    if (paramString == null)
    {
      paramX509Certificate.verify(paramPublicKey);
      return;
    }
    paramX509Certificate.verify(paramPublicKey, paramString);
  }
  
  protected static void ˊ(X509Certificate paramX509Certificate, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    if (paramX509Certificate.getIssuerAlternativeNames() != null)
    {
      paramX509Certificate = paramX509Certificate.getIssuerAlternativeNames().iterator();
      while (paramX509Certificate.hasNext())
      {
        List localList = (List)paramX509Certificate.next();
        if (localList.get(0).equals(Integers.valueOf(6))) {
          ˊ((String)localList.get(1), paramExtendedPKIXParameters);
        }
      }
    }
  }
  
  protected static void ˊ(Date paramDate, X509CRL paramX509CRL, Object paramObject, CertStatus paramCertStatus)
  {
    boolean bool;
    try
    {
      bool = X509CRLObject.ˊ(paramX509CRL);
    }
    catch (CRLException paramDate)
    {
      throw new AnnotatedException("Failed check for indirect CRL.", paramDate);
    }
    if (bool)
    {
      X509CRLEntry localX509CRLEntry = paramX509CRL.getRevokedCertificate(ｨ(paramObject));
      if (localX509CRLEntry == null) {
        return;
      }
      X500Principal localX500Principal2 = localX509CRLEntry.getCertificateIssuer();
      X500Principal localX500Principal1 = localX500Principal2;
      if (localX500Principal2 == null) {
        localX500Principal1 = ˋ(paramX509CRL);
      }
      if (!ﻨ(paramObject).equals(localX500Principal1)) {
        return;
      }
      paramX509CRL = localX509CRLEntry;
    }
    else
    {
      if (!ﻨ(paramObject).equals(ˋ(paramX509CRL))) {
        return;
      }
      paramObject = paramX509CRL.getRevokedCertificate(ｨ(paramObject));
      paramX509CRL = paramObject;
      if (paramObject == null) {
        return;
      }
    }
    paramObject = null;
    if (paramX509CRL.hasExtensions()) {
      try
      {
        paramObject = ASN1Enumerated.ᵛ(ˊ(paramX509CRL, org.spongycastle.asn1.x509.X509Extension.ayP.getId()));
      }
      catch (Exception paramDate)
      {
        throw new AnnotatedException("Reason code CRL entry extension could not be decoded.", paramDate);
      }
    }
    if ((paramDate.getTime() >= paramX509CRL.getRevocationDate().getTime()) || (paramObject == null) || (paramObject.eA().intValue() == 0) || (paramObject.eA().intValue() == 1) || (paramObject.eA().intValue() == 2) || (paramObject.eA().intValue() == 8))
    {
      if (paramObject != null) {
        paramCertStatus.כּ(paramObject.eA().intValue());
      } else {
        paramCertStatus.כּ(0);
      }
      paramCertStatus.ˊ(paramX509CRL.getRevocationDate());
    }
  }
  
  protected static void ˊ(CRLDistPoint paramCRLDistPoint, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    if (paramCRLDistPoint != null)
    {
      try
      {
        paramCRLDistPoint = paramCRLDistPoint.hb();
      }
      catch (Exception paramCRLDistPoint)
      {
        throw new AnnotatedException("Distribution points could not be read.", paramCRLDistPoint);
      }
      int i = 0;
      while (i < paramCRLDistPoint.length)
      {
        Object localObject = paramCRLDistPoint[i].ht();
        if ((localObject != null) && (((DistributionPointName)localObject).getType() == 0))
        {
          localObject = GeneralNames.＿(((DistributionPointName)localObject).hw()).hB();
          int j = 0;
          while (j < localObject.length)
          {
            if (localObject[j].eW() == 6) {
              ˊ(DERIA5String.ˀ(localObject[j].hw()).getString(), paramExtendedPKIXParameters);
            }
            j += 1;
          }
        }
        i += 1;
      }
    }
  }
  
  protected static void ˊ(DistributionPoint paramDistributionPoint, Collection paramCollection, X509CRLSelector paramX509CRLSelector, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    paramExtendedPKIXParameters = new ArrayList();
    if (paramDistributionPoint.hv() != null)
    {
      paramDistributionPoint = paramDistributionPoint.hv().hB();
      int i = 0;
      while (i < paramDistributionPoint.length)
      {
        if (paramDistributionPoint[i].eW() == 4) {
          try
          {
            paramExtendedPKIXParameters.add(new X500Principal(paramDistributionPoint[i].hw().ez().getEncoded()));
          }
          catch (IOException paramDistributionPoint)
          {
            throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", paramDistributionPoint);
          }
        }
        i += 1;
      }
    }
    else
    {
      if (paramDistributionPoint.ht() == null) {
        throw new AnnotatedException("CRL issuer is omitted from distribution point but no distributionPoint field present.");
      }
      paramDistributionPoint = paramCollection.iterator();
      while (paramDistributionPoint.hasNext()) {
        paramExtendedPKIXParameters.add((X500Principal)paramDistributionPoint.next());
      }
    }
    paramDistributionPoint = paramExtendedPKIXParameters.iterator();
    while (paramDistributionPoint.hasNext()) {
      try
      {
        paramX509CRLSelector.addIssuerName(((X500Principal)paramDistributionPoint.next()).getEncoded());
      }
      catch (IOException paramDistributionPoint)
      {
        throw new AnnotatedException("Cannot decode CRL issuer information.", paramDistributionPoint);
      }
    }
  }
  
  private static void ˊ(List[] paramArrayOfList, PKIXPolicyNode paramPKIXPolicyNode)
  {
    paramArrayOfList[paramPKIXPolicyNode.getDepth()].remove(paramPKIXPolicyNode);
    if (paramPKIXPolicyNode.hasChildren())
    {
      paramPKIXPolicyNode = paramPKIXPolicyNode.getChildren();
      while (paramPKIXPolicyNode.hasNext()) {
        ˊ(paramArrayOfList, (PKIXPolicyNode)paramPKIXPolicyNode.next());
      }
    }
  }
  
  protected static boolean ˊ(int paramInt, List[] paramArrayOfList, ASN1ObjectIdentifier paramASN1ObjectIdentifier, Set paramSet)
  {
    Object localObject = paramArrayOfList[(paramInt - 1)];
    int i = 0;
    while (i < ((List)localObject).size())
    {
      PKIXPolicyNode localPKIXPolicyNode = (PKIXPolicyNode)((List)localObject).get(i);
      if (localPKIXPolicyNode.getExpectedPolicies().contains(paramASN1ObjectIdentifier.getId()))
      {
        localObject = new HashSet();
        ((Set)localObject).add(paramASN1ObjectIdentifier.getId());
        paramASN1ObjectIdentifier = new PKIXPolicyNode(new ArrayList(), paramInt, (Set)localObject, localPKIXPolicyNode, paramSet, paramASN1ObjectIdentifier.getId(), false);
        localPKIXPolicyNode.ˊ(paramASN1ObjectIdentifier);
        paramArrayOfList[paramInt].add(paramASN1ObjectIdentifier);
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  protected static PublicKey ˋ(List paramList, int paramInt)
  {
    Object localObject1 = ((Certificate)paramList.get(paramInt)).getPublicKey();
    if (!(localObject1 instanceof DSAPublicKey)) {
      return localObject1;
    }
    localObject1 = (DSAPublicKey)localObject1;
    if (((DSAPublicKey)localObject1).getParams() != null) {
      return localObject1;
    }
    paramInt += 1;
    while (paramInt < paramList.size())
    {
      Object localObject2 = ((X509Certificate)paramList.get(paramInt)).getPublicKey();
      if (!(localObject2 instanceof DSAPublicKey)) {
        throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
      }
      localObject2 = (DSAPublicKey)localObject2;
      if (((DSAPublicKey)localObject2).getParams() != null)
      {
        paramList = ((DSAPublicKey)localObject2).getParams();
        paramList = new DSAPublicKeySpec(((DSAPublicKey)localObject1).getY(), paramList.getP(), paramList.getQ(), paramList.getG());
        try
        {
          paramList = KeyFactory.getInstance("DSA", "SC").generatePublic(paramList);
          return paramList;
        }
        catch (Exception paramList)
        {
          throw new RuntimeException(paramList.getMessage());
        }
      }
      paramInt += 1;
    }
    throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
  }
  
  protected static X500Principal ˋ(X509CRL paramX509CRL)
  {
    return paramX509CRL.getIssuerX500Principal();
  }
  
  protected static void ˋ(int paramInt, List[] paramArrayOfList, ASN1ObjectIdentifier paramASN1ObjectIdentifier, Set paramSet)
  {
    Object localObject = paramArrayOfList[(paramInt - 1)];
    int i = 0;
    while (i < ((List)localObject).size())
    {
      PKIXPolicyNode localPKIXPolicyNode = (PKIXPolicyNode)((List)localObject).get(i);
      if ("2.5.29.32.0".equals(localPKIXPolicyNode.getValidPolicy()))
      {
        localObject = new HashSet();
        ((Set)localObject).add(paramASN1ObjectIdentifier.getId());
        paramASN1ObjectIdentifier = new PKIXPolicyNode(new ArrayList(), paramInt, (Set)localObject, localPKIXPolicyNode, paramSet, paramASN1ObjectIdentifier.getId(), false);
        localPKIXPolicyNode.ˊ(paramASN1ObjectIdentifier);
        paramArrayOfList[paramInt].add(paramASN1ObjectIdentifier);
        return;
      }
      i += 1;
    }
  }
  
  protected static boolean ˋ(Set paramSet)
  {
    return (paramSet == null) || (paramSet.contains("2.5.29.32.0")) || (paramSet.isEmpty());
  }
  
  private static ASN1Primitive ˎ(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = new ASN1InputStream(((ASN1OctetString)new ASN1InputStream(paramArrayOfByte).eH()).eM()).eH();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new AnnotatedException("exception processing extension " + paramString, paramArrayOfByte);
    }
  }
  
  protected static AlgorithmIdentifier ˎ(PublicKey paramPublicKey)
  {
    try
    {
      paramPublicKey = SubjectPublicKeyInfo.ן(new ASN1InputStream(paramPublicKey.getEncoded()).eH()).fX();
      return paramPublicKey;
    }
    catch (Exception paramPublicKey)
    {
      throw new ExtCertPathValidatorException("Subject public key cannot be decoded.", paramPublicKey);
    }
  }
  
  private static boolean ˎ(X509CRL paramX509CRL)
  {
    paramX509CRL = paramX509CRL.getCriticalExtensionOIDs();
    if (paramX509CRL == null) {
      return false;
    }
    return paramX509CRL.contains(RFC3280CertPathUtilities.bbf);
  }
  
  protected static final Set ˏ(ASN1Sequence paramASN1Sequence)
  {
    HashSet localHashSet = new HashSet();
    if (paramASN1Sequence == null) {
      return localHashSet;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ASN1OutputStream localASN1OutputStream = new ASN1OutputStream(localByteArrayOutputStream);
    paramASN1Sequence = paramASN1Sequence.eT();
    while (paramASN1Sequence.hasMoreElements())
    {
      try
      {
        localASN1OutputStream.ˋ((ASN1Encodable)paramASN1Sequence.nextElement());
        localHashSet.add(new PolicyQualifierInfo(localByteArrayOutputStream.toByteArray()));
      }
      catch (IOException paramASN1Sequence)
      {
        throw new ExtCertPathValidatorException("Policy qualifier info cannot be decoded.", paramASN1Sequence);
      }
      localByteArrayOutputStream.reset();
    }
    return localHashSet;
  }
  
  protected static X500Principal ﻨ(Object paramObject)
  {
    if ((paramObject instanceof X509Certificate)) {
      return ((X509Certificate)paramObject).getIssuerX500Principal();
    }
    return (X500Principal)((X509AttributeCertificate)paramObject).ty().getPrincipals()[0];
  }
  
  private static BigInteger ｨ(Object paramObject)
  {
    if ((paramObject instanceof X509Certificate)) {
      return ((X509Certificate)paramObject).getSerialNumber();
    }
    return ((X509AttributeCertificate)paramObject).getSerialNumber();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.CertPathValidatorUtilities
 * JD-Core Version:    0.7.0.1
 */