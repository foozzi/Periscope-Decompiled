package o;

import android.app.PendingIntent;
import android.os.Bundle;

public class ⁱ$if
  extends ʳ.if
{
  public static final ʳ.if.if ᒾ = new ﹶ();
  public PendingIntent actionIntent;
  public int icon;
  public CharSequence title;
  private final Bundle ᑋ;
  private final ۥ[] ᑦ;
  
  public ⁱ$if(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null);
  }
  
  private ⁱ$if(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, ۥ[] paramArrayOfۥ)
  {
    this.icon = paramInt;
    this.title = ⁱ.ˎ.ᐝ(paramCharSequence);
    this.actionIntent = paramPendingIntent;
    if (paramBundle == null) {
      paramBundle = new Bundle();
    }
    this.ᑋ = paramBundle;
    this.ᑦ = paramArrayOfۥ;
  }
  
  public Bundle getExtras()
  {
    return this.ᑋ;
  }
  
  protected int getIcon()
  {
    return this.icon;
  }
  
  protected CharSequence getTitle()
  {
    return this.title;
  }
  
  protected PendingIntent ﹶ()
  {
    return this.actionIntent;
  }
  
  public ۥ[] ﹺ()
  {
    return this.ᑦ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â±.if
 * JD-Core Version:    0.7.0.1
 */