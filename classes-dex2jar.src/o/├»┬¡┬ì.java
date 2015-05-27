package o;

import android.app.Activity;
import java.util.Collections;
import java.util.Map;

final class כֿ
{
  public final ﮈ pB;
  public final כֿ.if pC;
  public final Map<String, String> pD;
  public final String pE;
  public final Map<String, Object> pF;
  private String pG;
  public final long timestamp;
  
  private כֿ(ﮈ paramﮈ, long paramLong, כֿ.if paramif, Map<String, String> paramMap, String paramString, Map<String, Object> paramMap1)
  {
    this.pB = paramﮈ;
    this.timestamp = paramLong;
    this.pC = paramif;
    this.pD = paramMap;
    this.pE = paramString;
    this.pF = paramMap1;
  }
  
  public static כֿ ˊ(ﮈ paramﮈ)
  {
    return ˊ(paramﮈ, כֿ.if.pQ, Collections.emptyMap());
  }
  
  public static כֿ ˊ(ﮈ paramﮈ, String paramString)
  {
    paramString = Collections.singletonMap("sessionId", paramString);
    return ˊ(paramﮈ, כֿ.if.pO, paramString);
  }
  
  public static כֿ ˊ(ﮈ paramﮈ, כֿ.if paramif, Activity paramActivity)
  {
    return ˊ(paramﮈ, paramif, Collections.singletonMap("activity", paramActivity.getClass().getName()));
  }
  
  private static כֿ ˊ(ﮈ paramﮈ, כֿ.if paramif, Map<String, String> paramMap)
  {
    return ˊ(paramﮈ, paramif, paramMap, null, Collections.emptyMap());
  }
  
  private static כֿ ˊ(ﮈ paramﮈ, כֿ.if paramif, Map<String, String> paramMap, String paramString, Map<String, Object> paramMap1)
  {
    return new כֿ(paramﮈ, System.currentTimeMillis(), paramif, paramMap, paramString, paramMap1);
  }
  
  public static כֿ ˋ(ﮈ paramﮈ, String paramString)
  {
    paramString = Collections.singletonMap("sessionId", paramString);
    return ˊ(paramﮈ, כֿ.if.pP, paramString);
  }
  
  public String toString()
  {
    if (this.pG == null) {
      this.pG = ("[" + getClass().getSimpleName() + ": " + "timestamp=" + this.timestamp + ", type=" + this.pC + ", details=" + this.pD.toString() + ", customType=" + this.pE + ", customAttributes=" + this.pF.toString() + ", metadata=[" + this.pB + "]]");
    }
    return this.pG;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­
 * JD-Core Version:    0.7.0.1
 */