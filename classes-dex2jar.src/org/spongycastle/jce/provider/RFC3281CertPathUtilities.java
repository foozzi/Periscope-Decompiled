package org.spongycastle.jce.provider;

import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.CRLDistPoint;
import org.spongycastle.asn1.x509.DistributionPoint;
import org.spongycastle.asn1.x509.DistributionPointName;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.TargetInformation;
import org.spongycastle.asn1.x509.X509Extensions;
import org.spongycastle.jce.exception.ExtCertPathValidatorException;
import org.spongycastle.util.Selector;
import org.spongycastle.x509.AttributeCertificateHolder;
import org.spongycastle.x509.ExtendedPKIXBuilderParameters;
import org.spongycastle.x509.ExtendedPKIXParameters;
import org.spongycastle.x509.PKIXAttrCertChecker;
import org.spongycastle.x509.X509AttributeCertificate;
import org.spongycastle.x509.X509CertStoreSelector;

class RFC3281CertPathUtilities
{
  private static final String bbJ = X509Extensions.aBN.getId();
  private static final String bbK = X509Extensions.aBM.getId();
  private static final String bbL = X509Extensions.aBG.getId();
  private static final String bbi = X509Extensions.aBy.getId();
  
  protected static CertPathValidatorResult ˊ(CertPath paramCertPath, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    CertPathValidator localCertPathValidator;
    try
    {
      localCertPathValidator = CertPathValidator.getInstance("PKIX", "SC");
    }
    catch (NoSuchProviderException paramCertPath)
    {
      throw new ExtCertPathValidatorException("Support class could not be created.", paramCertPath);
    }
    catch (NoSuchAlgorithmException paramCertPath)
    {
      throw new ExtCertPathValidatorException("Support class could not be created.", paramCertPath);
    }
    try
    {
      paramCertPath = localCertPathValidator.validate(paramCertPath, paramExtendedPKIXParameters);
      return paramCertPath;
    }
    catch (CertPathValidatorException paramCertPath)
    {
      throw new ExtCertPathValidatorException("Certification path for issuer certificate of attribute certificate could not be validated.", paramCertPath);
    }
    catch (InvalidAlgorithmParameterException paramCertPath)
    {
      throw new RuntimeException(paramCertPath.getMessage());
    }
  }
  
