package o;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

public class sy
  implements sx
{
  private final SharedPreferences Yr;
  private final String Ys;
  private final Context dV;
  
  public sy(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }
    this.dV = paramContext;
    this.Ys = paramString;
    this.Yr = this.dV.getSharedPreferences(this.Ys, 0);
  }
  
  public sy(pq parampq)
  {
    this(parampq.getContext(), parampq.getClass().getName());
  }
  
  public SharedPreferences dG()
  {
    return this.Yr;
  }
  
  public SharedPreferences.Editor edit()
  {
    return this.Yr.edit();
  }
  
  @TargetApi(9)
  public boolean ˊ(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramEditor.apply();
      return true;
    }
    return paramEditor.commit();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sy
 * JD-Core Version:    0.7.0.1
 */