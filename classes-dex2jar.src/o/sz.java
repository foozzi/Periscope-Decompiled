package o;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class sz<T>
{
  private final ta<T> PX;
  private final sx Yt;
  private final String key;
  
  public sz(sx paramsx, ta<T> paramta, String paramString)
  {
    this.Yt = paramsx;
    this.PX = paramta;
    this.key = paramString;
  }
  
  public void clear()
  {
    this.Yt.edit().remove(this.key).commit();
  }
  
  public T dH()
  {
    SharedPreferences localSharedPreferences = this.Yt.dG();
    return this.PX.ᕁ(localSharedPreferences.getString(this.key, null));
  }
  
  @SuppressLint({"CommitPrefEdits"})
  public void ᵓ(T paramT)
  {
    this.Yt.ˊ(this.Yt.edit().putString(this.key, this.PX.ǃ(paramT)));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sz
 * JD-Core Version:    0.7.0.1
 */