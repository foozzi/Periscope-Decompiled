package o;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;

abstract class tb
  extends py
{
  public tb(pq parampq, String paramString1, String paramString2, sq paramsq, sm paramsm)
  {
    super(parampq, paramString1, paramString2, paramsq, paramsm);
  }
  
  private sn ˊ(sn paramsn, te paramte)
  {
    return paramsn.ՙ("X-CRASHLYTICS-API-KEY", paramte.apiKey).ՙ("X-CRASHLYTICS-API-CLIENT-TYPE", "android").ՙ("X-CRASHLYTICS-API-CLIENT-VERSION", this.Rw.getVersion());
  }
  
  private sn ˋ(sn paramsn, te paramte)
  {
    sn localsn = paramsn.ᵎ("app[identifier]", paramte.YA).ᵎ("app[name]", paramte.name).ᵎ("app[display_version]", paramte.qo).ᵎ("app[build_version]", paramte.qp).ˋ("app[source]", Integer.valueOf(paramte.YC)).ᵎ("app[minimum_sdk_version]", paramte.YD).ᵎ("app[built_sdk_version]", paramte.YE);
    if (!qh.ՙ(paramte.YB)) {
      localsn.ᵎ("app[instance_identifier]", paramte.YB);
    }
    Object localObject;
    if (paramte.YF != null)
    {
      localObject = null;
      paramsn = null;
      try
      {
        InputStream localInputStream = this.Rw.getContext().getResources().openRawResource(paramte.YF.YV);
        paramsn = localInputStream;
        localObject = localInputStream;
        localsn.ᵎ("app[icon][hash]", paramte.YF.Yz).ˊ("app[icon][data]", "icon.png", "application/octet-stream", localInputStream).ˋ("app[icon][width]", Integer.valueOf(paramte.YF.width)).ˋ("app[icon][height]", Integer.valueOf(paramte.YF.height));
        qh.ˊ(localInputStream, "Failed to close app icon InputStream.");
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        localObject = paramsn;
        pj.cd().ˏ("Fabric", "Failed to find app icon with resource ID: " + paramte.YF.YV, localNotFoundException);
        qh.ˊ(paramsn, "Failed to close app icon InputStream.");
      }
      finally
      {
        qh.ˊ((Closeable)localObject, "Failed to close app icon InputStream.");
      }
    }
    if (paramte.YG != null)
    {
      paramte = paramte.YG.iterator();
      while (paramte.hasNext())
      {
        localObject = (pq)paramte.next();
        if (((pq)localObject).getVersion() == null) {
          paramsn = "";
        } else {
          paramsn = ((pq)localObject).getVersion();
        }
        localsn.ᵎ(ˎ((pq)localObject), paramsn);
      }
    }
    return localsn;
  }
  
  public boolean ˊ(te paramte)
  {
    sn localsn = ˋ(ˊ(ck(), paramte), paramte);
    pj.cd().ˑ("Fabric", "Sending app info to " + getUrl());
    if (paramte.YF != null)
    {
      pj.cd().ˑ("Fabric", "App icon hash is " + paramte.YF.Yz);
      pj.cd().ˑ("Fabric", "App icon size is " + paramte.YF.width + "x" + paramte.YF.height);
    }
    int i = localsn.code();
    if ("POST".equals(localsn.method())) {
      paramte = "Create";
    } else {
      paramte = "Update";
    }
    pj.cd().ˑ("Fabric", paramte + " app request ID: " + localsn.header("X-REQUEST-ID"));
    pj.cd().ˑ("Fabric", "Result was " + i);
    return qw.灬(i) == 0;
  }
  
  String ˎ(pq parampq)
  {
    if (parampq.ｯ() == null) {
      parampq = "";
    } else {
      parampq = parampq.ｯ();
    }
    return "app[build][libraries][" + parampq + "]";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.tb
 * JD-Core Version:    0.7.0.1
 */