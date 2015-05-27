package o;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ᓻ
  extends py
  implements ᓺ
{
  public ᓻ(pq parampq, String paramString1, String paramString2, sq paramsq)
  {
    super(parampq, paramString1, paramString2, paramsq, sm.XP);
  }
  
  private sn ˊ(sn paramsn, ᓚ paramᓚ)
  {
    paramsn = paramsn.ՙ("X-CRASHLYTICS-API-KEY", paramᓚ.apiKey).ՙ("X-CRASHLYTICS-API-CLIENT-TYPE", "android").ՙ("X-CRASHLYTICS-API-CLIENT-VERSION", ɬ.ｿ().getVersion());
    paramᓚ = paramᓚ.ox.ᔦ().entrySet().iterator();
    while (paramᓚ.hasNext()) {
      paramsn = paramsn.ˎ((Map.Entry)paramᓚ.next());
    }
    return paramsn;
  }
  
  private sn ˋ(sn paramsn, ᓚ paramᓚ)
  {
    paramᓚ = paramᓚ.ox;
    return paramsn.ˊ("report[file]", paramᓚ.getFileName(), "application/octet-stream", paramᓚ.ᔃ()).ᵎ("report[identifier]", paramᓚ.ｯ());
  }
  
  public boolean ˊ(ᓚ paramᓚ)
  {
    paramᓚ = ˋ(ˊ(ck(), paramᓚ), paramᓚ);
    pj.cd().ˑ("Fabric", "Sending report to: " + getUrl());
    int i = paramᓚ.code();
    pj.cd().ˑ("Fabric", "Create report request ID: " + paramᓚ.header("X-REQUEST-ID"));
    pj.cd().ˑ("Fabric", "Result was: " + i);
    return qw.灬(i) == 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»
 * JD-Core Version:    0.7.0.1
 */