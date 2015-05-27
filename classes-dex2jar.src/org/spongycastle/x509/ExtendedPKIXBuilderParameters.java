package org.spongycastle.x509;

import java.security.cert.PKIXBuilderParameters;
import java.security.cert.PKIXParameters;
import java.security.cert.X509CertSelector;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.spongycastle.util.Selector;

public class ExtendedPKIXBuilderParameters
  extends ExtendedPKIXParameters
{
  private int bko = 5;
  private Set bkp = Collections.EMPTY_SET;
  
  public ExtendedPKIXBuilderParameters(Set paramSet, Selector paramSelector)
  {
    super(paramSet);
    ˎ(paramSelector);
  }
  
  public static ExtendedPKIXParameters ˎ(PKIXParameters paramPKIXParameters)
  {
    ExtendedPKIXBuilderParameters localExtendedPKIXBuilderParameters;
    try
    {
      localExtendedPKIXBuilderParameters = new ExtendedPKIXBuilderParameters(paramPKIXParameters.getTrustAnchors(), X509CertStoreSelector.ˏ((X509CertSelector)paramPKIXParameters.getTargetCertConstraints()));
    }
    catch (Exception paramPKIXParameters)
    {
      throw new RuntimeException(paramPKIXParameters.getMessage());
    }
    localExtendedPKIXBuilderParameters.ˋ(paramPKIXParameters);
    return localExtendedPKIXBuilderParameters;
  }
  
  public Object clone()
  {
    try
    {
      ExtendedPKIXBuilderParameters localExtendedPKIXBuilderParameters = new ExtendedPKIXBuilderParameters(getTrustAnchors(), tn());
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException.getMessage());
    }
    localException.ˋ(this);
    return localException;
  }
  
  public int getMaxPathLength()
  {
    return this.bko;
  }
  
  public Set th()
  {
    return Collections.unmodifiableSet(this.bkp);
  }
  
  protected void ˋ(PKIXParameters paramPKIXParameters)
  {
    super.ˋ(paramPKIXParameters);
    if ((paramPKIXParameters instanceof ExtendedPKIXBuilderParameters))
    {
      ExtendedPKIXBuilderParameters localExtendedPKIXBuilderParameters = (ExtendedPKIXBuilderParameters)paramPKIXParameters;
      this.bko = localExtendedPKIXBuilderParameters.bko;
      this.bkp = new HashSet(localExtendedPKIXBuilderParameters.bkp);
    }
    if ((paramPKIXParameters instanceof PKIXBuilderParameters)) {
      this.bko = ((PKIXBuilderParameters)paramPKIXParameters).getMaxPathLength();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.ExtendedPKIXBuilderParameters
 * JD-Core Version:    0.7.0.1
 */