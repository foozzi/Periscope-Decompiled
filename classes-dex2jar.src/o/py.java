package o;

import java.util.Collections;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class py
{
  private static final Pattern Vn = Pattern.compile("http(s?)://[^\\/]+", 2);
  protected final pq Rw;
  private final sq Vh;
  private final sm Vo;
  private final String Vp;
  private final String url;
  
  public py(pq parampq, String paramString1, String paramString2, sq paramsq, sm paramsm)
  {
    if (paramString2 == null) {
      throw new IllegalArgumentException("url must not be null.");
    }
    if (paramsq == null) {
      throw new IllegalArgumentException("requestFactory must not be null.");
    }
    this.Rw = parampq;
    this.Vp = paramString1;
    this.url = Ι(paramString2);
    this.Vh = paramsq;
    this.Vo = paramsm;
  }
  
  private String Ι(String paramString)
  {
    String str = paramString;
    if (!qh.ՙ(this.Vp)) {
      str = Vn.matcher(paramString).replaceFirst(this.Vp);
    }
    return str;
  }
  
  protected sn ck()
  {
    return ˊ(Collections.emptyMap());
  }
  
  protected String getUrl()
  {
    return this.url;
  }
  
  protected sn ˊ(Map<String, String> paramMap)
  {
    return this.Vh.ˊ(this.Vo, getUrl(), paramMap).ᔋ(false).ﹽ(10000).ՙ("User-Agent", "Crashlytics Android SDK/" + this.Rw.getVersion()).ՙ("X-CRASHLYTICS-DEVELOPER-TOKEN", "bca6990fc3c15a8105800c0673517a4b579634a1");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.py
 * JD-Core Version:    0.7.0.1
 */