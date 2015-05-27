package o;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class ⁱ$ˎ
{
  Context mContext;
  String İ;
  ArrayList<ⁱ.if> Ɩ = new ArrayList();
  boolean ɹ = false;
  String ʶ;
  int ϊ = 0;
  int ג = 0;
  Notification ז;
  Notification ן = new Notification();
  public ArrayList<String> נ;
  Bundle ᑋ;
  CharSequence ᕝ;
  CharSequence ᵒ;
  PendingIntent ᵘ;
  PendingIntent ᵤ;
  RemoteViews ⁿ;
  Bitmap Ⅰ;
  CharSequence ⅰ;
  int 丶;
  int ﭔ;
  boolean ﭠ = true;
  boolean ﯦ;
  ⁱ.con ﯩ;
  CharSequence ﯾ;
  int ﹰ;
  int ﺗ;
  boolean ﻳ;
  String ＿;
  boolean ﾆ;
  
  public ⁱ$ˎ(Context paramContext)
  {
    this.mContext = paramContext;
    this.ן.when = System.currentTimeMillis();
    this.ן.audioStreamType = -1;
    this.ﭔ = 0;
    this.נ = new ArrayList();
  }
  
  private void ˎ(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = this.ן;
      localNotification.flags |= paramInt;
      return;
    }
    Notification localNotification = this.ן;
    localNotification.flags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  protected static CharSequence ᐝ(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      return paramCharSequence;
    }
    CharSequence localCharSequence = paramCharSequence;
    if (paramCharSequence.length() > 5120) {
      localCharSequence = paramCharSequence.subSequence(0, 5120);
    }
    return localCharSequence;
  }
  
  public Notification build()
  {
    return ⁱ.ⁱ().ˊ(this);
  }
  
  public ˎ ʾ(int paramInt)
  {
    this.ϊ = paramInt;
    return this;
  }
  
  public ˎ ˊ(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this.Ɩ.add(new ⁱ.if(paramInt, paramCharSequence, paramPendingIntent));
    return this;
  }
  
  public ˎ ˊ(PendingIntent paramPendingIntent)
  {
    this.ᵘ = paramPendingIntent;
    return this;
  }
  
  public ˎ ˊ(Uri paramUri)
  {
    this.ן.sound = paramUri;
    this.ן.audioStreamType = -1;
    return this;
  }
  
  public ˎ ˊ(ⁱ.con paramcon)
  {
    if (this.ﯩ != paramcon)
    {
      this.ﯩ = paramcon;
      if (this.ﯩ != null) {
        this.ﯩ.ˋ(this);
      }
    }
    return this;
  }
  
  public ˎ ˋ(PendingIntent paramPendingIntent)
  {
    this.ן.deleteIntent = paramPendingIntent;
    return this;
  }
  
  public ˎ ˋ(CharSequence paramCharSequence)
  {
    this.ᕝ = ᐝ(paramCharSequence);
    return this;
  }
  
  public ˎ ˋ(boolean paramBoolean)
  {
    ˎ(16, paramBoolean);
    return this;
  }
  
  public ˎ ˎ(CharSequence paramCharSequence)
  {
    this.ᵒ = ᐝ(paramCharSequence);
    return this;
  }
  
  public ˎ ˏ(CharSequence paramCharSequence)
  {
    this.ן.tickerText = ᐝ(paramCharSequence);
    return this;
  }
  
  public ˎ ͺ(int paramInt)
  {
    this.ן.icon = paramInt;
    return this;
  }
  
  public ˎ ι(int paramInt)
  {
    this.ן.defaults = paramInt;
    if ((paramInt & 0x4) != 0)
    {
      Notification localNotification = this.ן;
      localNotification.flags |= 0x1;
    }
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â±.Ë
 * JD-Core Version:    0.7.0.1
 */