package org.spongycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPath;
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
import org.spongycastle.jce.exception.ExtCertPathBuilderException;
import org.spongycastle.x509.ExtendedPKIXBuilderParameters;
import org.spongycastle.x509.X509CertStoreSelector;

public class PKIXCertPathBuilderSpi
  extends CertPathBuilderSpi
{
  private Exception bbs;
  
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
    if (!(localObject1 instanceof X509CertStoreSelector)) {
      throw new CertPathBuilderException("TargetConstraints must be an instance of " + X509CertStoreSelector.class.getName() + " for " + getClass().getName() + " class.");
    }
    try
    {
      localObject2 = CertPathValidatorUtilities.ˊ((X509CertStoreSelector)localObject1, paramCertPathParameters.tl());
      ((Collection)localObject2).addAll(CertPathValidatorUtilities.ˊ((X509CertStoreSelector)localObject1, paramCertPathParameters.getCertStores()));
    }
    catch (AnnotatedException paramCertPathParameters)
    {
      throw new ExtCertPathBuilderException("Error finding target certificate.", paramCertPathParameters);
    }
    if (((Collection)localObject2).isEmpty()) {
      throw new CertPathBuilderException("No certificate found matching targetContraints.");
    }
    localObject1 = null;
    Object localObject2 = ((Collection)localObject2).iterator();
    while ((((Iterator)localObject2).hasNext()) && (localObject1 == null)) {
      localObject1 = ˊ((X509Certificate)((Iterator)localObject2).next(), paramCertPathParameters, localArrayList);
    }
    if ((localObject1 == null) && (this.bbs != null))
    {
      if ((this.bbs instanceof AnnotatedException)) {
        throw new CertPathBuilderException(this.bbs.getMessage(), this.bbs.getCause());
      }
      throw new CertPathBuilderException("Possible certificate chain could not be validated.", this.bbs);
    }
    if ((localObject1 == null) && (this.bbs == null)) {
      throw new CertPathBuilderException("Unable to find certificate chain.");
    }
    return localObject1;
  }
  
  protected CertPathBuilderResult ˊ(X509Certificate paramX509Certificate, ExtendedPKIXBuilderParameters paramExtendedPKIXBuilderParameters, List paramList)
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
    CertPath localCertPath = null;
    CertificateFactory localCertificateFactory;
    Object localObject3;
    try
    {
      localCertificateFactory = CertificateFactory.getInstance("X.509", "SC");
      localObject3 = CertPathValidator.getInstance("PKIX", "SC");
    }
    catch (Exception paramX509Certificate)
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
          localCertPath = localCertificateFactory.generateCertPath(paramList);
        }
        catch (Exception paramExtendedPKIXBuilderParameters)
        {
          localObject2 = localObject1;
          throw new AnnotatedException("Certification path could not be constructed from certificate list.", paramExtendedPKIXBuilderParameters);
        }
        localObject2 = localObject1;
        try
        {
          paramExtendedPKIXBuilderParameters = (PKIXCertPathValidatorResult)((CertPathValidator)localObject3).validate(localCertPath, paramExtendedPKIXBuilderParameters);
        }
        catch (Exception paramExtendedPKIXBuilderParameters)
        {
          localObject2 = localObject1;
          throw new AnnotatedException("Certification path could not be validated.", paramExtendedPKIXBuilderParameters);
        }
        localObject2 = localObject1;
        paramExtendedPKIXBuilderParameters = new PKIXCertPathBuilderResult(localCertPath, paramExtendedPKIXBuilderParameters.getTrustAnchor(), paramExtendedPKIXBuilderParameters.getPolicyTree(), paramExtendedPKIXBuilderParameters.getPublicKey());
        return paramExtendedPKIXBuilderParameters;
      }
      localObject2 = localObject1;
      try
      {
        CertPathValidatorUtilities.ˊ(paramX509Certificate, paramExtendedPKIXBuilderParameters);
      }
      catch (CertificateParsingException paramExtendedPKIXBuilderParameters)
      {
        localObject2 = localObject1;
        throw new AnnotatedException("No additiontal X.509 stores can be added from certificate locations.", paramExtendedPKIXBuilderParameters);
      }
      localObject2 = localObject1;
      localObject3 = new HashSet();
      try
      {
        ((Collection)localObject3).addAll(CertPathValidatorUtilities.ˊ(paramX509Certificate, paramExtendedPKIXBuilderParameters));
      }
      catch (AnnotatedException paramExtendedPKIXBuilderParameters)
      {
        localObject2 = localObject1;
        throw new AnnotatedException("Cannot find issuer certificate for certificate in certification path.", paramExtendedPKIXBuilderParameters);
      }
      localObject2 = localObject1;
      if (((Collection)localObject3).isEmpty())
      {
        localObject2 = localObject1;
        throw new AnnotatedException("No issuer certificate for certificate in certification path found.");
      }
      localObject2 = localObject1;
      localObject3 = ((Collection)localObject3).iterator();
      for (localObject1 = localCertPath;; localObject1 = ˊ((X509Certificate)((Iterator)localObject3).next(), paramExtendedPKIXBuilderParameters, paramList))
      {
        localObject2 = localObject1;
        if ((!((Iterator)localObject3).hasNext()) || (localObject1 != null)) {
          break;
        }
        localObject2 = localObject1;
      }
    }
    catch (AnnotatedException paramExtendedPKIXBuilderParameters)
    {
      this.bbs = paramExtendedPKIXBuilderParameters;
      localObject1 = localObject2;
    }
    if (localObject1 == null) {
      paramList.remove(paramX509Certificate);
    }
    return localObject1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.PKIXCertPathBuilderSpi
 * JD-Core Version:    0.7.0.1
 */