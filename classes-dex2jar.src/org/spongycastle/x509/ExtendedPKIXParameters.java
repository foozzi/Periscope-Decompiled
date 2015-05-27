package org.spongycastle.x509;

import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.PKIXParameters;
import java.security.cert.X509CertSelector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.spongycastle.util.Selector;
import org.spongycastle.util.Store;

public class ExtendedPKIXParameters
  extends PKIXParameters
{
  private List bkq = new ArrayList();
  private Selector bkr;
  private boolean bks;
  private List bkt = new ArrayList();
  private Set bku = new HashSet();
  private Set bkv = new HashSet();
  private Set bkw = new HashSet();
  private Set bkx = new HashSet();
  private int bky = 0;
  private boolean bkz = false;
  
  public ExtendedPKIXParameters(Set paramSet)
  {
    super(paramSet);
  }
  
  public static ExtendedPKIXParameters ˎ(PKIXParameters paramPKIXParameters)
  {
    ExtendedPKIXParameters localExtendedPKIXParameters;
    try
    {
      localExtendedPKIXParameters = new ExtendedPKIXParameters(paramPKIXParameters.getTrustAnchors());
    }
    catch (Exception paramPKIXParameters)
    {
      throw new RuntimeException(paramPKIXParameters.getMessage());
    }
    localExtendedPKIXParameters.ˋ(paramPKIXParameters);
    return localExtendedPKIXParameters;
  }
  
  public Object clone()
  {
    try
    {
      ExtendedPKIXParameters localExtendedPKIXParameters = new ExtendedPKIXParameters(getTrustAnchors());
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException.getMessage());
    }
    localException.ˋ(this);
    return localException;
  }
  
  public void setCertStores(List paramList)
  {
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        addCertStore((CertStore)paramList.next());
      }
    }
  }
  
  public void setTargetCertConstraints(CertSelector paramCertSelector)
  {
    super.setTargetCertConstraints(paramCertSelector);
    if (paramCertSelector != null)
    {
      this.bkr = X509CertStoreSelector.ˏ((X509CertSelector)paramCertSelector);
      return;
    }
    this.bkr = null;
  }
  
  public boolean ti()
  {
    return this.bkz;
  }
  
  public int tj()
  {
    return this.bky;
  }
  
  public List tk()
  {
    return Collections.unmodifiableList(this.bkt);
  }
  
  public List tl()
  {
    return Collections.unmodifiableList(new ArrayList(this.bkq));
  }
  
  public boolean tm()
  {
    return this.bks;
  }
  
  public Selector tn()
  {
    if (this.bkr != null) {
      return (Selector)this.bkr.clone();
    }
    return null;
  }
  
  public Set to()
  {
    return Collections.unmodifiableSet(this.bku);
  }
  
  public Set tp()
  {
    return Collections.unmodifiableSet(this.bkv);
  }
  
  public Set tq()
  {
    return Collections.unmodifiableSet(this.bkw);
  }
  
  public Set tr()
  {
    return Collections.unmodifiableSet(this.bkx);
  }
  
  public void ˊ(Store paramStore)
  {
    if (paramStore != null) {
      this.bkt.add(paramStore);
    }
  }
  
  protected void ˋ(PKIXParameters paramPKIXParameters)
  {
    setDate(paramPKIXParameters.getDate());
    setCertPathCheckers(paramPKIXParameters.getCertPathCheckers());
    setCertStores(paramPKIXParameters.getCertStores());
    setAnyPolicyInhibited(paramPKIXParameters.isAnyPolicyInhibited());
    setExplicitPolicyRequired(paramPKIXParameters.isExplicitPolicyRequired());
    setPolicyMappingInhibited(paramPKIXParameters.isPolicyMappingInhibited());
    setRevocationEnabled(paramPKIXParameters.isRevocationEnabled());
    setInitialPolicies(paramPKIXParameters.getInitialPolicies());
    setPolicyQualifiersRejected(paramPKIXParameters.getPolicyQualifiersRejected());
    setSigProvider(paramPKIXParameters.getSigProvider());
    setTargetCertConstraints(paramPKIXParameters.getTargetCertConstraints());
    try
    {
      setTrustAnchors(paramPKIXParameters.getTrustAnchors());
    }
    catch (Exception paramPKIXParameters)
    {
      throw new RuntimeException(paramPKIXParameters.getMessage());
    }
    if ((paramPKIXParameters instanceof ExtendedPKIXParameters))
    {
      ExtendedPKIXParameters localExtendedPKIXParameters = (ExtendedPKIXParameters)paramPKIXParameters;
      this.bky = localExtendedPKIXParameters.bky;
      this.bkz = localExtendedPKIXParameters.bkz;
      this.bks = localExtendedPKIXParameters.bks;
      if (localExtendedPKIXParameters.bkr == null) {
        paramPKIXParameters = null;
      } else {
        paramPKIXParameters = (Selector)localExtendedPKIXParameters.bkr.clone();
      }
      this.bkr = paramPKIXParameters;
      this.bkq = new ArrayList(localExtendedPKIXParameters.bkq);
      this.bkt = new ArrayList(localExtendedPKIXParameters.bkt);
      this.bku = new HashSet(localExtendedPKIXParameters.bku);
      this.bkw = new HashSet(localExtendedPKIXParameters.bkw);
      this.bkv = new HashSet(localExtendedPKIXParameters.bkv);
      this.bkx = new HashSet(localExtendedPKIXParameters.bkx);
    }
  }
  
  public void ˎ(Selector paramSelector)
  {
    if (paramSelector != null)
    {
      this.bkr = ((Selector)paramSelector.clone());
      return;
    }
    this.bkr = null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.ExtendedPKIXParameters
 * JD-Core Version:    0.7.0.1
 */