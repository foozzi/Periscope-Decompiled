package org.spongycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertSelector;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PolicyNode;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.BasicConstraints;
import org.spongycastle.asn1.x509.CRLDistPoint;
import org.spongycastle.asn1.x509.DistributionPoint;
import org.spongycastle.asn1.x509.DistributionPointName;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.GeneralSubtree;
import org.spongycastle.asn1.x509.IssuingDistributionPoint;
import org.spongycastle.asn1.x509.NameConstraints;
import org.spongycastle.asn1.x509.PolicyInformation;
import org.spongycastle.asn1.x509.X509Extensions;
import org.spongycastle.asn1.x509.X509Name;
import org.spongycastle.jce.exception.ExtCertPathValidatorException;
import org.spongycastle.util.Arrays;
import org.spongycastle.x509.ExtendedPKIXBuilderParameters;
import org.spongycastle.x509.ExtendedPKIXParameters;
import org.spongycastle.x509.X509CertStoreSelector;

public class RFC3280CertPathUtilities
{
  private static final PKIXCRLUtil baW = new PKIXCRLUtil();
  public static final String baX = X509Extensions.aBz.getId();
  public static final String baY;
  public static final String baZ = X509Extensions.aBA.getId();
  public static final String bba;
  public static final String bbb;
  public static final String bbc = X509Extensions.aBl.getId();
  public static final String bbd = X509Extensions.aBF.getId();
  public static final String bbe = X509Extensions.aBv.getId();
  public static final String bbf;
  public static final String bbg;
  public static final String bbh = X509Extensions.aBE.getId();
  public static final String bbi;
  public static final String bbj;
  public static final String bbk = X509Extensions.aBq.getId();
  protected static final String[] bbl = { "unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise" };
  
  static
  {
    bbf = X509Extensions.aBu.getId();
    bbg = X509Extensions.aBC.getId();
    baY = X509Extensions.aBp.getId();
    bbi = X509Extensions.aBy.getId();
    bba = X509Extensions.aBn.getId();
    bbb = X509Extensions.aBx.getId();
    bbj = X509Extensions.aBB.getId();
  }
  
  protected static int ʻ(CertPath paramCertPath, int paramInt1, int paramInt2)
  {
    if ((!CertPathValidatorUtilities.ʽ((X509Certificate)paramCertPath.getCertificates().get(paramInt1))) && (paramInt2 != 0)) {
      return paramInt2 - 1;
    }
    return paramInt2;
  }
  
  protected static int ʼ(CertPath paramCertPath, int paramInt1, int paramInt2)
  {
    if ((!CertPathValidatorUtilities.ʽ((X509Certificate)paramCertPath.getCertificates().get(paramInt1))) && (paramInt2 != 0)) {
      return paramInt2 - 1;
    }
    return paramInt2;
  }
  
  protected static int ʽ(CertPath paramCertPath, int paramInt1, int paramInt2)
  {
    if ((!CertPathValidatorUtilities.ʽ((X509Certificate)paramCertPath.getCertificates().get(paramInt1))) && (paramInt2 != 0)) {
      return paramInt2 - 1;
    }
    return paramInt2;
  }
  
  protected static int ˊ(int paramInt, X509Certificate paramX509Certificate)
  {
    int i = paramInt;
    if (!CertPathValidatorUtilities.ʽ(paramX509Certificate))
    {
      i = paramInt;
      if (paramInt != 0) {
        i = paramInt - 1;
      }
    }
    return i;
  }
  
