package org.spongycastle.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class SkeinParameterSpec
  implements AlgorithmParameterSpec
{
  private Map aZH;
  
  public SkeinParameterSpec()
  {
    this(new HashMap());
  }
  
  private SkeinParameterSpec(Map paramMap)
  {
    this.aZH = Collections.unmodifiableMap(paramMap);
  }
  
  public Map getParameters()
  {
    return this.aZH;
  }
  
  public static class Builder
  {
    private Map aZH = new HashMap();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.spec.SkeinParameterSpec
 * JD-Core Version:    0.7.0.1
 */