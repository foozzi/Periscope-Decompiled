package o;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;

public final class ԏ
  implements ت
{
  private final ت AB;
  private final ت AC;
  private final ت AD;
  private final ت AE;
  private ت AF;
  
  public ԏ(Context paramContext, ף paramף, String paramString, boolean paramBoolean)
  {
    this(paramContext, paramף, new ӱ(paramString, null, paramף, 8000, 8000, paramBoolean));
  }
  
  public ԏ(Context paramContext, ף paramף, ت paramت)
  {
    this.AB = ((ت)ړ.יּ(paramت));
    this.AC = new Դ(paramף);
    this.AD = new ʝ(paramContext, paramף);
    this.AE = new λ(paramContext, paramף);
  }
  
  public void close()
  {
    if (this.AF != null) {
      try
      {
        this.AF.close();
        return;
      }
      finally
      {
        this.AF = null;
      }
    }
  }
  
  public String getUri()
  {
    if (this.AF == null) {
      return null;
    }
    return this.AF.getUri();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.AF.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public long ˊ(к paramк)
  {
    boolean bool;
    if (this.AF == null) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    String str = paramк.uri.getScheme();
    if (("file".equals(str)) || (TextUtils.isEmpty(str)))
    {
      if (paramк.uri.getPath().startsWith("/android_asset/")) {
        this.AF = this.AD;
      } else {
        this.AF = this.AC;
      }
    }
    else if ("asset".equals(str)) {
      this.AF = this.AD;
    } else if ("content".equals(str)) {
      this.AF = this.AE;
    } else {
      this.AF = this.AB;
    }
    return this.AF.ˊ(paramк);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ô
 * JD-Core Version:    0.7.0.1
 */