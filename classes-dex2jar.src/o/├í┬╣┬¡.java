package o;

import java.io.File;
import java.util.Iterator;
import java.util.List;

class ṭ
  extends py
  implements sg
{
  private final String apiKey;
  
  public ṭ(pq parampq, String paramString1, String paramString2, sq paramsq, String paramString3)
  {
    this(parampq, paramString1, paramString2, paramsq, paramString3, sm.XP);
  }
  
  ṭ(pq parampq, String paramString1, String paramString2, sq paramsq, String paramString3, sm paramsm)
  {
    super(parampq, paramString1, paramString2, paramsq, paramsm);
    this.apiKey = paramString3;
  }
  
  private sn ˊ(sn paramsn, String paramString)
  {
    return paramsn.ՙ("X-CRASHLYTICS-API-CLIENT-TYPE", "android").ՙ("X-CRASHLYTICS-API-CLIENT-VERSION", ᴣ.ᴢ().getVersion()).ՙ("X-CRASHLYTICS-API-KEY", paramString);
  }
  
  private sn ˊ(sn paramsn, List<File> paramList)
  {
    int i = 0;
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      qh.ᐝ(ᴣ.ᴢ().getContext(), "Adding analytics session file " + localFile.getName() + " to multipart POST");
      paramsn.ˊ("session_analytics_file_" + i, localFile.getName(), "application/vnd.crashlytics.android.events", localFile);
      i += 1;
    }
    return paramsn;
  }
  
  public boolean ʼ(List<File> paramList)
  {
    sn localsn = ˊ(ˊ(ck(), this.apiKey), paramList);
    qh.ᐝ(ᴣ.ᴢ().getContext(), "Sending " + paramList.size() + " analytics files to " + getUrl());
    int i = localsn.code();
    qh.ᐝ(ᴣ.ᴢ().getContext(), "Response code for analytics file send is " + i);
    return qw.灬(i) == 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¹­
 * JD-Core Version:    0.7.0.1
 */