package o;

import android.content.Context;

class ᓾ
{
  private final Context dV;
  private final tp oy;
  
  public ᓾ(Context paramContext, tp paramtp)
  {
    this.dV = paramContext;
    this.oy = paramtp;
  }
  
  private String ˎ(String paramString1, String paramString2)
  {
    return ˏ(qh.ʻ(this.dV, paramString1), paramString2);
  }
  
  private String ˏ(String paramString1, String paramString2)
  {
    if (ՙ(paramString1)) {
      return paramString2;
    }
    return paramString1;
  }
  
  private boolean ՙ(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public String getMessage()
  {
    return ˎ("com.crashlytics.CrashSubmissionPromptMessage", this.oy.message);
  }
  
  public String getTitle()
  {
    return ˎ("com.crashlytics.CrashSubmissionPromptTitle", this.oy.YW);
  }
  
  public String ᒐ()
  {
    return ˎ("com.crashlytics.CrashSubmissionSendTitle", this.oy.YX);
  }
  
  public String ᓓ()
  {
    return ˎ("com.crashlytics.CrashSubmissionAlwaysSendTitle", this.oy.Zb);
  }
  
  public String ᓕ()
  {
    return ˎ("com.crashlytics.CrashSubmissionCancelTitle", this.oy.YZ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¾
 * JD-Core Version:    0.7.0.1
 */