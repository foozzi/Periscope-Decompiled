package org.spongycastle.jce.provider;

import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Principal;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidator;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateParsingException;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.PKIXCertPathBuilderResult;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.jce.exception.ExtCertPathBuilderException;
import org.spongycastle.x509.AttributeCertificateIssuer;
import org.spongycastle.x509.ExtendedPKIXBuilderParameters;
import org.spongycastle.x509.X509AttributeCertStoreSelector;
import org.spongycastle.x509.X509AttributeCertificate;
import org.spongycastle.x509.X509CertStoreSelector;

public class PKIXAttrCertPathBuilderSpi
  extends CertPathBuilderSpi
{
  private Exception bbs;
  
  private CertPathBuilderResult ˊ(X509AttributeCertificate paramX509AttributeCertificate, X509Certificate paramX509Certificate, ExtendedPKIXBuilderParameters paramExtendedPKIXBuilderParameters, List paramList)
  {
    if (paramList.contains(paramX509Certificate)) {
      return null;
    }
    if (paramExtendedPKIXBuilderParameters.th().contains(paramX509Certificate)) {
      return null;
    }
    if ((paramExtendedPKIXBuilderParameters.getMaxPathLength() != -1) && (paramList.size() - 1 > paramExtendedPKIXBuilderParameters.getMaxPathLength())) {
      return null;
    }
    paramList.add(paramX509Certificate);
    Object localObject1 = null;
    X509Certificate localX509Certificate = null;
    CertificateFactory localCertificateFactory;
    Object localObject3;
    try
    {
      localCertificateFactory = CertificateFactory.getInstance("X.509", "SC");
      localObject3 = CertPathValidator.getInstance("RFC3281", "SC");
    }
    catch (Exception paramX509AttributeCertificate)
    {
      throw new RuntimeException("Exception creating support classes.");
    }
    Object localObject2 = localObject1;
    try
    {
      TrustAnchor localTrustAnchor = CertPathValidatorUtilities.ˊ(paramX509Certificate, paramExtendedPKIXBuilderParameters.getTrustAnchors(), paramExtendedPKIXBuilderParameters.getSigProvider());
      if (localTrustAnchor != null)
      {
        localObject2 = localObject1;
        try
        {
          paramX509AttributeCertificate = localCertificateFactory.generateCertPath(paramList);
        }
        catch (Exception paramX509AttributeCertificate)
        {
          localObject2 = localObject1;
          throw new AnnotatedException("Certification path could not be constructed from certificate list.", paramX509AttributeCertificate);
        }
        localObject2 = localObject1;
        try
        {
          paramExtendedPKIXBuilderParameters = (PKIXCertPathValidatorResult)((CertPathValidator)localObject3).validate(paramX509AttributeCertificate, paramExtendedPKIXBuilderParameters);
        }
        catch (Exception paramX509AttributeCertificate)
        {
          localObject2 = localObject1;
          throw new AnnotatedException("Certification path could not be validated.", paramX509AttributeCertificate);
        }
        localObject2 = localObject1;
        paramX509AttributeCertificate = new PKIXCertPathBuilderResult(paramX509AttributeCertificate, paramExtendedPKIXBuilderParameters.getTrustAnchor(), paramExtendedPKIXBuilderParameters.getPolicyTree(), paramExtendedPKIXBuilderParameters.getPublicKey());
        return paramX509AttributeCertificate;
      }
      localObject2 = localObject1;
      try
      {
        CertPathValidatorUtilities.ˊ(paramX509Certificate, paramExtendedPKIXBuilderParameters);
      }
      catch (CertificateParsingException paramX509AttributeCertificate)
      {
        localObject2 = localObject1;
        throw new AnnotatedException("No additional X.509 stores can be added from certificate locations.", paramX509AttributeCertificate);
      }
      localObject2 = localObject1;
      localObject3 = new HashSet();
      try
      {
        ((Collection)localObject3).addAll(CertPathValidatorUtilities.ˊ(paramX509Certificate, paramExtendedPKIXBuilderParameters));
      }
      catch (AnnotatedException paramX509AttributeCertificate)
      {
        localObject2 = localObject1;
        throw new AnnotatedException("Cannot find issuer certificate for certificate in certification path.", paramX509AttributeCertificate);
      }
      localObject2 = localObject1;
      if (((Collection)localObject3).isEmpty())
      {
        localObject2 = localObject1;
        throw new AnnotatedException("No issuer certificate for certificate in certification path found.");
      }
      localObject2 = localObject1;
      localObject3 = ((Collection)localObject3).iterator();
      localObject1 = localX509Certificate;
      for (;;)
      {
        localObject2 = localObject1;
        if ((!((Iterator)localObject3).hasNext()) || (localObject1 != null)) {
          break;
        }
        localObject2 = localObject1;
        localX509Certificate = (X509Certificate)((Iterator)localObject3).next();
        localObject2 = localObject1;
        if (!localX509Certificate.getIssuerX500Principal().equals(localX509Certificate.getSubjectX500Principal()))
        {
          localObject2 = localObject1;
          localObject1 = ˊ(paramX509AttributeCertificate, localX509Certificate, paramExtendedPKIXBuilderParameters, paramList);
        }
      }
    }
    catch (AnnotatedException paramX509AttributeCertificate)
    {
      this.bbs = new AnnotatedException("No valid certification path could be build.", paramX509AttributeCertificate);
      localObject1 = localObject2;
    }
    if (localObject1 == null) {
      paramList.remove(paramX509Certificate);
    }
    return localObject1;
  }
  
  public CertPathBuilderResult engineBuild(CertPathParameters paramCertPathParameters)
  {
    if ((!(paramCertPathParameters instanceof PKIXBuilderParameters)) && (!(paramCertPathParameters instanceof ExtendedPKIXBuilderParameters))) {
      throw new InvalidAlgorithmParameterException("Parameters must be an instance of " + PKIXBuilderParameters.class.getName() + " or " + ExtendedPKIXBuilderParameters.class.getName() + ".");
    }
    if ((paramCertPathParameters instanceof ExtendedPKIXBuilderParameters)) {
      paramCertPathParameters = (ExtendedPKIXBuilderParameters)paramCertPathParameters;
    } else {
      paramCertPathParameters = (ExtendedPKIXBuilderParameters)ExtendedPKIXBuilderParameters.ˎ((PKIXBuilderParameters)paramCertPathParameters);
    }
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = paramCertPathParameters.tn();
    if (!(localObject1 instanceof X509AttributeCertStoreSelector)) {
      throw new CertPathBuilderException("TargetConstraints must be an instance of " + X509AttributeCertStoreSelector.class.getName() + " for " + getClass().getName() + " class.");
    }
    try
    {
      localObject2 = CertPathValidatorUtilities.ˊ((X509AttributeCertStoreSelector)localObject1, paramCertPathParameters.tl());
    }
    catch (AnnotatedException paramCertPathParameters)
    {
      throw new ExtCertPathBuilderException("Error finding target attribute certificate.", paramCertPathParameters);
    }
    if (((Collection)localObject2).isEmpty()) {
      throw new CertPathBuilderException("No attribute certificate found matching targetContraints.");
    }
    localObject1 = null;
    Object localObject2 = ((Collection)localObject2).iterator();
    while ((((Iterator)localObject2).hasNext()) && (localObject1 == null))
    {
      X509AttributeCertificate localX509AttributeCertificate = (X509AttributeCertificate)((Iterator)localObject2).next();
      Object localObject3 = new X509CertStoreSelector();
      Principal[] arrayOfPrincipal = localX509AttributeCertificate.ty().getPrincipals();
      HashSet localHashSet = new HashSet();
      int i = 0;
      while (i < arrayOfPrincipal.length)
      {
        try
        {
          if ((arrayOfPrincipal[i] instanceof X500Principal)) {
            ((X509CertStoreSelector)localObject3).setSubject(((X500Principal)arrayOfPrincipal[i]).getEncoded());
          }
          localHashSet.addAll(CertPathValidatorUtilities.ˊ((X509CertStoreSelector)localObject3, paramCertPathParameters.tl()));
          localHashSet.addAll(CertPathValidatorUtilities.ˊ((X509CertStoreSelector)localObject3, paramCertPathParameters.getCertStores()));
        }
        catch (AnnotatedException paramCertPathParameters)
        {
          throw new ExtCertPathBuilderException("Public key certificate for attribute certificate cannot be searched.", paramCertPathParameters);
        }
        catch (IOException paramCertPathParameters)
        {
          throw new ExtCertPathBuilderException("cannot encode X500Principal.", paramCertPathParameters);
        }
        i += 1;
      }
      if (localHashSet.isEmpty()) {
        throw new CertPathBuilderException("Public key certificate for attribute certificate cannot be found.");
      }
      localObject3 = localHashSet.iterator();
      while ((((Iterator)localObject3).hasNext()) && (localObject1 == null)) {
        localObject1 = ˊ(localX509AttributeCertificate, (X509Certificate)((Iterator)localObject3).next(), paramCertPathParameters, localArrayList);
      }
    }
    if ((localObject1 == null) && (this.bbs != null)) {
      throw new ExtCertPathBuilderException("Possible certificate chain could not be validated.", this.bbs);
    }
    if ((localObject1 == null) && (this.bbs == null)) {
      throw new CertPathBuilderException("Unable to find certificate chain.");
    }
    return localObject1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.PKIXAttrCertPathBuilderSpi
 * JD-Core Version:    0.7.0.1
 */