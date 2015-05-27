package org.spongycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.List;
import org.spongycastle.jce.exception.ExtCertPathValidatorException;
import org.spongycastle.x509.ExtendedPKIXParameters;
import org.spongycastle.x509.X509AttributeCertStoreSelector;
import org.spongycastle.x509.X509AttributeCertificate;

public class PKIXAttrCertPathValidatorSpi
  extends CertPathValidatorSpi
{
  public CertPathValidatorResult engineValidate(CertPath paramCertPath, CertPathParameters paramCertPathParameters)
  {
    if (!(paramCertPathParameters instanceof ExtendedPKIXParameters)) {
      throw new InvalidAlgorithmParameterException("Parameters must be a " + ExtendedPKIXParameters.class.getName() + " instance.");
    }
    paramCertPathParameters = (ExtendedPKIXParameters)paramCertPathParameters;
    Object localObject1 = paramCertPathParameters.tn();
    if (!(localObject1 instanceof X509AttributeCertStoreSelector)) {
      throw new InvalidAlgorithmParameterException("TargetConstraints must be an instance of " + X509AttributeCertStoreSelector.class.getName() + " for " + getClass().getName() + " class.");
    }
    localObject1 = ((X509AttributeCertStoreSelector)localObject1).tt();
    Object localObject2 = RFC3281CertPathUtilities.ˎ((X509AttributeCertificate)localObject1, paramCertPathParameters);
    CertPathValidatorResult localCertPathValidatorResult = RFC3281CertPathUtilities.ˊ(paramCertPath, paramCertPathParameters);
    X509Certificate localX509Certificate = (X509Certificate)paramCertPath.getCertificates().get(0);
    RFC3281CertPathUtilities.ˎ(localX509Certificate, paramCertPathParameters);
    RFC3281CertPathUtilities.ˋ(localX509Certificate, paramCertPathParameters);
    RFC3281CertPathUtilities.ˋ((X509AttributeCertificate)localObject1, paramCertPathParameters);
    RFC3281CertPathUtilities.ˊ((X509AttributeCertificate)localObject1, paramCertPath, (CertPath)localObject2, paramCertPathParameters);
    RFC3281CertPathUtilities.ˊ((X509AttributeCertificate)localObject1, paramCertPathParameters);
    try
    {
      localObject2 = CertPathValidatorUtilities.ˊ(paramCertPathParameters, null, -1);
    }
    catch (AnnotatedException paramCertPath)
    {
      throw new ExtCertPathValidatorException("Could not get validity date from attribute certificate.", paramCertPath);
    }
    RFC3281CertPathUtilities.ˊ((X509AttributeCertificate)localObject1, paramCertPathParameters, localX509Certificate, (Date)localObject2, paramCertPath.getCertificates());
    return localCertPathValidatorResult;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.PKIXAttrCertPathValidatorSpi
 * JD-Core Version:    0.7.0.1
 */