package o;

import android.util.Log;

public class pi
  implements ps
{
  private int UK;
  
  public pi()
  {
    this.UK = 4;
  }
  
  public pi(int paramInt)
  {
    this.UK = paramInt;
  }
  
  public boolean isLoggable(String paramString, int paramInt)
  {
    return this.UK <= paramInt;
  }
  
  public void ˊ(int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((paramBoolean) || (isLoggable(paramString1, paramInt))) {
      Log.println(paramInt, paramString1, paramString2);
    }
  }
  
  public void ˊ(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isLoggable(paramString1, 3)) {
      Log.d(paramString1, paramString2, paramThrowable);
    }
  }
  
  public void ˋ(int paramInt, String paramString1, String paramString2)
  {
    ˊ(paramInt, paramString1, paramString2, false);
  }
  
  public void ˋ(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isLoggable(paramString1, 4)) {
      Log.i(paramString1, paramString2, paramThrowable);
    }
  }
  
  public void ˎ(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isLoggable(paramString1, 5)) {
      Log.w(paramString1, paramString2, paramThrowable);
    }
  }
  
  public void ˏ(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isLoggable(paramString1, 6)) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
  
  public void ˑ(String paramString1, String paramString2)
  {
    ˊ(paramString1, paramString2, null);
  }
  
  public void ـ(String paramString1, String paramString2)
  {
    ˋ(paramString1, paramString2, null);
  }
  
  public void ᐧ(String paramString1, String paramString2)
  {
    ˎ(paramString1, paramString2, null);
  }
  
  public void ᐨ(String paramString1, String paramString2)
  {
    ˏ(paramString1, paramString2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pi
 * JD-Core Version:    0.7.0.1
 */