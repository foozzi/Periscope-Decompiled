package org.spongycastle.jcajce.provider.config;

import java.security.BasicPermission;
import java.security.Permission;
import java.util.StringTokenizer;
import org.spongycastle.util.Strings;

public class ProviderConfigurationPermission
  extends BasicPermission
{
  private final String aYu;
  private final int aYv;
  
  public ProviderConfigurationPermission(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
    this.aYu = paramString2;
    this.aYv = ᵏ(paramString2);
  }
  
  private int ᵏ(String paramString)
  {
    paramString = new StringTokenizer(Strings.ʰ(paramString), " ,");
    int i;
    for (int j = 0; paramString.hasMoreTokens(); j = i)
    {
      String str = paramString.nextToken();
      if (str.equals("threadlocalecimplicitlyca"))
      {
        i = j | 0x1;
      }
      else if (str.equals("ecimplicitlyca"))
      {
        i = j | 0x2;
      }
      else if (str.equals("threadlocaldhdefaultparams"))
      {
        i = j | 0x4;
      }
      else if (str.equals("dhdefaultparams"))
      {
        i = j | 0x8;
      }
      else
      {
        i = j;
        if (str.equals("all")) {
          i = j | 0xF;
        }
      }
    }
    if (j == 0) {
      throw new IllegalArgumentException("unknown permissions passed to mask");
    }
    return j;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof ProviderConfigurationPermission))
    {
      paramObject = (ProviderConfigurationPermission)paramObject;
      return (this.aYv == paramObject.aYv) && (getName().equals(paramObject.getName()));
    }
    return false;
  }
  
  public String getActions()
  {
    return this.aYu;
  }
  
  public int hashCode()
  {
    return getName().hashCode() + this.aYv;
  }
  
  public boolean implies(Permission paramPermission)
  {
    if (!(paramPermission instanceof ProviderConfigurationPermission)) {
      return false;
    }
    if (!getName().equals(paramPermission.getName())) {
      return false;
    }
    paramPermission = (ProviderConfigurationPermission)paramPermission;
    return (this.aYv & paramPermission.aYv) == paramPermission.aYv;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.config.ProviderConfigurationPermission
 * JD-Core Version:    0.7.0.1
 */