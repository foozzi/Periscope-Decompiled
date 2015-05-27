package o;

import android.util.Log;
import java.io.Writer;

public class ᵙ
  extends Writer
{
  private final String mTag;
  private StringBuilder ᴱ = new StringBuilder(128);
  
  public ᵙ(String paramString)
  {
    this.mTag = paramString;
  }
  
  private void ˡ()
  {
    if (this.ᴱ.length() > 0)
    {
      Log.d(this.mTag, this.ᴱ.toString());
      this.ᴱ.delete(0, this.ᴱ.length());
    }
  }
  
  public void close()
  {
    ˡ();
  }
  
  public void flush()
  {
    ˡ();
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i < paramInt2)
    {
      char c = paramArrayOfChar[(paramInt1 + i)];
      if (c == '\n') {
        ˡ();
      } else {
        this.ᴱ.append(c);
      }
      i += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */