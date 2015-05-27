package o;

import android.content.Context;
import android.net.Uri;

public abstract class ϛ<T>
  implements ɽ<Uri, T>
{
  private final Context dV;
  private final ɽ<ﻣ, T> jN;
  
  public ϛ(Context paramContext, ɽ<ﻣ, T> paramɽ)
  {
    this.dV = paramContext;
    this.jN = paramɽ;
  }
  
  private static boolean ι(String paramString)
  {
    return ("file".equals(paramString)) || ("content".equals(paramString)) || ("android.resource".equals(paramString));
  }
  
  protected abstract Į<T> ˊ(Context paramContext, Uri paramUri);
  
  protected abstract Į<T> ˊ(Context paramContext, String paramString);
  
  public final Į<T> ˊ(Uri paramUri, int paramInt1, int paramInt2)
  {
    String str = paramUri.getScheme();
    Object localObject2 = null;
    if (ι(str))
    {
      if (ﮢ.ˏ(paramUri))
      {
        paramUri = ﮢ.ᐝ(paramUri);
        return ˊ(this.dV, paramUri);
      }
      return ˊ(this.dV, paramUri);
    }
    Object localObject1 = localObject2;
    if (this.jN != null) {
      if (!"http".equals(str))
      {
        localObject1 = localObject2;
        if (!"https".equals(str)) {}
      }
      else
      {
        localObject1 = this.jN.ˎ(new ﻣ(paramUri.toString()), paramInt1, paramInt2);
      }
    }
    return localObject1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ï
 * JD-Core Version:    0.7.0.1
 */