  private static void ˊ(DistributionPoint paramDistributionPoint, X509AttributeCertificate paramX509AttributeCertificate, ExtendedPKIXParameters paramExtendedPKIXParameters, Date paramDate, X509Certificate paramX509Certificate, CertStatus paramCertStatus, ReasonsMask paramReasonsMask, List paramList)
  {
    if (paramX509AttributeCertificate.getExtensionValue(X509Extensions.aBM.getId()) != null) {
      return;
    }
    Date localDate = new Date(System.currentTimeMillis());
    if (paramDate.getTime() > localDate.getTime()) {
      throw new AnnotatedException("Validation time is in future.");
    }
    Object localObject = CertPathValidatorUtilities.ˊ(paramDistributionPoint, paramX509AttributeCertificate, localDate, paramExtendedPKIXParameters);
    int i = 0;
    paramX509Certificate = null;
    Iterator localIterator = ((Set)localObject).iterator();
    while ((localIterator.hasNext()) && (paramCertStatus.oV() == 11) && (!paramReasonsMask.oY())) {
      try
      {
        X509CRL localX509CRL = (X509CRL)localIterator.next();
        ReasonsMask localReasonsMask = RFC3280CertPathUtilities.ˊ(localX509CRL, paramDistributionPoint);
        boolean bool = localReasonsMask.ˎ(paramReasonsMask);
        if (bool)
        {
          PublicKey localPublicKey = RFC3280CertPathUtilities.ˊ(localX509CRL, RFC3280CertPathUtilities.ˊ(localX509CRL, paramX509AttributeCertificate, null, null, paramExtendedPKIXParameters, paramList));
          localObject = null;
          if (paramExtendedPKIXParameters.ti()) {
            localObject = RFC3280CertPathUtilities.ˊ(CertPathValidatorUtilities.ˊ(localDate, paramExtendedPKIXParameters, localX509CRL), localPublicKey);
          }
          if ((paramExtendedPKIXParameters.tj() != 1) && (paramX509AttributeCertificate.getNotAfter().getTime() < localX509CRL.getThisUpdate().getTime())) {
            throw new AnnotatedException("No valid CRL for current time found.");
          }
          RFC3280CertPathUtilities.ˋ(paramDistributionPoint, paramX509AttributeCertificate, localX509CRL);
          RFC3280CertPathUtilities.ˊ(paramDistributionPoint, paramX509AttributeCertificate, localX509CRL);
          RFC3280CertPathUtilities.ˊ((X509CRL)localObject, localX509CRL, paramExtendedPKIXParameters);
          RFC3280CertPathUtilities.ˊ(paramDate, (X509CRL)localObject, paramX509AttributeCertificate, paramCertStatus, paramExtendedPKIXParameters);
          RFC3280CertPathUtilities.ˋ(paramDate, localX509CRL, paramX509AttributeCertificate, paramCertStatus);
          if (paramCertStatus.oV() == 8) {
            paramCertStatus.כּ(11);
          }
          paramReasonsMask.ˊ(localReasonsMask);
          i = 1;
        }
      }
      catch (AnnotatedException paramX509Certificate) {}
    }
    if (i == 0) {
      throw paramX509Certificate;
    }
  }
  
  protected static void ˊ(X509AttributeCertificate paramX509AttributeCertificate, CertPath paramCertPath1, CertPath paramCertPath2, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    Set localSet = paramX509AttributeCertificate.getCriticalExtensionOIDs();
    if (localSet.contains(bbJ)) {
      try
      {
        TargetInformation.า(CertPathValidatorUtilities.ˊ(paramX509AttributeCertificate, bbJ));
      }
      catch (AnnotatedException paramX509AttributeCertificate)
      {
        throw new ExtCertPathValidatorException("Target information extension could not be read.", paramX509AttributeCertificate);
      }
      catch (IllegalArgumentException paramX509AttributeCertificate)
      {
        throw new ExtCertPathValidatorException("Target information extension could not be read.", paramX509AttributeCertificate);
      }
    }
    localSet.remove(bbJ);
    paramExtendedPKIXParameters = paramExtendedPKIXParameters.tr().iterator();
    while (paramExtendedPKIXParameters.hasNext()) {
      ((PKIXAttrCertChecker)paramExtendedPKIXParameters.next()).ˊ(paramX509AttributeCertificate, paramCertPath1, paramCertPath2, localSet);
    }
    if (!localSet.isEmpty()) {
      throw new CertPathValidatorException("Attribute certificate contains unsupported critical extensions: " + localSet);
    }
  }
  
  protected static void ˊ(X509AttributeCertificate paramX509AttributeCertificate, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    Object localObject = paramExtendedPKIXParameters.tq().iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      if (paramX509AttributeCertificate.ڊ(str) != null) {
        throw new CertPathValidatorException("Attribute certificate contains prohibited attribute: " + str + ".");
      }
    }
    paramExtendedPKIXParameters = paramExtendedPKIXParameters.tp().iterator();
    while (paramExtendedPKIXParameters.hasNext())
    {
      localObject = (String)paramExtendedPKIXParameters.next();
      if (paramX509AttributeCertificate.ڊ((String)localObject) == null) {
        throw new CertPathValidatorException("Attribute certificate does not contain necessary attribute: " + (String)localObject + ".");
      }
    }
  }
  
  protected static void ˊ(X509AttributeCertificate paramX509AttributeCertificate, ExtendedPKIXParameters paramExtendedPKIXParameters, X509Certificate paramX509Certificate, Date paramDate, List paramList)
  {
    if (paramExtendedPKIXParameters.isRevocationEnabled())
    {
      if (paramX509AttributeCertificate.getExtensionValue(bbK) == null)
      {
        Object localObject3;
        try
        {
          localObject3 = CRLDistPoint.ⁿ(CertPathValidatorUtilities.ˊ(paramX509AttributeCertificate, bbi));
        }
        catch (AnnotatedException paramX509AttributeCertificate)
        {
          throw new CertPathValidatorException("CRL distribution point extension could not be read.", paramX509AttributeCertificate);
        }
        try
        {
          CertPathValidatorUtilities.ˊ((CRLDistPoint)localObject3, paramExtendedPKIXParameters);
        }
        catch (AnnotatedException paramX509AttributeCertificate)
        {
          throw new CertPathValidatorException("No additional CRL locations could be decoded from CRL distribution point extension.", paramX509AttributeCertificate);
        }
        CertStatus localCertStatus = new CertStatus();
        ReasonsMask localReasonsMask = new ReasonsMask();
        Object localObject2 = null;
        int i = 0;
        int k = 0;
        Object localObject1 = localObject2;
        AnnotatedException localAnnotatedException2;
        if (localObject3 != null)
        {
          try
          {
            localObject1 = ((CRLDistPoint)localObject3).hb();
          }
          catch (Exception paramX509AttributeCertificate)
          {
            throw new ExtCertPathValidatorException("Distribution points could not be read.", paramX509AttributeCertificate);
          }
          j = 0;
          i = k;
          try
          {
            while ((j < localObject1.length) && (localCertStatus.oV() == 11) && (!localReasonsMask.oY()))
            {
              localObject3 = (ExtendedPKIXParameters)paramExtendedPKIXParameters.clone();
              ˊ(localObject1[j], paramX509AttributeCertificate, (ExtendedPKIXParameters)localObject3, paramDate, paramX509Certificate, localCertStatus, localReasonsMask, paramList);
              i = 1;
              j += 1;
            }
            localObject1 = localObject2;
          }
          catch (AnnotatedException localAnnotatedException1)
          {
            localAnnotatedException2 = new AnnotatedException("No valid CRL for distribution point found.", localAnnotatedException1);
          }
        }
        localObject2 = localAnnotatedException2;
        int j = i;
        if (localCertStatus.oV() == 11)
        {
          localObject2 = localAnnotatedException2;
          j = i;
          if (!localReasonsMask.oY()) {
            try
            {
              try
              {
                localObject2 = new ASN1InputStream(((X500Principal)paramX509AttributeCertificate.ty().getPrincipals()[0]).getEncoded()).eH();
              }
              catch (Exception paramX509AttributeCertificate)
              {
                throw new AnnotatedException("Issuer from certificate for CRL could not be reencoded.", paramX509AttributeCertificate);
              }
              ˊ(new DistributionPoint(new DistributionPointName(0, new GeneralNames(new GeneralName(4, (ASN1Encodable)localObject2))), null, null), paramX509AttributeCertificate, (ExtendedPKIXParameters)paramExtendedPKIXParameters.clone(), paramDate, paramX509Certificate, localCertStatus, localReasonsMask, paramList);
              j = 1;
              localObject2 = localAnnotatedException2;
            }
            catch (AnnotatedException paramX509AttributeCertificate)
            {
              localObject2 = new AnnotatedException("No valid CRL for distribution point found.", paramX509AttributeCertificate);
              j = i;
            }
          }
        }
        if (j == 0) {
          throw new ExtCertPathValidatorException("No valid CRL found.", (Throwable)localObject2);
        }
        if (localCertStatus.oV() != 11)
        {
          paramX509AttributeCertificate = "Attribute certificate revocation after " + localCertStatus.getRevocationDate();
          throw new CertPathValidatorException(paramX509AttributeCertificate + ", reason: " + RFC3280CertPathUtilities.bbl[localCertStatus.oV()]);
        }
        if ((!localReasonsMask.oY()) && (localCertStatus.oV() == 11)) {
          localCertStatus.כּ(12);
        }
        if (localCertStatus.oV() == 12) {
          throw new CertPathValidatorException("Attribute certificate status could not be determined.");
        }
        return;
      }
      if ((paramX509AttributeCertificate.getExtensionValue(bbi) != null) || (paramX509AttributeCertificate.getExtensionValue(bbL) != null)) {
        throw new CertPathValidatorException("No rev avail extension is set, but also an AC revocation pointer.");
      }
    }
  }
  
  protected static void ˋ(X509Certificate paramX509Certificate, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    paramExtendedPKIXParameters = paramExtendedPKIXParameters.to();
    int i = 0;
    paramExtendedPKIXParameters = paramExtendedPKIXParameters.iterator();
    while (paramExtendedPKIXParameters.hasNext())
    {
      TrustAnchor localTrustAnchor = (TrustAnchor)paramExtendedPKIXParameters.next();
      if ((paramX509Certificate.getSubjectX500Principal().getName("RFC2253").equals(localTrustAnchor.getCAName())) || (paramX509Certificate.equals(localTrustAnchor.getTrustedCert()))) {
        i = 1;
      }
    }
    if (i == 0) {
      throw new CertPathValidatorException("Attribute certificate issuer is not directly trusted.");
    }
  }
  
  protected static void ˋ(X509AttributeCertificate paramX509AttributeCertificate, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    try
    {
      paramX509AttributeCertificate.checkValidity(CertPathValidatorUtilities.ˊ(paramExtendedPKIXParameters));
      return;
    }
    catch (CertificateExpiredException paramX509AttributeCertificate)
    {
      throw new ExtCertPathValidatorException("Attribute certificate is not valid.", paramX509AttributeCertificate);
    }
    catch (CertificateNotYetValidException paramX509AttributeCertificate)
    {
      throw new ExtCertPathValidatorException("Attribute certificate is not valid.", paramX509AttributeCertificate);
    }
  }
  
  protected static CertPath ˎ(X509AttributeCertificate paramX509AttributeCertificate, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    Object localObject1 = null;
    Object localObject3 = new HashSet();
    int i;
    if (paramX509AttributeCertificate.tv().getIssuer() != null)
    {
      localObject2 = new X509CertStoreSelector();
      ((X509CertStoreSelector)localObject2).setSerialNumber(paramX509AttributeCertificate.tv().getSerialNumber());
      Principal[] arrayOfPrincipal = paramX509AttributeCertificate.tv().getIssuer();
      i = 0;
      while (i < arrayOfPrincipal.length)
      {
        try
        {
          if ((arrayOfPrincipal[i] instanceof X500Principal)) {
            ((X509CertStoreSelector)localObject2).setIssuer(((X500Principal)arrayOfPrincipal[i]).getEncoded());
          }
          ((Set)localObject3).addAll(CertPathValidatorUtilities.ˊ((X509CertStoreSelector)localObject2, paramExtendedPKIXParameters.tl()));
        }
        catch (AnnotatedException paramX509AttributeCertificate)
        {
          throw new ExtCertPathValidatorException("Public key certificate for attribute certificate cannot be searched.", paramX509AttributeCertificate);
        }
        catch (IOException paramX509AttributeCertificate)
        {
          throw new ExtCertPathValidatorException("Unable to encode X500 principal.", paramX509AttributeCertificate);
        }
        i += 1;
      }
      if (((Set)localObject3).isEmpty()) {
        throw new CertPathValidatorException("Public key certificate specified in base certificate ID for attribute certificate cannot be found.");
      }
    }
    if (paramX509AttributeCertificate.tv().getEntityNames() != null)
    {
      localObject2 = new X509CertStoreSelector();
      paramX509AttributeCertificate = paramX509AttributeCertificate.tv().getEntityNames();
      i = 0;
      while (i < paramX509AttributeCertificate.length)
      {
        try
        {
          if ((paramX509AttributeCertificate[i] instanceof X500Principal)) {
            ((X509CertStoreSelector)localObject2).setIssuer(((X500Principal)paramX509AttributeCertificate[i]).getEncoded());
          }
          ((Set)localObject3).addAll(CertPathValidatorUtilities.ˊ((X509CertStoreSelector)localObject2, paramExtendedPKIXParameters.tl()));
        }
        catch (AnnotatedException paramX509AttributeCertificate)
        {
          throw new ExtCertPathValidatorException("Public key certificate for attribute certificate cannot be searched.", paramX509AttributeCertificate);
        }
        catch (IOException paramX509AttributeCertificate)
        {
          throw new ExtCertPathValidatorException("Unable to encode X500 principal.", paramX509AttributeCertificate);
        }
        i += 1;
      }
      if (((Set)localObject3).isEmpty()) {
        throw new CertPathValidatorException("Public key certificate specified in entity name for attribute certificate cannot be found.");
      }
    }
    Object localObject2 = (ExtendedPKIXBuilderParameters)ExtendedPKIXBuilderParameters.ˎ(paramExtendedPKIXParameters);
    paramExtendedPKIXParameters = null;
    localObject3 = ((Set)localObject3).iterator();
    paramX509AttributeCertificate = (X509AttributeCertificate)localObject1;
    while (((Iterator)localObject3).hasNext())
    {
      localObject1 = new X509CertStoreSelector();
      ((X509CertStoreSelector)localObject1).setCertificate((X509Certificate)((Iterator)localObject3).next());
      ((ExtendedPKIXBuilderParameters)localObject2).ˎ((Selector)localObject1);
      try
      {
        localObject1 = CertPathBuilder.getInstance("PKIX", "SC");
      }
      catch (NoSuchProviderException paramX509AttributeCertificate)
      {
        throw new ExtCertPathValidatorException("Support class could not be created.", paramX509AttributeCertificate);
      }
      catch (NoSuchAlgorithmException paramX509AttributeCertificate)
      {
        throw new ExtCertPathValidatorException("Support class could not be created.", paramX509AttributeCertificate);
      }
      try
      {
        localObject1 = ((CertPathBuilder)localObject1).build(ExtendedPKIXBuilderParameters.ˎ((PKIXParameters)localObject2));
        paramX509AttributeCertificate = (X509AttributeCertificate)localObject1;
      }
      catch (CertPathBuilderException paramExtendedPKIXParameters)
      {
        paramExtendedPKIXParameters = new ExtCertPathValidatorException("Certification path for public key certificate of attribute certificate could not be build.", paramExtendedPKIXParameters);
      }
      catch (InvalidAlgorithmParameterException paramX509AttributeCertificate)
      {
        throw new RuntimeException(paramX509AttributeCertificate.getMessage());
      }
    }
    if (paramExtendedPKIXParameters != null) {
      throw paramExtendedPKIXParameters;
    }
    return paramX509AttributeCertificate.getCertPath();
  }
  
  protected static void ˎ(X509Certificate paramX509Certificate, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    if ((paramX509Certificate.getKeyUsage() != null) && (paramX509Certificate.getKeyUsage()[0] == 0) && (paramX509Certificate.getKeyUsage()[1] == 0)) {
      throw new CertPathValidatorException("Attribute certificate issuer public key cannot be used to validate digital signatures.");
    }
    if (paramX509Certificate.getBasicConstraints() != -1) {
      throw new CertPathValidatorException("Attribute certificate issuer is also a public key certificate issuer.");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.RFC3281CertPathUtilities
 * JD-Core Version:    0.7.0.1
 */