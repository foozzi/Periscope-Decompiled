package o;

import java.util.HashSet;
import java.util.Set;

class ﻌ
{
  static final ﻌ.if[] EP = { ﻌ.ˌ.EU[0], ﻌ.ˍ.EU[0], ﻌ.ʿ.EU[0], ﻌ.ʴ.EU[0], ﻌ.ᕀ.EU[0], ﻌ.ﹺ.EU[0], ﻌ.con.EU[0], ﻌ.יִ.EU[0], ﻌ.ʳ.EU[0], ﻌ.ｰ.EU[0], ﻌ.ʾ.EU[0], ﻌ.ʽ.EU[0], ﻌ.ˈ.EU[0], ﻌ.ˮ.EU[0], ﻌ.ʼ.EU[0], ﻌ.ˉ.EU[0], ﻌ.ٴ.EU[0], ﻌ.ᵣ.EU[0], ﻌ.ᐨ.EU[0], ﻌ.ﹳ.EU[0], ﻌ.ـ.EU[0], ﻌ.ᑊ.EU[0], ﻌ.ˎ.EU[0], ﻌ.ˊ.EU[0], ﻌ.ˋ.EU[0], ﻌ.ᐧ.EU[0], ﻌ.ᵔ.EU[0], ﻌ.ᐣ.EU[0], ﻌ.ᐩ.EU[0], ﻌ.ι.EU[0], ﻌ.ᐝ.EU[0], ﻌ.ⁱ.EU[0], ﻌ.ⁱ.EU[1], ﻌ.ۥ.EU[0], ﻌ.ˡ.EU[0], ﻌ.ᵢ.EU[0], ﻌ.ᵎ.EU[0], ﻌ.ՙ.EU[0], ﻌ.aux.EU[0], ﻌ.ˑ.EU[0], ﻌ.ˑ.EU[1], ﻌ.יּ.EU[0], ﻌ.ˏ.EU[0], ﻌ.ᐠ.EU[0], ﻌ.ˆ.EU[0], ﻌ.ᵕ.EU[0], ﻌ.ˇ.EU[0], ﻌ.ʻ.EU[0], ﻌ.ﾞ.EU[0], ﻌ.ʹ.EU[0], ﻌ.ͺ.EU[0] };
  static final ﻌ.if[] EQ = ˊ(new ﻌ.if[][] { ﻌ.ˌ.EU, ﻌ.ˍ.EU, ﻌ.ﹶ.EU, ﻌ.ʿ.EU, ﻌ.ʴ.EU, ﻌ.ᕀ.EU, ﻌ.ﹺ.EU, ﻌ.con.EU, ﻌ.יִ.EU, ﻌ.ʳ.EU, ﻌ.ｰ.EU, ﻌ.ʾ.EU, ﻌ.ʽ.EU, ﻌ.ˈ.EU, ﻌ.ˮ.EU, ﻌ.ʼ.EU, ﻌ.ˉ.EU, ﻌ.ٴ.EU, ﻌ.ᵣ.EU, ﻌ.ᐨ.EU, ﻌ.ﹳ.EU, ﻌ.ـ.EU, ﻌ.ᑊ.EU, ﻌ.ˎ.EU, ﻌ.ˊ.EU, ﻌ.ˋ.EU, ﻌ.ᐧ.EU, ﻌ.ᵔ.EU, ﻌ.ᐣ.EU, ﻌ.ᐩ.EU, ﻌ.ι.EU, ﻌ.ᐝ.EU, ﻌ.ⁱ.EU, ﻌ.ۥ.EU, ﻌ.ˡ.EU, ﻌ.ᵢ.EU, ﻌ.ᵎ.EU, ﻌ.ՙ.EU, ﻌ.aux.EU, ﻌ.ˑ.EU, ﻌ.יּ.EU, ﻌ.ˏ.EU, ﻌ.ᐠ.EU, ﻌ.ˆ.EU, ﻌ.ᵕ.EU, ﻌ.ˇ.EU, ﻌ.ʻ.EU, ﻌ.ﾞ.EU, ﻌ.ʹ.EU, ﻌ.ͺ.EU });
  private static Set<ﻌ.if> ER;
  private static Set<ﻌ.if> ES;
  
  private static Set<ﻌ.if> ˊ(ﻌ.if[] paramArrayOfif)
  {
    HashSet localHashSet = new HashSet(paramArrayOfif.length);
    int j = paramArrayOfif.length;
    int i = 0;
    while (i < j)
    {
      localHashSet.add(paramArrayOfif[i]);
      i += 1;
    }
    return localHashSet;
  }
  
  static ﻌ.if[] ˊ(ﻌ.if[]... paramVarArgs)
  {
    int j = 0;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    ﻌ.if[] arrayOfif1 = new ﻌ.if[j];
    i = 0;
    int n = paramVarArgs.length;
    j = 0;
    while (j < n)
    {
      ﻌ.if[] arrayOfif2 = paramVarArgs[j];
      k = 0;
      while (k < arrayOfif2.length)
      {
        int m = i + 1;
        arrayOfif1[i] = arrayOfif2[k];
        k += 1;
        i = m;
      }
      j += 1;
    }
    return arrayOfif1;
  }
  
  static Set<ﻌ.if> Ⅱ()
  {
    if (ER == null) {
      ER = ˊ(EQ);
    }
    return ER;
  }
  
  static Set<ﻌ.if> ⅱ()
  {
    if (ES == null) {
      ES = ˊ(EP);
    }
    return ES;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï»
 * JD-Core Version:    0.7.0.1
 */