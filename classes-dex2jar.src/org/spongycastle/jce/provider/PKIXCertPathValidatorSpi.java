package org.spongycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jce.exception.ExtCertPathValidatorException;
import org.spongycastle.util.Selector;
import org.spongycastle.x509.ExtendedPKIXParameters;

public class PKIXCertPathValidatorSpi
  extends CertPathValidatorSpi
{
  public CertPathValidatorResult engineValidate(CertPath paramCertPath, CertPathParameters paramCertPathParameters)
  {
    if (!(paramCertPathParameters instanceof PKIXParameters)) {
      throw new InvalidAlgorithmParameterException("Parameters must be a " + PKIXParameters.class.getName() + " instance.");
    }
    ExtendedPKIXParameters localExtendedPKIXParameters;
    if ((paramCertPathParameters instanceof ExtendedPKIXParameters)) {
      localExtendedPKIXParameters = (ExtendedPKIXParameters)paramCertPathParameters;
    } else {
      localExtendedPKIXParameters = ExtendedPKIXParameters.ˎ((PKIXParameters)paramCertPathParameters);
    }
    if (localExtendedPKIXParameters.getTrustAnchors() == null) {
      throw new InvalidAlgorithmParameterException("trustAnchors is null, this is not allowed for certification path validation.");
    }
    List localList1 = paramCertPath.getCertificates();
    int i5 = localList1.size();
    if (localList1.isEmpty()) {
      throw new CertPathValidatorException("Certification path is empty.", null, paramCertPath, 0);
    }
    Set localSet = localExtendedPKIXParameters.getInitialPolicies();
    TrustAnchor localTrustAnchor;
    try
    {
      localTrustAnchor = CertPathValidatorUtilities.ˊ((X509Certificate)localList1.get(localList1.size() - 1), localExtendedPKIXParameters.getTrustAnchors(), localExtendedPKIXParameters.getSigProvider());
    }
    catch (AnnotatedException paramCertPathParameters)
    {
      throw new CertPathValidatorException(paramCertPathParameters.getMessage(), paramCertPathParameters, paramCertPath, localList1.size() - 1);
    }
    if (localTrustAnchor == null) {
      throw new CertPathValidatorException("Trust anchor for certification path not found.", null, paramCertPath, -1);
    }
    ArrayList[] arrayOfArrayList = new ArrayList[i5 + 1];
    int i = 0;
    while (i < arrayOfArrayList.length)
    {
      arrayOfArrayList[i] = new ArrayList();
      i += 1;
    }
    paramCertPathParameters = new HashSet();
    paramCertPathParameters.add("2.5.29.32.0");
    PKIXPolicyNode localPKIXPolicyNode = new PKIXPolicyNode(new ArrayList(), 0, paramCertPathParameters, null, new HashSet(), "2.5.29.32.0", false);
    arrayOfArrayList[0].add(localPKIXPolicyNode);
    PKIXNameConstraintValidator localPKIXNameConstraintValidator = new PKIXNameConstraintValidator();
    HashSet localHashSet = new HashSet();
    if (localExtendedPKIXParameters.isExplicitPolicyRequired()) {
      i = 0;
    } else {
      i = i5 + 1;
    }
    if (localExtendedPKIXParameters.isAnyPolicyInhibited()) {
      j = 0;
    } else {
      j = i5 + 1;
    }
    int k;
    if (localExtendedPKIXParameters.isPolicyMappingInhibited()) {
      k = 0;
    } else {
      k = i5 + 1;
    }
    Object localObject3 = localTrustAnchor.getTrustedCert();
    if (localObject3 != null) {}
    try
    {
      localObject1 = CertPathValidatorUtilities.ʼ((X509Certificate)localObject3);
      paramCertPathParameters = ((X509Certificate)localObject3).getPublicKey();
      break label428;
      localObject1 = new X500Principal(localTrustAnchor.getCAName());
      paramCertPathParameters = localTrustAnchor.getCAPublicKey();
    }
    catch (IllegalArgumentException paramCertPathParameters)
    {
      label428:
      throw new ExtCertPathValidatorException("Subject of trust anchor could not be (re)encoded.", paramCertPathParameters, paramCertPath, -1);
    }
    try
    {
      localObject2 = CertPathValidatorUtilities.ˎ(paramCertPathParameters);
    }
    catch (CertPathValidatorException paramCertPathParameters)
    {
      throw new ExtCertPathValidatorException("Algorithm identifier of public key of trust anchor could not be read.", paramCertPathParameters, paramCertPath, -1);
    }
    ((AlgorithmIdentifier)localObject2).fK();
    ((AlgorithmIdentifier)localObject2).fL();
    int m = i5;
    if ((localExtendedPKIXParameters.tn() != null) && (!localExtendedPKIXParameters.tn().ɨ((X509Certificate)localList1.get(0)))) {
      throw new ExtCertPathValidatorException("Target certificate in certification path does not match targetConstraints.", null, paramCertPath, 0);
    }
    List localList2 = localExtendedPKIXParameters.getCertPathCheckers();
    Object localObject2 = localList2.iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((PKIXCertPathChecker)((Iterator)localObject2).next()).init(false);
    }
    localObject2 = null;
    int n = localList1.size() - 1;
    Object localObject4 = localObject1;
    Object localObject5 = paramCertPathParameters;
    int i3 = i;
    paramCertPathParameters = localPKIXPolicyNode;
    i = n;
    while (i >= 0)
    {
      localObject1 = (X509Certificate)localList1.get(i);
      boolean bool;
      if (i == localList1.size() - 1) {
        bool = true;
      } else {
        bool = false;
      }
      RFC3280CertPathUtilities.ˊ(paramCertPath, localExtendedPKIXParameters, i, (PublicKey)localObject5, bool, (X500Principal)localObject4, (X509Certificate)localObject3);
      RFC3280CertPathUtilities.ˊ(paramCertPath, i, localPKIXNameConstraintValidator);
      localObject2 = RFC3280CertPathUtilities.ˊ(paramCertPath, i, RFC3280CertPathUtilities.ˊ(paramCertPath, i, localHashSet, paramCertPathParameters, arrayOfArrayList, j));
      RFC3280CertPathUtilities.ˊ(paramCertPath, i, (PKIXPolicyNode)localObject2, i3);
      paramCertPathParameters = (CertPathParameters)localObject2;
      int i4 = i3;
      int i2 = j;
      int i1 = k;
      n = m;
      if (i5 - i != i5)
      {
        if ((localObject1 != null) && (((X509Certificate)localObject1).getVersion() == 1)) {
          throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, paramCertPath, i);
        }
        RFC3280CertPathUtilities.ˊ(paramCertPath, i);
        localObject2 = RFC3280CertPathUtilities.ˊ(paramCertPath, i, arrayOfArrayList, (PKIXPolicyNode)localObject2, k);
        RFC3280CertPathUtilities.ˋ(paramCertPath, i, localPKIXNameConstraintValidator);
        n = RFC3280CertPathUtilities.ʻ(paramCertPath, i, i3);
        k = RFC3280CertPathUtilities.ʼ(paramCertPath, i, k);
        j = RFC3280CertPathUtilities.ʽ(paramCertPath, i, j);
        i4 = RFC3280CertPathUtilities.ˊ(paramCertPath, i, n);
        i1 = RFC3280CertPathUtilities.ˋ(paramCertPath, i, k);
        i2 = RFC3280CertPathUtilities.ˎ(paramCertPath, i, j);
        RFC3280CertPathUtilities.ˋ(paramCertPath, i);
        n = RFC3280CertPathUtilities.ᐝ(paramCertPath, i, RFC3280CertPathUtilities.ˏ(paramCertPath, i, m));
        RFC3280CertPathUtilities.ˎ(paramCertPath, i);
        paramCertPathParameters = ((X509Certificate)localObject1).getCriticalExtensionOIDs();
        if (paramCertPathParameters != null)
        {
          paramCertPathParameters = new HashSet(paramCertPathParameters);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.bbc);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.baX);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.baZ);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.bbd);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.bbe);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.bbf);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.bbg);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.baY);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.bba);
          paramCertPathParameters.remove(RFC3280CertPathUtilities.bbb);
        }
        else
        {
          paramCertPathParameters = new HashSet();
        }
        RFC3280CertPathUtilities.ˊ(paramCertPath, i, paramCertPathParameters, localList2);
        localObject3 = localObject1;
        localObject4 = CertPathValidatorUtilities.ʼ((X509Certificate)localObject3);
        try
        {
          localObject5 = CertPathValidatorUtilities.ˋ(paramCertPath.getCertificates(), i);
        }
        catch (CertPathValidatorException paramCertPathParameters)
        {
          throw new CertPathValidatorException("Next working key could not be retrieved.", paramCertPathParameters, paramCertPath, i);
        }
        paramCertPathParameters = CertPathValidatorUtilities.ˎ((PublicKey)localObject5);
        paramCertPathParameters.fK();
        paramCertPathParameters.fL();
        paramCertPathParameters = (CertPathParameters)localObject2;
      }
      i -= 1;
      i3 = i4;
      j = i2;
      k = i1;
      m = n;
      localObject2 = localObject1;
    }
    int j = RFC3280CertPathUtilities.ͺ(paramCertPath, i + 1, RFC3280CertPathUtilities.ˊ(i3, (X509Certificate)localObject2));
    Object localObject1 = ((X509Certificate)localObject2).getCriticalExtensionOIDs();
    if (localObject1 != null)
    {
      localObject1 = new HashSet((Collection)localObject1);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.bbc);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.baX);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.baZ);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.bbd);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.bbe);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.bbf);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.bbg);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.baY);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.bba);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.bbb);
      ((Set)localObject1).remove(RFC3280CertPathUtilities.bbi);
    }
    else
    {
      localObject1 = new HashSet();
    }
    RFC3280CertPathUtilities.ˊ(paramCertPath, i + 1, localList2, (Set)localObject1);
    paramCertPathParameters = RFC3280CertPathUtilities.ˊ(paramCertPath, localExtendedPKIXParameters, localSet, i + 1, arrayOfArrayList, paramCertPathParameters, localHashSet);
    if ((j > 0) || (paramCertPathParameters != null)) {
      return new PKIXCertPathValidatorResult(localTrustAnchor, paramCertPathParameters, ((X509Certificate)localObject2).getPublicKey());
    }
    throw new CertPathValidatorException("Path processing failed on policy.", null, paramCertPath, i);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.PKIXCertPathValidatorSpi
 * JD-Core Version:    0.7.0.1
 */