  protected static int ˊ(CertPath paramCertPath, int paramInt1, int paramInt2)
  {
    Object localObject = (X509Certificate)paramCertPath.getCertificates().get(paramInt1);
    try
    {
      localObject = DERSequence.ﹾ(CertPathValidatorUtilities.ˊ((X509Extension)localObject, bbg));
    }
    catch (Exception localException)
    {
      throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", localException, paramCertPath, paramInt1);
    }
    if (localException != null)
    {
      Enumeration localEnumeration = localException.eT();
      while (localEnumeration.hasMoreElements()) {
        try
        {
          ASN1TaggedObject localASN1TaggedObject = ASN1TaggedObject.ʵ(localEnumeration.nextElement());
          if (localASN1TaggedObject.eW() == 0)
          {
            int i = ASN1Integer.ˋ(localASN1TaggedObject, false).eA().intValue();
            if (i < paramInt2) {
              return i;
            }
            return paramInt2;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", localIllegalArgumentException, paramCertPath, paramInt1);
        }
      }
    }
    return paramInt2;
  }
  
  protected static PublicKey ˊ(X509CRL paramX509CRL, Set paramSet)
  {
    Object localObject = null;
    Iterator localIterator = paramSet.iterator();
    paramSet = localObject;
    while (localIterator.hasNext())
    {
      paramSet = (PublicKey)localIterator.next();
      try
      {
        paramX509CRL.verify(paramSet);
        return paramSet;
      }
      catch (Exception paramSet) {}
    }
    throw new AnnotatedException("Cannot verify CRL.", paramSet);
  }
  
  protected static X509CRL ˊ(Set paramSet, PublicKey paramPublicKey)
  {
    Object localObject = null;
    Iterator localIterator = paramSet.iterator();
    paramSet = localObject;
    while (localIterator.hasNext())
    {
      paramSet = (X509CRL)localIterator.next();
      try
      {
        paramSet.verify(paramPublicKey);
        return paramSet;
      }
      catch (Exception paramSet) {}
    }
    if (paramSet != null) {
      throw new AnnotatedException("Cannot verify delta CRL.", paramSet);
    }
    return null;
  }
  
  protected static Set ˊ(X509CRL paramX509CRL, Object paramObject, X509Certificate paramX509Certificate, PublicKey paramPublicKey, ExtendedPKIXParameters paramExtendedPKIXParameters, List paramList)
  {
    paramObject = new X509CertStoreSelector();
    try
    {
      paramObject.setSubject(CertPathValidatorUtilities.ˋ(paramX509CRL).getEncoded());
    }
    catch (IOException paramX509CRL)
    {
      throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate for CRL could not be set.", paramX509CRL);
    }
    try
    {
      paramX509CRL = CertPathValidatorUtilities.ˊ(paramObject, paramExtendedPKIXParameters.tl());
      paramX509CRL.addAll(CertPathValidatorUtilities.ˊ(paramObject, paramExtendedPKIXParameters.tk()));
      paramX509CRL.addAll(CertPathValidatorUtilities.ˊ(paramObject, paramExtendedPKIXParameters.getCertStores()));
    }
    catch (AnnotatedException paramX509CRL)
    {
      throw new AnnotatedException("Issuer certificate for CRL cannot be searched.", paramX509CRL);
    }
    paramX509CRL.add(paramX509Certificate);
    paramX509CRL = paramX509CRL.iterator();
    paramObject = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    while (paramX509CRL.hasNext())
    {
      X509Certificate localX509Certificate = (X509Certificate)paramX509CRL.next();
      if (localX509Certificate.equals(paramX509Certificate))
      {
        paramObject.add(localX509Certificate);
        localArrayList.add(paramPublicKey);
      }
      else
      {
        try
        {
          Object localObject1 = CertPathBuilder.getInstance("PKIX", "SC");
          Object localObject2 = new X509CertStoreSelector();
          ((X509CertStoreSelector)localObject2).setCertificate(localX509Certificate);
          ExtendedPKIXParameters localExtendedPKIXParameters = (ExtendedPKIXParameters)paramExtendedPKIXParameters.clone();
          localExtendedPKIXParameters.setTargetCertConstraints((CertSelector)localObject2);
          localObject2 = (ExtendedPKIXBuilderParameters)ExtendedPKIXBuilderParameters.ˎ(localExtendedPKIXParameters);
          if (paramList.contains(localX509Certificate)) {
            ((ExtendedPKIXBuilderParameters)localObject2).setRevocationEnabled(false);
          } else {
            ((ExtendedPKIXBuilderParameters)localObject2).setRevocationEnabled(true);
          }
          localObject1 = ((CertPathBuilder)localObject1).build((CertPathParameters)localObject2).getCertPath().getCertificates();
          paramObject.add(localX509Certificate);
          localArrayList.add(CertPathValidatorUtilities.ˋ((List)localObject1, 0));
        }
        catch (CertPathBuilderException paramX509CRL)
        {
          throw new AnnotatedException("Internal error.", paramX509CRL);
        }
        catch (CertPathValidatorException paramX509CRL)
        {
          throw new AnnotatedException("Public key of issuer certificate of CRL could not be retrieved.", paramX509CRL);
        }
        catch (Exception paramX509CRL)
        {
          throw new RuntimeException(paramX509CRL.getMessage());
        }
      }
    }
    paramX509Certificate = new HashSet();
    paramX509CRL = null;
    int i = 0;
    while (i < paramObject.size())
    {
      paramPublicKey = ((X509Certificate)paramObject.get(i)).getKeyUsage();
      if ((paramPublicKey != null) && ((paramPublicKey.length < 7) || (paramPublicKey[6] == 0))) {
        paramX509CRL = new AnnotatedException("Issuer certificate key usage extension does not permit CRL signing.");
      } else {
        paramX509Certificate.add(localArrayList.get(i));
      }
      i += 1;
    }
    if ((paramX509Certificate.isEmpty()) && (paramX509CRL == null)) {
      throw new AnnotatedException("Cannot find a valid issuer certificate.");
    }
    if ((paramX509Certificate.isEmpty()) && (paramX509CRL != null)) {
      throw paramX509CRL;
    }
    return paramX509Certificate;
  }
  
  protected static PKIXPolicyNode ˊ(CertPath paramCertPath, int paramInt1, Set paramSet, PKIXPolicyNode paramPKIXPolicyNode, List[] paramArrayOfList, int paramInt2)
  {
    Object localObject1 = paramCertPath.getCertificates();
    X509Certificate localX509Certificate = (X509Certificate)((List)localObject1).get(paramInt1);
    int j = ((List)localObject1).size();
    int i = j - paramInt1;
    try
    {
      localObject1 = DERSequence.ﹾ(CertPathValidatorUtilities.ˊ(localX509Certificate, baX));
    }
    catch (AnnotatedException paramSet)
    {
      throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", paramSet, paramCertPath, paramInt1);
    }
    if ((localObject1 != null) && (paramPKIXPolicyNode != null))
    {
      Object localObject3 = ((ASN1Sequence)localObject1).eT();
      Object localObject2 = new HashSet();
      Object localObject4;
      while (((Enumeration)localObject3).hasMoreElements())
      {
        Object localObject5 = PolicyInformation.ז(((Enumeration)localObject3).nextElement());
        localObject4 = ((PolicyInformation)localObject5).hQ();
        ((Set)localObject2).add(((ASN1ObjectIdentifier)localObject4).getId());
        if (!"2.5.29.32.0".equals(((ASN1ObjectIdentifier)localObject4).getId()))
        {
          try
          {
            localObject5 = CertPathValidatorUtilities.ˏ(((PolicyInformation)localObject5).hR());
          }
          catch (CertPathValidatorException paramSet)
          {
            throw new ExtCertPathValidatorException("Policy qualifier info set could not be build.", paramSet, paramCertPath, paramInt1);
          }
          if (!CertPathValidatorUtilities.ˊ(i, paramArrayOfList, (ASN1ObjectIdentifier)localObject4, (Set)localObject5)) {
            CertPathValidatorUtilities.ˋ(i, paramArrayOfList, (ASN1ObjectIdentifier)localObject4, (Set)localObject5);
          }
        }
      }
      if ((paramSet.isEmpty()) || (paramSet.contains("2.5.29.32.0")))
      {
        paramSet.clear();
        paramSet.addAll((Collection)localObject2);
      }
      else
      {
        paramCertPath = paramSet.iterator();
        localObject3 = new HashSet();
        while (paramCertPath.hasNext())
        {
          localObject4 = paramCertPath.next();
          if (((Set)localObject2).contains(localObject4)) {
            ((Set)localObject3).add(localObject4);
          }
        }
        paramSet.clear();
        paramSet.addAll((Collection)localObject3);
      }
      if ((paramInt2 > 0) || ((i < j) && (CertPathValidatorUtilities.ʽ(localX509Certificate))))
      {
        paramCertPath = ((ASN1Sequence)localObject1).eT();
        while (paramCertPath.hasMoreElements())
        {
          paramSet = PolicyInformation.ז(paramCertPath.nextElement());
          if ("2.5.29.32.0".equals(paramSet.hQ().getId()))
          {
            paramSet = CertPathValidatorUtilities.ˏ(paramSet.hR());
            localObject1 = paramArrayOfList[(i - 1)];
            paramInt1 = 0;
            while (paramInt1 < ((List)localObject1).size())
            {
              localObject2 = (PKIXPolicyNode)((List)localObject1).get(paramInt1);
              localObject3 = ((PKIXPolicyNode)localObject2).getExpectedPolicies().iterator();
              while (((Iterator)localObject3).hasNext())
              {
                paramCertPath = ((Iterator)localObject3).next();
                if ((paramCertPath instanceof String))
                {
                  paramCertPath = (String)paramCertPath;
                }
                else
                {
                  if (!(paramCertPath instanceof ASN1ObjectIdentifier)) {
                    continue;
                  }
                  paramCertPath = ((ASN1ObjectIdentifier)paramCertPath).getId();
                }
                paramInt2 = 0;
                localObject4 = ((PKIXPolicyNode)localObject2).getChildren();
                while (((Iterator)localObject4).hasNext()) {
                  if (paramCertPath.equals(((PKIXPolicyNode)((Iterator)localObject4).next()).getValidPolicy())) {
                    paramInt2 = 1;
                  }
                }
                if (paramInt2 == 0)
                {
                  localObject4 = new HashSet();
                  ((Set)localObject4).add(paramCertPath);
                  paramCertPath = new PKIXPolicyNode(new ArrayList(), i, (Set)localObject4, (PolicyNode)localObject2, paramSet, paramCertPath, false);
                  ((PKIXPolicyNode)localObject2).ˊ(paramCertPath);
                  paramArrayOfList[i].add(paramCertPath);
                }
              }
              paramInt1 += 1;
            }
            break;
          }
        }
      }
      paramCertPath = paramPKIXPolicyNode;
      paramInt1 = i - 1;
      while (paramInt1 >= 0)
      {
        paramPKIXPolicyNode = paramArrayOfList[paramInt1];
        paramInt2 = 0;
        for (;;)
        {
          paramSet = paramCertPath;
          if (paramInt2 >= paramPKIXPolicyNode.size()) {
            break;
          }
          localObject1 = (PKIXPolicyNode)paramPKIXPolicyNode.get(paramInt2);
          paramSet = paramCertPath;
          if (!((PKIXPolicyNode)localObject1).hasChildren())
          {
            paramCertPath = CertPathValidatorUtilities.ˊ(paramCertPath, paramArrayOfList, (PKIXPolicyNode)localObject1);
            paramSet = paramCertPath;
            if (paramCertPath == null)
            {
              paramSet = paramCertPath;
              break;
            }
          }
          paramInt2 += 1;
          paramCertPath = paramSet;
        }
        paramInt1 -= 1;
        paramCertPath = paramSet;
      }
      paramSet = localX509Certificate.getCriticalExtensionOIDs();
      if (paramSet != null)
      {
        boolean bool = paramSet.contains(baX);
        paramSet = paramArrayOfList[i];
        paramInt1 = 0;
        while (paramInt1 < paramSet.size())
        {
          ((PKIXPolicyNode)paramSet.get(paramInt1)).ʺ(bool);
          paramInt1 += 1;
        }
      }
      return paramCertPath;
    }
    return null;
  }
  
  protected static PKIXPolicyNode ˊ(CertPath paramCertPath, int paramInt, PKIXPolicyNode paramPKIXPolicyNode)
  {
    Object localObject = (X509Certificate)paramCertPath.getCertificates().get(paramInt);
    try
    {
      localObject = DERSequence.ﹾ(CertPathValidatorUtilities.ˊ((X509Extension)localObject, baX));
    }
    catch (AnnotatedException paramPKIXPolicyNode)
    {
      throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", paramPKIXPolicyNode, paramCertPath, paramInt);
    }
    if (localObject == null) {
      paramPKIXPolicyNode = null;
    }
    return paramPKIXPolicyNode;
  }
  
  protected static PKIXPolicyNode ˊ(CertPath paramCertPath, int paramInt1, List[] paramArrayOfList, PKIXPolicyNode paramPKIXPolicyNode, int paramInt2)
  {
    Object localObject1 = paramCertPath.getCertificates();
    X509Certificate localX509Certificate = (X509Certificate)((List)localObject1).get(paramInt1);
    int k = ((List)localObject1).size() - paramInt1;
    Object localObject2;
    try
    {
      localObject2 = DERSequence.ﹾ(CertPathValidatorUtilities.ˊ(localX509Certificate, baZ));
    }
    catch (AnnotatedException paramArrayOfList)
    {
      throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", paramArrayOfList, paramCertPath, paramInt1);
    }
    localObject1 = paramPKIXPolicyNode;
    if (localObject2 != null)
    {
      HashMap localHashMap = new HashMap();
      localObject1 = new HashSet();
      int i = 0;
      Object localObject4;
      Object localObject5;
      while (i < ((ASN1Sequence)localObject2).size())
      {
        localObject4 = (ASN1Sequence)((ASN1Sequence)localObject2).ϲ(i);
        localObject3 = ((ASN1ObjectIdentifier)((ASN1Sequence)localObject4).ϲ(0)).getId();
        localObject4 = ((ASN1ObjectIdentifier)((ASN1Sequence)localObject4).ϲ(1)).getId();
        if (!localHashMap.containsKey(localObject3))
        {
          localObject5 = new HashSet();
          ((Set)localObject5).add(localObject4);
          localHashMap.put(localObject3, localObject5);
          ((Set)localObject1).add(localObject3);
        }
        else
        {
          ((Set)localHashMap.get(localObject3)).add(localObject4);
        }
        i += 1;
      }
      Object localObject3 = ((Set)localObject1).iterator();
      for (;;)
      {
        localObject1 = paramPKIXPolicyNode;
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localObject4 = (String)((Iterator)localObject3).next();
        int j;
        Object localObject6;
        if (paramInt2 > 0)
        {
          j = 0;
          localObject1 = paramArrayOfList[k].iterator();
          for (;;)
          {
            i = j;
            if (!((Iterator)localObject1).hasNext()) {
              break;
            }
            localObject2 = (PKIXPolicyNode)((Iterator)localObject1).next();
            if (((PKIXPolicyNode)localObject2).getValidPolicy().equals(localObject4))
            {
              i = 1;
              ((PKIXPolicyNode)localObject2).bbF = ((Set)localHashMap.get(localObject4));
              break;
            }
          }
          if (i == 0)
          {
            localObject1 = paramArrayOfList[k].iterator();
            while (((Iterator)localObject1).hasNext())
            {
              localObject5 = (PKIXPolicyNode)((Iterator)localObject1).next();
              if ("2.5.29.32.0".equals(((PKIXPolicyNode)localObject5).getValidPolicy()))
              {
                localObject2 = null;
                try
                {
                  localObject1 = (ASN1Sequence)CertPathValidatorUtilities.ˊ(localX509Certificate, baX);
                }
                catch (AnnotatedException paramArrayOfList)
                {
                  throw new ExtCertPathValidatorException("Certificate policies extension could not be decoded.", paramArrayOfList, paramCertPath, paramInt1);
                }
                localObject6 = ((ASN1Sequence)localObject1).eT();
                for (;;)
                {
                  localObject1 = localObject2;
                  if (!((Enumeration)localObject6).hasMoreElements()) {
                    break;
                  }
                  try
                  {
                    localObject1 = PolicyInformation.ז(((Enumeration)localObject6).nextElement());
                  }
                  catch (Exception paramArrayOfList)
                  {
                    throw new CertPathValidatorException("Policy information could not be decoded.", paramArrayOfList, paramCertPath, paramInt1);
                  }
                  if ("2.5.29.32.0".equals(((PolicyInformation)localObject1).hQ().getId())) {
                    try
                    {
                      localObject1 = CertPathValidatorUtilities.ˏ(((PolicyInformation)localObject1).hR());
                    }
                    catch (CertPathValidatorException paramArrayOfList)
                    {
                      throw new ExtCertPathValidatorException("Policy qualifier info set could not be decoded.", paramArrayOfList, paramCertPath, paramInt1);
                    }
                  }
                }
                boolean bool = false;
                if (localX509Certificate.getCriticalExtensionOIDs() != null) {
                  bool = localX509Certificate.getCriticalExtensionOIDs().contains(baX);
                }
                localObject2 = (PKIXPolicyNode)((PKIXPolicyNode)localObject5).getParent();
                if (!"2.5.29.32.0".equals(((PKIXPolicyNode)localObject2).getValidPolicy())) {
                  break;
                }
                localObject1 = new PKIXPolicyNode(new ArrayList(), k, (Set)localHashMap.get(localObject4), (PolicyNode)localObject2, (Set)localObject1, (String)localObject4, bool);
                ((PKIXPolicyNode)localObject2).ˊ((PKIXPolicyNode)localObject1);
                paramArrayOfList[k].add(localObject1);
                break;
              }
            }
          }
          localObject1 = paramPKIXPolicyNode;
        }
        else
        {
          localObject1 = paramPKIXPolicyNode;
          if (paramInt2 <= 0)
          {
            localObject2 = paramArrayOfList[k].iterator();
            for (;;)
            {
              localObject1 = paramPKIXPolicyNode;
              if (!((Iterator)localObject2).hasNext()) {
                break;
              }
              localObject5 = (PKIXPolicyNode)((Iterator)localObject2).next();
              localObject1 = paramPKIXPolicyNode;
              if (((PKIXPolicyNode)localObject5).getValidPolicy().equals(localObject4))
              {
                ((PKIXPolicyNode)((PKIXPolicyNode)localObject5).getParent()).ˋ((PKIXPolicyNode)localObject5);
                ((Iterator)localObject2).remove();
                i = k - 1;
                for (;;)
                {
                  localObject1 = paramPKIXPolicyNode;
                  if (i < 0) {
                    break;
                  }
                  localObject5 = paramArrayOfList[i];
                  j = 0;
                  for (;;)
                  {
                    localObject1 = paramPKIXPolicyNode;
                    if (j >= ((List)localObject5).size()) {
                      break;
                    }
                    localObject6 = (PKIXPolicyNode)((List)localObject5).get(j);
                    localObject1 = paramPKIXPolicyNode;
                    if (!((PKIXPolicyNode)localObject6).hasChildren())
                    {
                      paramPKIXPolicyNode = CertPathValidatorUtilities.ˊ(paramPKIXPolicyNode, paramArrayOfList, (PKIXPolicyNode)localObject6);
                      localObject1 = paramPKIXPolicyNode;
                      if (paramPKIXPolicyNode == null)
                      {
                        localObject1 = paramPKIXPolicyNode;
                        break;
                      }
                    }
                    j += 1;
                    paramPKIXPolicyNode = (PKIXPolicyNode)localObject1;
                  }
                  i -= 1;
                  paramPKIXPolicyNode = (PKIXPolicyNode)localObject1;
                }
              }
              paramPKIXPolicyNode = (PKIXPolicyNode)localObject1;
            }
          }
        }
        paramPKIXPolicyNode = (PKIXPolicyNode)localObject1;
      }
    }
    return localObject1;
  }
  
  protected static PKIXPolicyNode ˊ(CertPath paramCertPath, ExtendedPKIXParameters paramExtendedPKIXParameters, Set paramSet1, int paramInt, List[] paramArrayOfList, PKIXPolicyNode paramPKIXPolicyNode, Set paramSet2)
  {
    int j = paramCertPath.getCertificates().size();
    if (paramPKIXPolicyNode == null)
    {
      if (paramExtendedPKIXParameters.isExplicitPolicyRequired()) {
        throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, paramCertPath, paramInt);
      }
      return null;
    }
    int i;
    if (CertPathValidatorUtilities.ˋ(paramSet1))
    {
      paramSet1 = paramPKIXPolicyNode;
      if (paramExtendedPKIXParameters.isExplicitPolicyRequired())
      {
        if (paramSet2.isEmpty()) {
          throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, paramCertPath, paramInt);
        }
        paramCertPath = new HashSet();
        paramInt = 0;
        while (paramInt < paramArrayOfList.length)
        {
          paramExtendedPKIXParameters = paramArrayOfList[paramInt];
          i = 0;
          while (i < paramExtendedPKIXParameters.size())
          {
            paramSet1 = (PKIXPolicyNode)paramExtendedPKIXParameters.get(i);
            if ("2.5.29.32.0".equals(paramSet1.getValidPolicy()))
            {
              paramSet1 = paramSet1.getChildren();
              while (paramSet1.hasNext()) {
                paramCertPath.add(paramSet1.next());
              }
            }
            i += 1;
          }
          paramInt += 1;
        }
        paramCertPath = paramCertPath.iterator();
        while (paramCertPath.hasNext()) {
          paramSet2.contains(((PKIXPolicyNode)paramCertPath.next()).getValidPolicy());
        }
        paramSet1 = paramPKIXPolicyNode;
        if (paramPKIXPolicyNode != null)
        {
          paramInt = j - 1;
          for (;;)
          {
            paramSet1 = paramPKIXPolicyNode;
            if (paramInt < 0) {
              break;
            }
            paramExtendedPKIXParameters = paramArrayOfList[paramInt];
            i = 0;
            while (i < paramExtendedPKIXParameters.size())
            {
              paramSet1 = (PKIXPolicyNode)paramExtendedPKIXParameters.get(i);
              paramCertPath = paramPKIXPolicyNode;
              if (!paramSet1.hasChildren()) {
                paramCertPath = CertPathValidatorUtilities.ˊ(paramPKIXPolicyNode, paramArrayOfList, paramSet1);
              }
              i += 1;
              paramPKIXPolicyNode = paramCertPath;
            }
            paramInt -= 1;
          }
        }
      }
      return paramSet1;
    }
    paramCertPath = new HashSet();
    paramInt = 0;
    while (paramInt < paramArrayOfList.length)
    {
      paramExtendedPKIXParameters = paramArrayOfList[paramInt];
      i = 0;
      while (i < paramExtendedPKIXParameters.size())
      {
        paramSet2 = (PKIXPolicyNode)paramExtendedPKIXParameters.get(i);
        if ("2.5.29.32.0".equals(paramSet2.getValidPolicy()))
        {
          paramSet2 = paramSet2.getChildren();
          while (paramSet2.hasNext())
          {
            PKIXPolicyNode localPKIXPolicyNode = (PKIXPolicyNode)paramSet2.next();
            if (!"2.5.29.32.0".equals(localPKIXPolicyNode.getValidPolicy())) {
              paramCertPath.add(localPKIXPolicyNode);
            }
          }
        }
        i += 1;
      }
      paramInt += 1;
    }
    paramExtendedPKIXParameters = paramCertPath.iterator();
    while (paramExtendedPKIXParameters.hasNext())
    {
      paramSet2 = (PKIXPolicyNode)paramExtendedPKIXParameters.next();
      paramCertPath = paramPKIXPolicyNode;
      if (!paramSet1.contains(paramSet2.getValidPolicy())) {
        paramCertPath = CertPathValidatorUtilities.ˊ(paramPKIXPolicyNode, paramArrayOfList, paramSet2);
      }
      paramPKIXPolicyNode = paramCertPath;
    }
    paramCertPath = paramPKIXPolicyNode;
    if (paramPKIXPolicyNode != null)
    {
      paramInt = j - 1;
      for (;;)
      {
        paramCertPath = paramPKIXPolicyNode;
        if (paramInt < 0) {
          break;
        }
        paramExtendedPKIXParameters = paramArrayOfList[paramInt];
        i = 0;
        while (i < paramExtendedPKIXParameters.size())
        {
          paramSet1 = (PKIXPolicyNode)paramExtendedPKIXParameters.get(i);
          paramCertPath = paramPKIXPolicyNode;
          if (!paramSet1.hasChildren()) {
            paramCertPath = CertPathValidatorUtilities.ˊ(paramPKIXPolicyNode, paramArrayOfList, paramSet1);
          }
          i += 1;
          paramPKIXPolicyNode = paramCertPath;
        }
        paramInt -= 1;
      }
    }
    return paramCertPath;
  }
  
  protected static ReasonsMask ˊ(X509CRL paramX509CRL, DistributionPoint paramDistributionPoint)
  {
    IssuingDistributionPoint localIssuingDistributionPoint;
    try
    {
      localIssuingDistributionPoint = IssuingDistributionPoint.ɹ(CertPathValidatorUtilities.ˊ(paramX509CRL, bbe));
    }
    catch (Exception paramX509CRL)
    {
      throw new AnnotatedException("Issuing distribution point extension could not be decoded.", paramX509CRL);
    }
    if ((localIssuingDistributionPoint != null) && (localIssuingDistributionPoint.hJ() != null) && (paramDistributionPoint.hu() != null)) {
      return new ReasonsMask(paramDistributionPoint.hu()).ˋ(new ReasonsMask(localIssuingDistributionPoint.hJ()));
    }
    if (((localIssuingDistributionPoint == null) || (localIssuingDistributionPoint.hJ() == null)) && (paramDistributionPoint.hu() == null)) {
      return ReasonsMask.bbN;
    }
    if (paramDistributionPoint.hu() == null) {
      paramX509CRL = ReasonsMask.bbN;
    } else {
      paramX509CRL = new ReasonsMask(paramDistributionPoint.hu());
    }
    if (localIssuingDistributionPoint == null) {
      paramDistributionPoint = ReasonsMask.bbN;
    } else {
      paramDistributionPoint = new ReasonsMask(localIssuingDistributionPoint.hJ());
    }
    return paramX509CRL.ˋ(paramDistributionPoint);
  }
  
  protected static void ˊ(CertPath paramCertPath, int paramInt)
  {
    Object localObject1 = (X509Certificate)paramCertPath.getCertificates().get(paramInt);
    try
    {
      localObject1 = DERSequence.ﹾ(CertPathValidatorUtilities.ˊ((X509Extension)localObject1, baZ));
    }
    catch (AnnotatedException localAnnotatedException)
    {
      throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", localAnnotatedException, paramCertPath, paramInt);
    }
    if (localAnnotatedException != null)
    {
      int i = 0;
      while (i < localAnnotatedException.size())
      {
        Object localObject2;
        ASN1ObjectIdentifier localASN1ObjectIdentifier;
        try
        {
          localObject2 = DERSequence.ﹾ(localAnnotatedException.ϲ(i));
          localASN1ObjectIdentifier = ASN1ObjectIdentifier.ﹴ(((ASN1Sequence)localObject2).ϲ(0));
          localObject2 = ASN1ObjectIdentifier.ﹴ(((ASN1Sequence)localObject2).ϲ(1));
        }
        catch (Exception localException)
        {
          throw new ExtCertPathValidatorException("Policy mappings extension contents could not be decoded.", localException, paramCertPath, paramInt);
        }
        if ("2.5.29.32.0".equals(localASN1ObjectIdentifier.getId())) {
          throw new CertPathValidatorException("IssuerDomainPolicy is anyPolicy", null, paramCertPath, paramInt);
        }
        if ("2.5.29.32.0".equals(((ASN1ObjectIdentifier)localObject2).getId())) {
          throw new CertPathValidatorException("SubjectDomainPolicy is anyPolicy,", null, paramCertPath, paramInt);
        }
        i += 1;
      }
    }
  }
  
  protected static void ˊ(CertPath paramCertPath, int paramInt, List paramList, Set paramSet)
  {
    X509Certificate localX509Certificate = (X509Certificate)paramCertPath.getCertificates().get(paramInt);
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      try
      {
        ((PKIXCertPathChecker)paramList.next()).check(localX509Certificate, paramSet);
      }
      catch (CertPathValidatorException paramList)
      {
        throw new ExtCertPathValidatorException("Additional certificate path checker failed.", paramList, paramCertPath, paramInt);
      }
    }
    if (!paramSet.isEmpty()) {
      throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + paramSet, null, paramCertPath, paramInt);
    }
  }
  
  protected static void ˊ(CertPath paramCertPath, int paramInt, Set paramSet, List paramList)
  {
    X509Certificate localX509Certificate = (X509Certificate)paramCertPath.getCertificates().get(paramInt);
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      try
      {
        ((PKIXCertPathChecker)paramList.next()).check(localX509Certificate, paramSet);
      }
      catch (CertPathValidatorException paramSet)
      {
        throw new CertPathValidatorException(paramSet.getMessage(), paramSet.getCause(), paramCertPath, paramInt);
      }
    }
    if (!paramSet.isEmpty()) {
      throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + paramSet, null, paramCertPath, paramInt);
    }
  }
  
  protected static void ˊ(CertPath paramCertPath, int paramInt, PKIXNameConstraintValidator paramPKIXNameConstraintValidator)
  {
    Object localObject2 = paramCertPath.getCertificates();
    Object localObject1 = (X509Certificate)((List)localObject2).get(paramInt);
    int i = ((List)localObject2).size();
    if ((!CertPathValidatorUtilities.ʽ((X509Certificate)localObject1)) || (i - paramInt >= i))
    {
      localObject2 = new ASN1InputStream(CertPathValidatorUtilities.ʼ((X509Certificate)localObject1).getEncoded());
      try
      {
        localObject2 = DERSequence.ﹾ(((ASN1InputStream)localObject2).eH());
      }
      catch (Exception paramPKIXNameConstraintValidator)
      {
        throw new CertPathValidatorException("Exception extracting subject name when checking subtrees.", paramPKIXNameConstraintValidator, paramCertPath, paramInt);
      }
      try
      {
        paramPKIXNameConstraintValidator.ᐝ((ASN1Sequence)localObject2);
        paramPKIXNameConstraintValidator.ʻ((ASN1Sequence)localObject2);
      }
      catch (PKIXNameConstraintValidatorException paramPKIXNameConstraintValidator)
      {
        throw new CertPathValidatorException("Subtree check for certificate subject failed.", paramPKIXNameConstraintValidator, paramCertPath, paramInt);
      }
      try
      {
        localObject1 = GeneralNames.＿(CertPathValidatorUtilities.ˊ((X509Extension)localObject1, bba));
      }
      catch (Exception paramPKIXNameConstraintValidator)
      {
        throw new CertPathValidatorException("Subject alternative name extension could not be decoded.", paramPKIXNameConstraintValidator, paramCertPath, paramInt);
      }
      localObject2 = new X509Name((ASN1Sequence)localObject2).ʽ(X509Name.awR).elements();
      while (((Enumeration)localObject2).hasMoreElements())
      {
        GeneralName localGeneralName = new GeneralName(1, (String)((Enumeration)localObject2).nextElement());
        try
        {
          paramPKIXNameConstraintValidator.ˊ(localGeneralName);
          paramPKIXNameConstraintValidator.ˋ(localGeneralName);
        }
        catch (PKIXNameConstraintValidatorException paramPKIXNameConstraintValidator)
        {
          throw new CertPathValidatorException("Subtree check for certificate subject alternative email failed.", paramPKIXNameConstraintValidator, paramCertPath, paramInt);
        }
      }
      if (localObject1 != null)
      {
        try
        {
          localObject1 = ((GeneralNames)localObject1).hB();
        }
        catch (Exception paramPKIXNameConstraintValidator)
        {
          throw new CertPathValidatorException("Subject alternative name contents could not be decoded.", paramPKIXNameConstraintValidator, paramCertPath, paramInt);
        }
        i = 0;
        while (i < localObject1.length)
        {
          try
          {
            paramPKIXNameConstraintValidator.ˊ(localObject1[i]);
            paramPKIXNameConstraintValidator.ˋ(localObject1[i]);
          }
          catch (PKIXNameConstraintValidatorException paramPKIXNameConstraintValidator)
          {
            throw new CertPathValidatorException("Subtree check for certificate subject alternative name failed.", paramPKIXNameConstraintValidator, paramCertPath, paramInt);
          }
          i += 1;
        }
      }
    }
  }
  
  protected static void ˊ(CertPath paramCertPath, int paramInt1, PKIXPolicyNode paramPKIXPolicyNode, int paramInt2)
  {
    if ((paramInt2 <= 0) && (paramPKIXPolicyNode == null)) {
      throw new ExtCertPathValidatorException("No valid policy tree found when one expected.", null, paramCertPath, paramInt1);
    }
  }
  
  protected static void ˊ(CertPath paramCertPath, ExtendedPKIXParameters paramExtendedPKIXParameters, int paramInt, PublicKey paramPublicKey, boolean paramBoolean, X500Principal paramX500Principal, X509Certificate paramX509Certificate)
  {
    List localList = paramCertPath.getCertificates();
    X509Certificate localX509Certificate = (X509Certificate)localList.get(paramInt);
    if (!paramBoolean) {
      try
      {
        CertPathValidatorUtilities.ˊ(localX509Certificate, paramPublicKey, paramExtendedPKIXParameters.getSigProvider());
      }
      catch (GeneralSecurityException paramExtendedPKIXParameters)
      {
        throw new ExtCertPathValidatorException("Could not validate certificate signature.", paramExtendedPKIXParameters, paramCertPath, paramInt);
      }
    }
    try
    {
      localX509Certificate.checkValidity(CertPathValidatorUtilities.ˊ(paramExtendedPKIXParameters, paramCertPath, paramInt));
    }
    catch (CertificateExpiredException paramExtendedPKIXParameters)
    {
      throw new ExtCertPathValidatorException("Could not validate certificate: " + paramExtendedPKIXParameters.getMessage(), paramExtendedPKIXParameters, paramCertPath, paramInt);
    }
    catch (CertificateNotYetValidException paramExtendedPKIXParameters)
    {
      throw new ExtCertPathValidatorException("Could not validate certificate: " + paramExtendedPKIXParameters.getMessage(), paramExtendedPKIXParameters, paramCertPath, paramInt);
    }
    catch (AnnotatedException paramExtendedPKIXParameters)
    {
      throw new ExtCertPathValidatorException("Could not validate time of certificate.", paramExtendedPKIXParameters, paramCertPath, paramInt);
    }
    if (paramExtendedPKIXParameters.isRevocationEnabled()) {
      try
      {
        ˊ(paramExtendedPKIXParameters, localX509Certificate, CertPathValidatorUtilities.ˊ(paramExtendedPKIXParameters, paramCertPath, paramInt), paramX509Certificate, paramPublicKey, localList);
      }
      catch (AnnotatedException paramPublicKey)
      {
        paramExtendedPKIXParameters = paramPublicKey;
        if (paramPublicKey.getCause() != null) {
          paramExtendedPKIXParameters = paramPublicKey.getCause();
        }
        throw new ExtCertPathValidatorException(paramPublicKey.getMessage(), paramExtendedPKIXParameters, paramCertPath, paramInt);
      }
    }
    if (!CertPathValidatorUtilities.ﻨ(localX509Certificate).equals(paramX500Principal)) {
      throw new ExtCertPathValidatorException("IssuerName(" + CertPathValidatorUtilities.ﻨ(localX509Certificate) + ") does not match SubjectName(" + paramX500Principal + ") of signing certificate.", null, paramCertPath, paramInt);
    }
  }
  
  protected static void ˊ(X509CRL paramX509CRL1, X509CRL paramX509CRL2, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    if (paramX509CRL1 == null) {
      return;
    }
    IssuingDistributionPoint localIssuingDistributionPoint;
    try
    {
      localIssuingDistributionPoint = IssuingDistributionPoint.ɹ(CertPathValidatorUtilities.ˊ(paramX509CRL2, bbe));
    }
    catch (Exception paramX509CRL1)
    {
      throw new AnnotatedException("Issuing distribution point extension could not be decoded.", paramX509CRL1);
    }
    if (paramExtendedPKIXParameters.ti())
    {
      if (!paramX509CRL1.getIssuerX500Principal().equals(paramX509CRL2.getIssuerX500Principal())) {
        throw new AnnotatedException("Complete CRL issuer does not match delta CRL issuer.");
      }
      try
      {
        paramExtendedPKIXParameters = IssuingDistributionPoint.ɹ(CertPathValidatorUtilities.ˊ(paramX509CRL1, bbe));
      }
      catch (Exception paramX509CRL1)
      {
        throw new AnnotatedException("Issuing distribution point extension from delta CRL could not be decoded.", paramX509CRL1);
      }
      int i = 0;
      if (localIssuingDistributionPoint == null)
      {
        if (paramExtendedPKIXParameters == null) {
          i = 1;
        }
      }
      else if (localIssuingDistributionPoint.equals(paramExtendedPKIXParameters)) {
        i = 1;
      }
      if (i == 0) {
        throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
      }
      try
      {
        paramX509CRL2 = CertPathValidatorUtilities.ˊ(paramX509CRL2, bbj);
      }
      catch (AnnotatedException paramX509CRL1)
      {
        throw new AnnotatedException("Authority key identifier extension could not be extracted from complete CRL.", paramX509CRL1);
      }
      try
      {
        paramX509CRL1 = CertPathValidatorUtilities.ˊ(paramX509CRL1, bbj);
      }
      catch (AnnotatedException paramX509CRL1)
      {
        throw new AnnotatedException("Authority key identifier extension could not be extracted from delta CRL.", paramX509CRL1);
      }
      if (paramX509CRL2 == null) {
        throw new AnnotatedException("CRL authority key identifier is null.");
      }
      if (paramX509CRL1 == null) {
        throw new AnnotatedException("Delta CRL authority key identifier is null.");
      }
      if (!paramX509CRL2.equals(paramX509CRL1)) {
        throw new AnnotatedException("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
      }
    }
  }
  
  protected static void ˊ(Date paramDate, X509CRL paramX509CRL, Object paramObject, CertStatus paramCertStatus, ExtendedPKIXParameters paramExtendedPKIXParameters)
  {
    if ((paramExtendedPKIXParameters.ti()) && (paramX509CRL != null)) {
      CertPathValidatorUtilities.ˊ(paramDate, paramX509CRL, paramObject, paramCertStatus);
    }
  }
  
  protected static void ˊ(DistributionPoint paramDistributionPoint, Object paramObject, X509CRL paramX509CRL)
  {
    IssuingDistributionPoint localIssuingDistributionPoint;
    try
    {
      localIssuingDistributionPoint = IssuingDistributionPoint.ɹ(CertPathValidatorUtilities.ˊ(paramX509CRL, bbe));
    }
    catch (Exception paramDistributionPoint)
    {
      throw new AnnotatedException("Issuing distribution point extension could not be decoded.", paramDistributionPoint);
    }
    if (localIssuingDistributionPoint != null)
    {
      if (localIssuingDistributionPoint.ht() != null)
      {
        DistributionPointName localDistributionPointName = IssuingDistributionPoint.ɹ(localIssuingDistributionPoint).ht();
        ArrayList localArrayList = new ArrayList();
        Object localObject;
        int i;
        if (localDistributionPointName.getType() == 0)
        {
          localObject = GeneralNames.＿(localDistributionPointName.hw()).hB();
          i = 0;
          while (i < localObject.length)
          {
            localArrayList.add(localObject[i]);
            i += 1;
          }
        }
        if (localDistributionPointName.getType() == 1)
        {
          localObject = new ASN1EncodableVector();
          try
          {
            paramX509CRL = ASN1Sequence.ﹾ(ASN1Sequence.ՙ(CertPathValidatorUtilities.ˋ(paramX509CRL).getEncoded())).eT();
            while (paramX509CRL.hasMoreElements()) {
              ((ASN1EncodableVector)localObject).ˊ((ASN1Encodable)paramX509CRL.nextElement());
            }
          }
          catch (IOException paramDistributionPoint)
          {
            throw new AnnotatedException("Could not read CRL issuer.", paramDistributionPoint);
          }
          ((ASN1EncodableVector)localObject).ˊ(localDistributionPointName.hw());
          localArrayList.add(new GeneralName(X509Name.ᙆ(new DERSequence((ASN1EncodableVector)localObject))));
        }
        int m = 0;
        int k = 0;
        int j;
        if (paramDistributionPoint.ht() != null)
        {
          localDistributionPointName = paramDistributionPoint.ht();
          paramX509CRL = null;
          if (localDistributionPointName.getType() == 0) {
            paramX509CRL = GeneralNames.＿(localDistributionPointName.hw()).hB();
          }
          if (localDistributionPointName.getType() == 1)
          {
            if (paramDistributionPoint.hv() != null)
            {
              paramDistributionPoint = paramDistributionPoint.hv().hB();
            }
            else
            {
              paramDistributionPoint = new GeneralName[1];
              try
              {
                paramDistributionPoint[0] = new GeneralName(new X509Name((ASN1Sequence)ASN1Sequence.ՙ(CertPathValidatorUtilities.ﻨ(paramObject).getEncoded())));
              }
              catch (IOException paramDistributionPoint)
              {
                throw new AnnotatedException("Could not read certificate issuer.", paramDistributionPoint);
              }
            }
            i = 0;
            for (;;)
            {
              paramX509CRL = paramDistributionPoint;
              if (i >= paramDistributionPoint.length) {
                break;
              }
              paramX509CRL = ASN1Sequence.ﹾ(paramDistributionPoint[i].hw().ez()).eT();
              localObject = new ASN1EncodableVector();
              while (paramX509CRL.hasMoreElements()) {
                ((ASN1EncodableVector)localObject).ˊ((ASN1Encodable)paramX509CRL.nextElement());
              }
              ((ASN1EncodableVector)localObject).ˊ(localDistributionPointName.hw());
              paramDistributionPoint[i] = new GeneralName(new X509Name(new DERSequence((ASN1EncodableVector)localObject)));
              i += 1;
            }
          }
          j = k;
          if (paramX509CRL != null)
          {
            i = 0;
            for (;;)
            {
              j = k;
              if (i >= paramX509CRL.length) {
                break;
              }
              if (localArrayList.contains(paramX509CRL[i]))
              {
                j = 1;
                break;
              }
              i += 1;
            }
          }
          if (j == 0) {
            throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
          }
        }
        else
        {
          if (paramDistributionPoint.hv() == null) {
            throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
          }
          paramDistributionPoint = paramDistributionPoint.hv().hB();
          i = 0;
          for (;;)
          {
            j = m;
            if (i >= paramDistributionPoint.length) {
              break;
            }
            if (localArrayList.contains(paramDistributionPoint[i]))
            {
              j = 1;
              break;
            }
            i += 1;
          }
          if (j == 0) {
            throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
          }
        }
      }
      try
      {
        paramDistributionPoint = BasicConstraints.ᵤ(CertPathValidatorUtilities.ˊ((X509Extension)paramObject, baY));
      }
      catch (Exception paramDistributionPoint)
      {
        throw new AnnotatedException("Basic constraints extension could not be decoded.", paramDistributionPoint);
      }
      if ((paramObject instanceof X509Certificate))
      {
        if ((localIssuingDistributionPoint.hF()) && (paramDistributionPoint != null) && (paramDistributionPoint.gZ())) {
          throw new AnnotatedException("CA Cert CRL only contains user certificates.");
        }
        if ((localIssuingDistributionPoint.hG()) && ((paramDistributionPoint == null) || (!paramDistributionPoint.gZ()))) {
          throw new AnnotatedException("End CRL only contains CA certificates.");
        }
      }
      if (localIssuingDistributionPoint.hI()) {
        throw new AnnotatedException("onlyContainsAttributeCerts boolean is asserted.");
      }
    }
  }
  
  private static void ˊ(DistributionPoint paramDistributionPoint, ExtendedPKIXParameters paramExtendedPKIXParameters, X509Certificate paramX509Certificate1, Date paramDate, X509Certificate paramX509Certificate2, PublicKey paramPublicKey, CertStatus paramCertStatus, ReasonsMask paramReasonsMask, List paramList)
  {
    Date localDate = new Date(System.currentTimeMillis());
    if (paramDate.getTime() > localDate.getTime()) {
      throw new AnnotatedException("Validation time is in future.");
    }
    Object localObject2 = CertPathValidatorUtilities.ˊ(paramDistributionPoint, paramX509Certificate1, localDate, paramExtendedPKIXParameters);
    int i = 0;
    Object localObject1 = null;
    Iterator localIterator = ((Set)localObject2).iterator();
    while ((localIterator.hasNext()) && (paramCertStatus.oV() == 11) && (!paramReasonsMask.oY())) {
      try
      {
        Object localObject3 = (X509CRL)localIterator.next();
        ReasonsMask localReasonsMask = ˊ((X509CRL)localObject3, paramDistributionPoint);
        boolean bool = localReasonsMask.ˎ(paramReasonsMask);
        if (bool)
        {
          PublicKey localPublicKey = ˊ((X509CRL)localObject3, ˊ((X509CRL)localObject3, paramX509Certificate1, paramX509Certificate2, paramPublicKey, paramExtendedPKIXParameters, paramList));
          localObject2 = null;
          if (paramExtendedPKIXParameters.ti()) {
            localObject2 = ˊ(CertPathValidatorUtilities.ˊ(localDate, paramExtendedPKIXParameters, (X509CRL)localObject3), localPublicKey);
          }
          if ((paramExtendedPKIXParameters.tj() != 1) && (paramX509Certificate1.getNotAfter().getTime() < ((X509CRL)localObject3).getThisUpdate().getTime())) {
            throw new AnnotatedException("No valid CRL for current time found.");
          }
          ˋ(paramDistributionPoint, paramX509Certificate1, (X509CRL)localObject3);
          ˊ(paramDistributionPoint, paramX509Certificate1, (X509CRL)localObject3);
          ˊ((X509CRL)localObject2, (X509CRL)localObject3, paramExtendedPKIXParameters);
          ˊ(paramDate, (X509CRL)localObject2, paramX509Certificate1, paramCertStatus, paramExtendedPKIXParameters);
          ˋ(paramDate, (X509CRL)localObject3, paramX509Certificate1, paramCertStatus);
          if (paramCertStatus.oV() == 8) {
            paramCertStatus.כּ(11);
          }
          paramReasonsMask.ˊ(localReasonsMask);
          localObject3 = ((X509CRL)localObject3).getCriticalExtensionOIDs();
          if (localObject3 != null)
          {
            localObject3 = new HashSet((Collection)localObject3);
            ((Set)localObject3).remove(X509Extensions.aBv.getId());
            ((Set)localObject3).remove(X509Extensions.aBu.getId());
            if (!((Set)localObject3).isEmpty()) {
              throw new AnnotatedException("CRL contains unsupported critical extensions.");
            }
          }
          if (localObject2 != null)
          {
            localObject2 = ((X509CRL)localObject2).getCriticalExtensionOIDs();
            if (localObject2 != null)
            {
              localObject2 = new HashSet((Collection)localObject2);
              ((Set)localObject2).remove(X509Extensions.aBv.getId());
              ((Set)localObject2).remove(X509Extensions.aBu.getId());
              if (!((Set)localObject2).isEmpty()) {
                throw new AnnotatedException("Delta CRL contains unsupported critical extension.");
              }
            }
          }
          i = 1;
        }
      }
      catch (AnnotatedException localAnnotatedException) {}
    }
    if (i == 0) {
      throw localAnnotatedException;
    }
  }
  
  protected static void ˊ(ExtendedPKIXParameters paramExtendedPKIXParameters, X509Certificate paramX509Certificate1, Date paramDate, X509Certificate paramX509Certificate2, PublicKey paramPublicKey, List paramList)
  {
    Object localObject3 = null;
    Object localObject2 = null;
    Object localObject4;
    try
    {
      localObject4 = CRLDistPoint.ⁿ(CertPathValidatorUtilities.ˊ(paramX509Certificate1, bbi));
    }
    catch (Exception paramExtendedPKIXParameters)
    {
      throw new AnnotatedException("CRL distribution point extension could not be read.", paramExtendedPKIXParameters);
    }
    try
    {
      CertPathValidatorUtilities.ˊ((CRLDistPoint)localObject4, paramExtendedPKIXParameters);
    }
    catch (AnnotatedException paramExtendedPKIXParameters)
    {
      throw new AnnotatedException("No additional CRL locations could be decoded from CRL distribution point extension.", paramExtendedPKIXParameters);
    }
    CertStatus localCertStatus = new CertStatus();
    ReasonsMask localReasonsMask = new ReasonsMask();
    int k = 0;
    int j = 0;
    Object localObject1 = localObject3;
    int i = k;
    if (localObject4 != null)
    {
      try
      {
        localObject4 = ((CRLDistPoint)localObject4).hb();
      }
      catch (Exception paramExtendedPKIXParameters)
      {
        throw new AnnotatedException("Distribution points could not be read.", paramExtendedPKIXParameters);
      }
      localObject1 = localObject3;
      i = k;
      if (localObject4 != null)
      {
        k = 0;
        for (;;)
        {
          localObject1 = localObject2;
          i = j;
          if (k >= localObject4.length) {
            break;
          }
          localObject1 = localObject2;
          i = j;
          if (localCertStatus.oV() != 11) {
            break;
          }
          localObject1 = localObject2;
          i = j;
          if (localReasonsMask.oY()) {
            break;
          }
          localObject1 = (ExtendedPKIXParameters)paramExtendedPKIXParameters.clone();
          try
          {
            ˊ(localObject4[k], (ExtendedPKIXParameters)localObject1, paramX509Certificate1, paramDate, paramX509Certificate2, paramPublicKey, localCertStatus, localReasonsMask, paramList);
            j = 1;
            localObject1 = localObject2;
          }
          catch (AnnotatedException localAnnotatedException1) {}
          k += 1;
          localObject2 = localAnnotatedException1;
        }
      }
    }
    localObject2 = localAnnotatedException1;
    j = i;
    if (localCertStatus.oV() == 11)
    {
      localObject2 = localAnnotatedException1;
      j = i;
      if (!localReasonsMask.oY()) {
        try
        {
          try
          {
            localObject2 = new ASN1InputStream(CertPathValidatorUtilities.ﻨ(paramX509Certificate1).getEncoded()).eH();
          }
          catch (Exception paramExtendedPKIXParameters)
          {
            throw new AnnotatedException("Issuer from certificate for CRL could not be reencoded.", paramExtendedPKIXParameters);
          }
          ˊ(new DistributionPoint(new DistributionPointName(0, new GeneralNames(new GeneralName(4, (ASN1Encodable)localObject2))), null, null), (ExtendedPKIXParameters)paramExtendedPKIXParameters.clone(), paramX509Certificate1, paramDate, paramX509Certificate2, paramPublicKey, localCertStatus, localReasonsMask, paramList);
          j = 1;
          localObject2 = localAnnotatedException1;
        }
        catch (AnnotatedException localAnnotatedException2)
        {
          j = i;
        }
      }
    }
    if (j == 0)
    {
      if ((localAnnotatedException2 instanceof AnnotatedException)) {
        throw localAnnotatedException2;
      }
      throw new AnnotatedException("No valid CRL found.", localAnnotatedException2);
    }
    if (localCertStatus.oV() != 11)
    {
      paramExtendedPKIXParameters = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z");
      paramExtendedPKIXParameters.setTimeZone(TimeZone.getTimeZone("UTC"));
      paramExtendedPKIXParameters = "Certificate revocation after " + paramExtendedPKIXParameters.format(localCertStatus.getRevocationDate());
      throw new AnnotatedException(paramExtendedPKIXParameters + ", reason: " + bbl[localCertStatus.oV()]);
    }
    if ((!localReasonsMask.oY()) && (localCertStatus.oV() == 11)) {
      localCertStatus.כּ(12);
    }
    if (localCertStatus.oV() == 12) {
      throw new AnnotatedException("Certificate status could not be determined.");
    }
  }
  
  protected static int ˋ(CertPath paramCertPath, int paramInt1, int paramInt2)
  {
    Object localObject = (X509Certificate)paramCertPath.getCertificates().get(paramInt1);
    try
    {
      localObject = DERSequence.ﹾ(CertPathValidatorUtilities.ˊ((X509Extension)localObject, bbg));
    }
    catch (Exception localException)
    {
      throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", localException, paramCertPath, paramInt1);
    }
    if (localException != null)
    {
      Enumeration localEnumeration = localException.eT();
      while (localEnumeration.hasMoreElements()) {
        try
        {
          ASN1TaggedObject localASN1TaggedObject = ASN1TaggedObject.ʵ(localEnumeration.nextElement());
          if (localASN1TaggedObject.eW() == 1)
          {
            int i = ASN1Integer.ˋ(localASN1TaggedObject, false).eA().intValue();
            if (i < paramInt2) {
              return i;
            }
            return paramInt2;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", localIllegalArgumentException, paramCertPath, paramInt1);
        }
      }
    }
    return paramInt2;
  }
  
  protected static void ˋ(CertPath paramCertPath, int paramInt)
  {
    Object localObject = (X509Certificate)paramCertPath.getCertificates().get(paramInt);
    try
    {
      localObject = BasicConstraints.ᵤ(CertPathValidatorUtilities.ˊ((X509Extension)localObject, baY));
    }
    catch (Exception localException)
    {
      throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", localException, paramCertPath, paramInt);
    }
    if (localException != null)
    {
      if (!localException.gZ()) {
        throw new CertPathValidatorException("Not a CA certificate");
      }
    }
    else {
      throw new CertPathValidatorException("Intermediate certificate lacks BasicConstraints");
    }
  }
  
  protected static void ˋ(CertPath paramCertPath, int paramInt, PKIXNameConstraintValidator paramPKIXNameConstraintValidator)
  {
    Object localObject2 = (X509Certificate)paramCertPath.getCertificates().get(paramInt);
    Object localObject1 = null;
    try
    {
      localObject2 = DERSequence.ﹾ(CertPathValidatorUtilities.ˊ((X509Extension)localObject2, bbb));
      if (localObject2 != null) {
        localObject1 = NameConstraints.ϊ(localObject2);
      }
    }
    catch (Exception paramPKIXNameConstraintValidator)
    {
      throw new ExtCertPathValidatorException("Name constraints extension could not be decoded.", paramPKIXNameConstraintValidator, paramCertPath, paramInt);
    }
    if (localObject1 != null)
    {
      localObject2 = ((NameConstraints)localObject1).hK();
      if (localObject2 != null) {
        try
        {
          paramPKIXNameConstraintValidator.ˊ((GeneralSubtree[])localObject2);
        }
        catch (Exception paramPKIXNameConstraintValidator)
        {
          throw new ExtCertPathValidatorException("Permitted subtrees cannot be build from name constraints extension.", paramPKIXNameConstraintValidator, paramCertPath, paramInt);
        }
      }
      localObject1 = ((NameConstraints)localObject1).hL();
      if (localObject1 != null)
      {
        int i = 0;
        while (i != localObject1.length)
        {
          try
          {
            paramPKIXNameConstraintValidator.ˊ(localObject1[i]);
          }
          catch (Exception paramPKIXNameConstraintValidator)
          {
            throw new ExtCertPathValidatorException("Excluded subtrees cannot be build from name constraints extension.", paramPKIXNameConstraintValidator, paramCertPath, paramInt);
          }
          i += 1;
        }
      }
    }
  }
  
  protected static void ˋ(Date paramDate, X509CRL paramX509CRL, Object paramObject, CertStatus paramCertStatus)
  {
    if (paramCertStatus.oV() == 11) {
      CertPathValidatorUtilities.ˊ(paramDate, paramX509CRL, paramObject, paramCertStatus);
    }
  }
  
  protected static void ˋ(DistributionPoint paramDistributionPoint, Object paramObject, X509CRL paramX509CRL)
  {
    Object localObject = CertPathValidatorUtilities.ˊ(paramX509CRL, bbe);
    int i = 0;
    int j = i;
    if (localObject != null)
    {
      j = i;
      if (IssuingDistributionPoint.ɹ(localObject).hH()) {
        j = 1;
      }
    }
    localObject = CertPathValidatorUtilities.ˋ(paramX509CRL).getEncoded();
    int k = 0;
    i = 0;
    if (paramDistributionPoint.hv() != null)
    {
      paramDistributionPoint = paramDistributionPoint.hv().hB();
      k = 0;
      while (k < paramDistributionPoint.length)
      {
        int m = i;
        if (paramDistributionPoint[k].eW() == 4) {
          try
          {
            boolean bool = Arrays.ﹺ(paramDistributionPoint[k].hw().ez().getEncoded(), (byte[])localObject);
            if (bool) {
              i = 1;
            }
            m = i;
          }
          catch (IOException paramDistributionPoint)
          {
            throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", paramDistributionPoint);
          }
        }
        k += 1;
        i = m;
      }
      if ((i != 0) && (j == 0)) {
        throw new AnnotatedException("Distribution point contains cRLIssuer field but CRL is not indirect.");
      }
      if (i == 0) {
        throw new AnnotatedException("CRL issuer of CRL does not match CRL issuer of distribution point.");
      }
    }
    else
    {
      i = k;
      if (CertPathValidatorUtilities.ˋ(paramX509CRL).equals(CertPathValidatorUtilities.ﻨ(paramObject))) {
        i = 1;
      }
    }
    if (i == 0) {
      throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
    }
  }
  
  protected static int ˎ(CertPath paramCertPath, int paramInt1, int paramInt2)
  {
    Object localObject = (X509Certificate)paramCertPath.getCertificates().get(paramInt1);
    try
    {
      localObject = ASN1Integer.ﯨ(CertPathValidatorUtilities.ˊ((X509Extension)localObject, bbd));
    }
    catch (Exception localException)
    {
      throw new ExtCertPathValidatorException("Inhibit any-policy extension cannot be decoded.", localException, paramCertPath, paramInt1);
    }
    if (localException != null)
    {
      paramInt1 = localException.eA().intValue();
      if (paramInt1 < paramInt2) {
        return paramInt1;
      }
    }
    return paramInt2;
  }
  
  protected static void ˎ(CertPath paramCertPath, int paramInt)
  {
    boolean[] arrayOfBoolean = ((X509Certificate)paramCertPath.getCertificates().get(paramInt)).getKeyUsage();
    if ((arrayOfBoolean != null) && (arrayOfBoolean[5] == 0)) {
      throw new ExtCertPathValidatorException("Issuer certificate keyusage extension is critical and does not permit key signing.", null, paramCertPath, paramInt);
    }
  }
  
  protected static int ˏ(CertPath paramCertPath, int paramInt1, int paramInt2)
  {
    if (!CertPathValidatorUtilities.ʽ((X509Certificate)paramCertPath.getCertificates().get(paramInt1)))
    {
      if (paramInt2 <= 0) {
        throw new ExtCertPathValidatorException("Max path length not greater than zero", null, paramCertPath, paramInt1);
      }
      return paramInt2 - 1;
    }
    return paramInt2;
  }
  
  protected static int ͺ(CertPath paramCertPath, int paramInt1, int paramInt2)
  {
    Object localObject = (X509Certificate)paramCertPath.getCertificates().get(paramInt1);
    try
    {
      localObject = DERSequence.ﹾ(CertPathValidatorUtilities.ˊ((X509Extension)localObject, bbg));
    }
    catch (AnnotatedException localAnnotatedException)
    {
      throw new ExtCertPathValidatorException("Policy constraints could not be decoded.", localAnnotatedException, paramCertPath, paramInt1);
    }
    if (localAnnotatedException != null)
    {
      Enumeration localEnumeration = localAnnotatedException.eT();
      while (localEnumeration.hasMoreElements())
      {
        ASN1TaggedObject localASN1TaggedObject = (ASN1TaggedObject)localEnumeration.nextElement();
        switch (localASN1TaggedObject.eW())
        {
        default: 
          break;
        case 0: 
          int i;
          try
          {
            i = ASN1Integer.ˋ(localASN1TaggedObject, false).eA().intValue();
          }
          catch (Exception localException)
          {
            throw new ExtCertPathValidatorException("Policy constraints requireExplicitPolicy field could not be decoded.", localException, paramCertPath, paramInt1);
          }
          if (i == 0) {
            return 0;
          }
          break;
        }
      }
    }
    return paramInt2;
  }
  
  protected static int ᐝ(CertPath paramCertPath, int paramInt1, int paramInt2)
  {
    Object localObject = (X509Certificate)paramCertPath.getCertificates().get(paramInt1);
    try
    {
      localObject = BasicConstraints.ᵤ(CertPathValidatorUtilities.ˊ((X509Extension)localObject, baY));
    }
    catch (Exception localException)
    {
      throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", localException, paramCertPath, paramInt1);
    }
    if (localException != null)
    {
      paramCertPath = localException.ha();
      if (paramCertPath != null)
      {
        paramInt1 = paramCertPath.intValue();
        if (paramInt1 < paramInt2) {
          return paramInt1;
        }
      }
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.RFC3280CertPathUtilities
 * JD-Core Version:    0.7.0.1
 */