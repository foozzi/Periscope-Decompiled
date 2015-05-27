package o;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;

@TargetApi(19)
public class ᒪ
  implements ᒥ
{
  private static final Bitmap.Config[] iI = { Bitmap.Config.ARGB_8888, null };
  private static final Bitmap.Config[] iJ = { Bitmap.Config.RGB_565 };
  private static final Bitmap.Config[] iK = { Bitmap.Config.ARGB_4444 };
  private static final Bitmap.Config[] iL = { Bitmap.Config.ALPHA_8 };
  private final ᒪ.ˊ iM = new ᒪ.ˊ();
  private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> iN = new HashMap();
  private final Ꮮ<ᒪ.if, Bitmap> im = new Ꮮ();
  
  private static String ˊ(int paramInt, Bitmap.Config paramConfig)
  {
    return "[" + paramInt + "](" + paramConfig + ")";
  }
  
  private NavigableMap<Integer, Integer> ˊ(Bitmap.Config paramConfig)
  {
    NavigableMap localNavigableMap = (NavigableMap)this.iN.get(paramConfig);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      this.iN.put(paramConfig, localObject);
    }
    return localObject;
  }
  
  private ᒪ.if ˊ(ᒪ.if paramif, int paramInt, Bitmap.Config paramConfig)
  {
    Bitmap.Config[] arrayOfConfig = ˋ(paramConfig);
    int j = arrayOfConfig.length;
    int i = 0;
    while (i < j)
    {
      Bitmap.Config localConfig = arrayOfConfig[i];
      Integer localInteger = (Integer)ˊ(localConfig).ceilingKey(Integer.valueOf(paramInt));
      if ((localInteger != null) && (localInteger.intValue() <= paramInt * 8))
      {
        if ((localInteger.intValue() == paramInt) && (localConfig == null ? paramConfig == null : localConfig.equals(paramConfig))) {
          break;
        }
        this.iM.ˊ(paramif);
        return this.iM.ˏ(localInteger.intValue(), localConfig);
      }
      i += 1;
    }
    return paramif;
  }
  
  private void ˊ(Integer paramInteger, Bitmap.Config paramConfig)
  {
    paramConfig = ˊ(paramConfig);
    Integer localInteger = (Integer)paramConfig.get(paramInteger);
    if (localInteger.intValue() == 1)
    {
      paramConfig.remove(paramInteger);
      return;
    }
    paramConfig.put(paramInteger, Integer.valueOf(localInteger.intValue() - 1));
  }
  
  private static Bitmap.Config[] ˋ(Bitmap.Config paramConfig)
  {
    switch (ᒪ.1.iO[paramConfig.ordinal()])
    {
    default: 
      break;
    case 1: 
      return iI;
    case 2: 
      return iJ;
    case 3: 
      return iK;
    case 4: 
      return iL;
    }
    return new Bitmap.Config[] { paramConfig };
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("SizeConfigStrategy{groupedMap=").append(this.im).append(", sortedSizes=(");
    Iterator localIterator = this.iN.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append(localEntry.getKey()).append('[').append(localEntry.getValue()).append("], ");
    }
    if (!this.iN.isEmpty()) {
      localStringBuilder.replace(localStringBuilder.length() - 2, localStringBuilder.length(), "");
    }
    return ")}";
  }
  
  public int ʻ(Bitmap paramBitmap)
  {
    return ﾕ.ˉ(paramBitmap);
  }
  
  public Bitmap ˋ(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    int i = ﾕ.ͺ(paramInt1, paramInt2, paramConfig);
    paramConfig = ˊ(this.iM.ˏ(i, paramConfig), i, paramConfig);
    Bitmap localBitmap = (Bitmap)this.im.ˋ(paramConfig);
    if (localBitmap != null)
    {
      ˊ(Integer.valueOf(ﾕ.ˉ(localBitmap)), localBitmap.getConfig());
      if (localBitmap.getConfig() != null) {
        paramConfig = localBitmap.getConfig();
      } else {
        paramConfig = Bitmap.Config.ARGB_8888;
      }
      localBitmap.reconfigure(paramInt1, paramInt2, paramConfig);
    }
    return localBitmap;
  }
  
  public String ˎ(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return ˊ(ﾕ.ͺ(paramInt1, paramInt2, paramConfig), paramConfig);
  }
  
  public void ˏ(Bitmap paramBitmap)
  {
    int i = ﾕ.ˉ(paramBitmap);
    ᒪ.if localif = this.iM.ˏ(i, paramBitmap.getConfig());
    this.im.ˊ(localif, paramBitmap);
    paramBitmap = ˊ(paramBitmap.getConfig());
    Integer localInteger = (Integer)paramBitmap.get(Integer.valueOf(ᒪ.if.ˊ(localif)));
    int j = ᒪ.if.ˊ(localif);
    if (localInteger == null) {
      i = 1;
    } else {
      i = localInteger.intValue() + 1;
    }
    paramBitmap.put(Integer.valueOf(j), Integer.valueOf(i));
  }
  
  public String ᐝ(Bitmap paramBitmap)
  {
    return ˊ(ﾕ.ˉ(paramBitmap), paramBitmap.getConfig());
  }
  
  public Bitmap ᒨ()
  {
    Bitmap localBitmap = (Bitmap)this.im.removeLast();
    if (localBitmap != null) {
      ˊ(Integer.valueOf(ﾕ.ˉ(localBitmap)), localBitmap.getConfig());
    }
    return localBitmap;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áª
 * JD-Core Version:    0.7.0.1
 */