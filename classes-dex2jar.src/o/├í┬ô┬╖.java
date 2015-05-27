package o;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ᓷ
{
  private final Context dV;
  
  public ᓷ(Context paramContext)
  {
    this.dV = paramContext;
  }
  
  private static ᓶ ʾ(String paramString)
  {
    try
    {
      paramString = Class.forName(paramString);
    }
    catch (ClassNotFoundException paramString)
    {
      throw new IllegalArgumentException("Unable to find GlideModule implementation", paramString);
    }
    try
    {
      Object localObject = paramString.newInstance();
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException("Unable to instantiate GlideModule implementation for " + paramString, localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException("Unable to instantiate GlideModule implementation for " + paramString, localIllegalAccessException);
    }
    if (!(localIllegalAccessException instanceof ᓶ)) {
      throw new RuntimeException("Expected instanceof GlideModule, but found: " + localIllegalAccessException);
    }
    return (ᓶ)localIllegalAccessException;
  }
  
  public List<ᓶ> Ꭸ()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      ApplicationInfo localApplicationInfo = this.dV.getPackageManager().getApplicationInfo(this.dV.getPackageName(), 128);
      if (localApplicationInfo.metaData != null)
      {
        Iterator localIterator = localApplicationInfo.metaData.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if ("GlideModule".equals(localApplicationInfo.metaData.get(str))) {
            localArrayList.add(ʾ(str));
          }
        }
      }
      return localArrayList;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new RuntimeException("Unable to find metadata to parse GlideModules", localNameNotFoundException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á·
 * JD-Core Version:    0.7.0.1
 */