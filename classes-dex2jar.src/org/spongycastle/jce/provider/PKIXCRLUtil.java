package org.spongycastle.jce.provider;

import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.spongycastle.util.StoreException;
import org.spongycastle.x509.ExtendedPKIXParameters;
import org.spongycastle.x509.X509CRLStoreSelector;
import org.spongycastle.x509.X509Store;

public class PKIXCRLUtil
{
  private final Collection ˊ(X509CRLStoreSelector paramX509CRLStoreSelector, List paramList)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = paramList.iterator();
    paramList = null;
    int i = 0;
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject instanceof X509Store))
      {
        localObject = (X509Store)localObject;
        try
        {
          localHashSet.addAll(((X509Store)localObject).ˋ(paramX509CRLStoreSelector));
          i = 1;
        }
        catch (StoreException paramList)
        {
          paramList = new AnnotatedException("Exception searching in X.509 CRL store.", paramList);
        }
      }
      else
      {
        localObject = (CertStore)localObject;
        try
        {
          localHashSet.addAll(((CertStore)localObject).getCRLs(paramX509CRLStoreSelector));
          i = 1;
        }
        catch (CertStoreException paramList)
        {
          paramList = new AnnotatedException("Exception searching in X.509 CRL store.", paramList);
        }
      }
    }
    if ((i == 0) && (paramList != null)) {
      throw paramList;
    }
    return localHashSet;
  }
  
  public Set ˊ(X509CRLStoreSelector paramX509CRLStoreSelector, ExtendedPKIXParameters paramExtendedPKIXParameters, Date paramDate)
  {
    Object localObject = new HashSet();
    try
    {
      ((Set)localObject).addAll(ˊ(paramX509CRLStoreSelector, paramExtendedPKIXParameters.tk()));
      ((Set)localObject).addAll(ˊ(paramX509CRLStoreSelector, paramExtendedPKIXParameters.tl()));
      ((Set)localObject).addAll(ˊ(paramX509CRLStoreSelector, paramExtendedPKIXParameters.getCertStores()));
    }
    catch (AnnotatedException paramX509CRLStoreSelector)
    {
      throw new AnnotatedException("Exception obtaining complete CRLs.", paramX509CRLStoreSelector);
    }
    HashSet localHashSet = new HashSet();
    if (paramExtendedPKIXParameters.getDate() != null) {
      paramDate = paramExtendedPKIXParameters.getDate();
    }
    paramExtendedPKIXParameters = ((Set)localObject).iterator();
    while (paramExtendedPKIXParameters.hasNext())
    {
      localObject = (X509CRL)paramExtendedPKIXParameters.next();
      if (((X509CRL)localObject).getNextUpdate().after(paramDate))
      {
        X509Certificate localX509Certificate = paramX509CRLStoreSelector.getCertificateChecking();
        if (localX509Certificate != null)
        {
          if (((X509CRL)localObject).getThisUpdate().before(localX509Certificate.getNotAfter())) {
            localHashSet.add(localObject);
          }
        }
        else {
          localHashSet.add(localObject);
        }
      }
    }
    return localHashSet;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.PKIXCRLUtil
 * JD-Core Version:    0.7.0.1
 */