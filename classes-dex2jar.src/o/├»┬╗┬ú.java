package o;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.util.Map;

public class ﻣ
{
  private final Ｌ jw;
  private final String jx;
  private String jy;
  private URL jz;
  private final URL url;
  
  public ﻣ(String paramString)
  {
    this(paramString, Ｌ.jA);
  }
  
  public ﻣ(String paramString, Ｌ paramＬ)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("String url must not be empty or null: " + paramString);
    }
    if (paramＬ == null) {
      throw new IllegalArgumentException("Headers must not be null");
    }
    this.jx = paramString;
    this.url = null;
    this.jw = paramＬ;
  }
  
  public ﻣ(URL paramURL)
  {
    this(paramURL, Ｌ.jA);
  }
  
  public ﻣ(URL paramURL, Ｌ paramＬ)
  {
    if (paramURL == null) {
      throw new IllegalArgumentException("URL must not be null!");
    }
    if (paramＬ == null) {
      throw new IllegalArgumentException("Headers must not be null");
    }
    this.url = paramURL;
    this.jx = null;
    this.jw = paramＬ;
  }
  
  private URL ノ()
  {
    if (this.jz == null) {
      this.jz = new URL(亅());
    }
    return this.jz;
  }
  
  private String 亅()
  {
    if (TextUtils.isEmpty(this.jy))
    {
      String str2 = this.jx;
      String str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = this.url.toString();
      }
      this.jy = Uri.encode(str1, "@#&=*+-_.,:!?()/~'%");
    }
    return this.jy;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ﻣ))
    {
      paramObject = (ﻣ)paramObject;
      return (亠().equals(paramObject.亠())) && (this.jw.equals(paramObject.jw));
    }
    return false;
  }
  
  public Map<String, String> getHeaders()
  {
    return this.jw.getHeaders();
  }
  
  public int hashCode()
  {
    return 亠().hashCode() * 31 + this.jw.hashCode();
  }
  
  public String toString()
  {
    return 亠() + '\n' + this.jw.toString();
  }
  
  public URL toURL()
  {
    return ノ();
  }
  
  public String 亠()
  {
    if (this.jx != null) {
      return this.jx;
    }
    return this.url.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï»£
 * JD-Core Version:    0.7.0.1
 */