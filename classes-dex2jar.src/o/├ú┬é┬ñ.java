package o;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.regex.Pattern;

public final class イ
  implements ٺ.if<ゞ>
{
  private static final Pattern yA = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
  private static final Pattern yB = Pattern.compile("METHOD=(NONE|AES-128)");
  private static final Pattern yC = Pattern.compile("URI=\"(.+)\"");
  private static final Pattern yD = Pattern.compile("IV=([^,.*]+)");
  private static final Pattern yE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
  private static final Pattern yF = Pattern.compile("LANGUAGE=\"(.+?)\"");
  private static final Pattern yG = Pattern.compile("NAME=\"(.+?)\"");
  private static final Pattern yH = ℓ.ᵔ("AUTOSELECT");
  private static final Pattern yI = ℓ.ᵔ("DEFAULT");
  private static final Pattern yt = Pattern.compile("BANDWIDTH=(\\d+)\\b");
  private static final Pattern yu = Pattern.compile("CODECS=\"(.+?)\"");
  private static final Pattern yv = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
  private static final Pattern yw = Pattern.compile("#EXTINF:([\\d.]+)\\b");
  private static final Pattern yx = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
  private static final Pattern yy = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
  private static final Pattern yz = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
  
  private static ἷ ˊ(イ.if paramif, String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int i = 0;
    String str = null;
    int j = -1;
    int k = -1;
    int m = 0;
    while (paramif.hasNext())
    {
      Object localObject = paramif.next();
      if (((String)localObject).startsWith("#EXT-X-MEDIA"))
      {
        if ("SUBTITLES".equals(ℓ.ˊ((String)localObject, yE, "TYPE"))) {
          localArrayList2.add(new ﻡ(ℓ.ˊ((String)localObject, yG, "NAME"), ℓ.ˊ((String)localObject, yC, "URI"), ℓ.ˊ((String)localObject, yF), ℓ.ˋ((String)localObject, yI), ℓ.ˋ((String)localObject, yH)));
        }
      }
      else if (((String)localObject).startsWith("#EXT-X-STREAM-INF"))
      {
        m = ℓ.ˋ((String)localObject, yt, "BANDWIDTH");
        str = ℓ.ˊ((String)localObject, yu);
        localObject = ℓ.ˊ((String)localObject, yv);
        if (localObject != null)
        {
          localObject = ((String)localObject).split("x");
          j = Integer.parseInt(localObject[0]);
          i = j;
          if (j <= 0) {
            i = -1;
          }
          j = Integer.parseInt(localObject[1]);
          k = j;
          if (j <= 0) {
            k = -1;
          }
          j = i;
        }
        else
        {
          j = -1;
          k = -1;
        }
        int n = 1;
        i = m;
        m = n;
      }
      else if ((!((String)localObject).startsWith("#")) && (m != 0))
      {
        localArrayList1.add(new ｚ(localArrayList1.size(), (String)localObject, i, str, j, k));
        i = 0;
        str = null;
        j = -1;
        k = -1;
        m = 0;
      }
    }
    return new ἷ(paramString, Collections.unmodifiableList(localArrayList1), Collections.unmodifiableList(localArrayList2));
  }
  
  private static ῗ ˋ(イ.if paramif, String paramString)
  {
    int i1 = 0;
    int n = 0;
    int m = 1;
    boolean bool4 = true;
    ArrayList localArrayList = new ArrayList();
    double d = 0.0D;
    boolean bool1 = false;
    long l = 0L;
    int i = 0;
    int j = -1;
    int k = 0;
    boolean bool2 = false;
    Object localObject2 = null;
    String str1 = null;
    String str2;
    do
    {
      for (;;)
      {
        bool3 = bool4;
        if (!paramif.hasNext()) {
          break label455;
        }
        str2 = paramif.next();
        if (str2.startsWith("#EXT-X-TARGETDURATION"))
        {
          n = ℓ.ˋ(str2, yy, "#EXT-X-TARGETDURATION");
        }
        else if (str2.startsWith("#EXT-X-MEDIA-SEQUENCE"))
        {
          i1 = ℓ.ˋ(str2, yx, "#EXT-X-MEDIA-SEQUENCE");
          k = i1;
        }
        else if (str2.startsWith("#EXT-X-VERSION"))
        {
          m = ℓ.ˋ(str2, yz, "#EXT-X-VERSION");
        }
        else if (str2.startsWith("#EXTINF"))
        {
          d = ℓ.ˎ(str2, yw, "#EXTINF");
        }
        else
        {
          Object localObject1;
          if (str2.startsWith("#EXT-X-KEY"))
          {
            bool2 = "AES-128".equals(ℓ.ˊ(str2, yB, "METHOD"));
            if (bool2)
            {
              localObject1 = ℓ.ˊ(str2, yC, "URI");
              str1 = ℓ.ˊ(str2, yD);
            }
            else
            {
              localObject1 = null;
              str1 = null;
            }
            localObject2 = localObject1;
          }
          else if (str2.startsWith("#EXT-X-BYTERANGE"))
          {
            localObject1 = ℓ.ˊ(str2, yA, "#EXT-X-BYTERANGE").split("@");
            j = Integer.parseInt(localObject1[0]);
            if (localObject1.length > 1) {
              i = Integer.parseInt(localObject1[1]);
            }
          }
          else if (str2.equals("#EXT-X-DISCONTINUITY"))
          {
            bool1 = true;
          }
          else
          {
            if (str2.startsWith("#")) {
              break;
            }
            if (!bool2) {
              localObject1 = null;
            } else if (str1 != null) {
              localObject1 = str1;
            } else {
              localObject1 = Integer.toHexString(k);
            }
            int i2 = k + 1;
            k = i;
            if (j == -1) {
              k = 0;
            }
            localArrayList.add(new ῗ.if(str2, d, bool1, l, bool2, localObject2, (String)localObject1, k, j));
            l += (1000000.0D * d);
            bool1 = false;
            d = 0.0D;
            i = k;
            if (j != -1) {
              i = k + j;
            }
            j = -1;
            k = i2;
          }
        }
      }
    } while (!str2.equals("#EXT-X-ENDLIST"));
    boolean bool3 = false;
    label455:
    return new ῗ(paramString, i1, n, m, bool3, Collections.unmodifiableList(localArrayList));
  }
  
  public ゞ ˊ(String paramString, InputStream paramInputStream)
  {
    paramInputStream = new BufferedReader(new InputStreamReader(paramInputStream));
    LinkedList localLinkedList = new LinkedList();
    try
    {
      for (;;)
      {
        String str = paramInputStream.readLine();
        if (str == null) {
          break;
        }
        str = str.trim();
        if (!str.isEmpty())
        {
          if (str.startsWith("#EXT-X-STREAM-INF"))
          {
            localLinkedList.add(str);
            paramString = ˊ(new イ.if(localLinkedList, paramInputStream), paramString);
            return paramString;
          }
          if ((str.startsWith("#EXT-X-TARGETDURATION")) || (str.startsWith("#EXT-X-MEDIA-SEQUENCE")) || (str.startsWith("#EXTINF")) || (str.startsWith("#EXT-X-KEY")) || (str.startsWith("#EXT-X-BYTERANGE")) || (str.equals("#EXT-X-DISCONTINUITY")) || (str.equals("#EXT-X-ENDLIST")))
          {
            localLinkedList.add(str);
            paramString = ˋ(new イ.if(localLinkedList, paramInputStream), paramString);
            return paramString;
          }
          localLinkedList.add(str);
        }
      }
    }
    finally
    {
      paramInputStream.close();
    }
    throw new ٵ("Failed to parse the playlist, could not identify any tags.");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¤
 * JD-Core Version:    0.7.0.1
 */