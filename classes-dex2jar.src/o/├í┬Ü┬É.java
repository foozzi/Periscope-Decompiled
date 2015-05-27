package o;

import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Build.VERSION;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ᚐ
{
  private static final ŧ pe = ŧ.ˈ("0");
  private final Context dV;
  private ActivityManager.RunningAppProcessInfo pf;
  private Thread[] pg;
  private List<StackTraceElement[]> ph;
  private StackTraceElement[] pi;
  private final ŧ pj;
  private final ŧ pk;
  private final int pl = 8;
  
  public ᚐ(Context paramContext, String paramString1, String paramString2)
  {
    this.dV = paramContext;
    this.pj = ŧ.ˈ(paramString2);
    if (paramString1 == null) {
      paramContext = null;
    } else {
      paramContext = ŧ.ˈ(paramString1.replace("-", ""));
    }
    this.pk = paramContext;
  }
  
  private int ˊ(float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
  {
    return ɤ.ˋ(1, paramFloat) + 0 + ɤ.ˣ(2, paramInt1) + ɤ.ـ(3, paramBoolean) + ɤ.ʲ(4, paramInt2) + ɤ.ˋ(5, paramLong1) + ɤ.ˋ(6, paramLong2);
  }
  
  private int ˊ(int paramInt1, ŧ paramŧ1, ŧ paramŧ2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<qr.if, String> paramMap, int paramInt3, ŧ paramŧ3, ŧ paramŧ4)
  {
    int i = ɤ.ˋ(1, paramŧ1);
    int j = ɤ.ː(3, paramInt1);
    if (paramŧ2 == null) {
      paramInt1 = 0;
    } else {
      paramInt1 = ɤ.ˋ(4, paramŧ2);
    }
    paramInt1 = i + 0 + j + paramInt1 + ɤ.ʲ(5, paramInt2) + ɤ.ˋ(6, paramLong1) + ɤ.ˋ(7, paramLong2) + ɤ.ـ(10, paramBoolean);
    paramInt2 = paramInt1;
    if (paramMap != null)
    {
      paramŧ1 = paramMap.entrySet().iterator();
      for (;;)
      {
        paramInt2 = paramInt1;
        if (!paramŧ1.hasNext()) {
          break;
        }
        paramŧ2 = (Map.Entry)paramŧ1.next();
        paramInt2 = ˊ((qr.if)paramŧ2.getKey(), (String)paramŧ2.getValue());
        paramInt1 += ɤ.ﯾ(11) + ɤ.ﺗ(paramInt2) + paramInt2;
      }
    }
    i = ɤ.ʲ(12, paramInt3);
    if (paramŧ3 == null) {
      paramInt1 = 0;
    } else {
      paramInt1 = ɤ.ˋ(13, paramŧ3);
    }
    if (paramŧ4 == null) {
      paramInt3 = 0;
    } else {
      paramInt3 = ɤ.ˋ(14, paramŧ4);
    }
    return paramInt2 + i + paramInt1 + paramInt3;
  }
  
  private int ˊ(StackTraceElement paramStackTraceElement, boolean paramBoolean)
  {
    if (paramStackTraceElement.isNativeMethod()) {
      i = ɤ.ˋ(1, Math.max(paramStackTraceElement.getLineNumber(), 0)) + 0;
    } else {
      i = ɤ.ˋ(1, 0L) + 0;
    }
    int j = i + ɤ.ˋ(2, ŧ.ˈ(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
    int i = j;
    if (paramStackTraceElement.getFileName() != null) {
      i = j + ɤ.ˋ(3, ŧ.ˈ(paramStackTraceElement.getFileName()));
    }
    j = i;
    if (!paramStackTraceElement.isNativeMethod())
    {
      j = i;
      if (paramStackTraceElement.getLineNumber() > 0) {
        j = i + ɤ.ˋ(4, paramStackTraceElement.getLineNumber());
      }
    }
    if (paramBoolean) {
      i = 2;
    } else {
      i = 0;
    }
    return j + ɤ.ʲ(5, i);
  }
  
  private int ˊ(Thread paramThread, Throwable paramThrowable, int paramInt, Map<String, String> paramMap)
  {
    int i = ˋ(paramThread, paramThrowable);
    int j = ɤ.ﯾ(1) + ɤ.ﺗ(i) + i + 0;
    i = j;
    if (paramMap != null)
    {
      paramThread = paramMap.entrySet().iterator();
      for (;;)
      {
        i = j;
        if (!paramThread.hasNext()) {
          break;
        }
        paramThrowable = (Map.Entry)paramThread.next();
        i = ᐝ((String)paramThrowable.getKey(), (String)paramThrowable.getValue());
        j += ɤ.ﯾ(2) + ɤ.ﺗ(i) + i;
      }
    }
    j = i;
    if (this.pf != null)
    {
      boolean bool;
      if (this.pf.importance != 100) {
        bool = true;
      } else {
        bool = false;
      }
      j = i + ɤ.ـ(3, bool);
    }
    return j + ɤ.ʲ(4, paramInt);
  }
  
  private int ˊ(Thread paramThread, Throwable paramThrowable, String paramString, long paramLong1, Map<String, String> paramMap, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong2, long paramLong3, ŧ paramŧ)
  {
    int i = ɤ.ˋ(1, paramLong1);
    int j = ɤ.ˋ(2, ŧ.ˈ(paramString));
    int k = ˊ(paramThread, paramThrowable, paramInt2, paramMap);
    int m = ɤ.ﯾ(3);
    int n = ɤ.ﺗ(k);
    paramInt1 = ˊ(paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3);
    paramInt2 = i + 0 + j + (m + n + k) + (ɤ.ﯾ(5) + ɤ.ﺗ(paramInt1) + paramInt1);
    paramInt1 = paramInt2;
    if (paramŧ != null)
    {
      paramInt1 = ˏ(paramŧ);
      paramInt1 = paramInt2 + (ɤ.ﯾ(6) + ɤ.ﺗ(paramInt1) + paramInt1);
    }
    return paramInt1;
  }
  
  private int ˊ(Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
  {
    int i = ɤ.ˋ(1, ŧ.ˈ(paramThread.getName())) + ɤ.ʲ(2, paramInt);
    int j = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < j)
    {
      int k = ˊ(paramArrayOfStackTraceElement[paramInt], paramBoolean);
      i += ɤ.ﯾ(3) + ɤ.ﺗ(k) + k;
      paramInt += 1;
    }
    return i;
  }
  
  private int ˊ(Throwable paramThrowable, int paramInt)
  {
    int j = ɤ.ˋ(1, ŧ.ˈ(paramThrowable.getClass().getName())) + 0;
    Object localObject = paramThrowable.getLocalizedMessage();
    int i = j;
    if (localObject != null) {
      i = j + ɤ.ˋ(3, ŧ.ˈ((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int k = localObject.length;
    j = 0;
    while (j < k)
    {
      int m = ˊ(localObject[j], true);
      i += ɤ.ﯾ(4) + ɤ.ﺗ(m) + m;
      j += 1;
    }
    paramThrowable = paramThrowable.getCause();
    j = i;
    if (paramThrowable != null)
    {
      if (paramInt < this.pl)
      {
        paramInt = ˊ(paramThrowable, paramInt + 1);
        return i + (ɤ.ﯾ(6) + ɤ.ﺗ(paramInt) + paramInt);
      }
      paramInt = 0;
      while (paramThrowable != null)
      {
        paramThrowable = paramThrowable.getCause();
        paramInt += 1;
      }
      j = i + ɤ.ʲ(7, paramInt);
    }
    return j;
  }
  
  private int ˊ(qr.if paramif, String paramString)
  {
    return ɤ.ː(1, paramif.Wm) + ɤ.ˋ(2, ŧ.ˈ(paramString));
  }
  
  private int ˊ(ŧ paramŧ1, ŧ paramŧ2, ŧ paramŧ3, ŧ paramŧ4, int paramInt)
  {
    int i = ɤ.ˋ(1, paramŧ1);
    int j = ɤ.ˋ(2, paramŧ2);
    int k = ɤ.ˋ(3, paramŧ3);
    int m = ᚐ();
    return i + 0 + j + k + (ɤ.ﯾ(5) + ɤ.ﺗ(m) + m) + ɤ.ˋ(6, paramŧ4) + ɤ.ː(10, paramInt);
  }
  
  private int ˊ(ŧ paramŧ1, ŧ paramŧ2, boolean paramBoolean)
  {
    return ɤ.ː(1, 3) + 0 + ɤ.ˋ(2, paramŧ1) + ɤ.ˋ(3, paramŧ2) + ɤ.ـ(4, paramBoolean);
  }
  
  private void ˊ(ɤ paramɤ, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
  {
    paramɤ.ו(5, 2);
    paramɤ.ﹰ(ˊ(paramFloat, paramInt1, paramBoolean, paramInt2, paramLong1, paramLong2));
    paramɤ.ˊ(1, paramFloat);
    paramɤ.ı(2, paramInt1);
    paramɤ.ˑ(3, paramBoolean);
    paramɤ.ᵗ(4, paramInt2);
    paramɤ.ˊ(5, paramLong1);
    paramɤ.ˊ(6, paramLong2);
  }
  
  private void ˊ(ɤ paramɤ, int paramInt, StackTraceElement paramStackTraceElement, boolean paramBoolean)
  {
    paramɤ.ו(paramInt, 2);
    paramɤ.ﹰ(ˊ(paramStackTraceElement, paramBoolean));
    if (paramStackTraceElement.isNativeMethod()) {
      paramɤ.ˊ(1, Math.max(paramStackTraceElement.getLineNumber(), 0));
    } else {
      paramɤ.ˊ(1, 0L);
    }
    paramɤ.ˊ(2, ŧ.ˈ(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
    if (paramStackTraceElement.getFileName() != null) {
      paramɤ.ˊ(3, ŧ.ˈ(paramStackTraceElement.getFileName()));
    }
    if ((!paramStackTraceElement.isNativeMethod()) && (paramStackTraceElement.getLineNumber() > 0)) {
      paramɤ.ˊ(4, paramStackTraceElement.getLineNumber());
    }
    if (paramBoolean) {
      paramInt = 4;
    } else {
      paramInt = 0;
    }
    paramɤ.ᵗ(5, paramInt);
  }
  
  private void ˊ(ɤ paramɤ, Thread paramThread, Throwable paramThrowable)
  {
    paramɤ.ו(1, 2);
    paramɤ.ﹰ(ˋ(paramThread, paramThrowable));
    ˊ(paramɤ, paramThread, this.pi, 4, true);
    int j = this.pg.length;
    int i = 0;
    while (i < j)
    {
      ˊ(paramɤ, this.pg[i], (StackTraceElement[])this.ph.get(i), 0, false);
      i += 1;
    }
    ˊ(paramɤ, paramThrowable, 1, 2);
    paramɤ.ו(3, 2);
    paramɤ.ﹰ(ᴏ());
    paramɤ.ˊ(1, pe);
    paramɤ.ˊ(2, pe);
    paramɤ.ˊ(3, 0L);
    paramɤ.ו(4, 2);
    paramɤ.ﹰ(ᴈ());
    paramɤ.ˊ(1, 0L);
    paramɤ.ˊ(2, 0L);
    paramɤ.ˊ(3, this.pj);
    if (this.pk != null) {
      paramɤ.ˊ(4, this.pk);
    }
  }
  
  private void ˊ(ɤ paramɤ, Thread paramThread, Throwable paramThrowable, int paramInt, Map<String, String> paramMap)
  {
    paramɤ.ו(3, 2);
    paramɤ.ﹰ(ˊ(paramThread, paramThrowable, paramInt, paramMap));
    ˊ(paramɤ, paramThread, paramThrowable);
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      ˊ(paramɤ, paramMap);
    }
    if (this.pf != null)
    {
      boolean bool;
      if (this.pf.importance != 100) {
        bool = true;
      } else {
        bool = false;
      }
      paramɤ.ˑ(3, bool);
    }
    paramɤ.ᵗ(4, paramInt);
  }
  
  private void ˊ(ɤ paramɤ, Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
  {
    paramɤ.ו(1, 2);
    paramɤ.ﹰ(ˊ(paramThread, paramArrayOfStackTraceElement, paramInt, paramBoolean));
    paramɤ.ˊ(1, ŧ.ˈ(paramThread.getName()));
    paramɤ.ᵗ(2, paramInt);
    int i = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < i)
    {
      ˊ(paramɤ, 3, paramArrayOfStackTraceElement[paramInt], paramBoolean);
      paramInt += 1;
    }
  }
  
  private void ˊ(ɤ paramɤ, Throwable paramThrowable, int paramInt1, int paramInt2)
  {
    paramɤ.ו(paramInt2, 2);
    paramɤ.ﹰ(ˊ(paramThrowable, 1));
    paramɤ.ˊ(1, ŧ.ˈ(paramThrowable.getClass().getName()));
    Object localObject = paramThrowable.getLocalizedMessage();
    if (localObject != null) {
      paramɤ.ˊ(3, ŧ.ˈ((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int i = localObject.length;
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      ˊ(paramɤ, 4, localObject[paramInt2], true);
      paramInt2 += 1;
    }
    paramThrowable = paramThrowable.getCause();
    if (paramThrowable != null)
    {
      if (paramInt1 < this.pl)
      {
        ˊ(paramɤ, paramThrowable, paramInt1 + 1, 6);
        return;
      }
      paramInt1 = 0;
      while (paramThrowable != null)
      {
        paramThrowable = paramThrowable.getCause();
        paramInt1 += 1;
      }
      paramɤ.ᵗ(7, paramInt1);
    }
  }
  
  private void ˊ(ɤ paramɤ, Map<String, String> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      paramɤ.ו(2, 2);
      paramɤ.ﹰ(ᐝ((String)paramMap.getKey(), (String)paramMap.getValue()));
      paramɤ.ˊ(1, ŧ.ˈ((String)paramMap.getKey()));
      paramMap = (String)paramMap.getValue();
      if (paramMap == null) {
        paramMap = "";
      }
      paramɤ.ˊ(2, ŧ.ˈ(paramMap));
    }
  }
  
  private void ˊ(ɤ paramɤ, ŧ paramŧ)
  {
    if (paramŧ != null)
    {
      paramɤ.ו(6, 2);
      paramɤ.ﹰ(ˏ(paramŧ));
      paramɤ.ˊ(1, paramŧ);
    }
  }
  
  private int ˋ(Thread paramThread, Throwable paramThrowable)
  {
    int i = ˊ(paramThread, this.pi, 4, true);
    i = ɤ.ﯾ(1) + ɤ.ﺗ(i) + i + 0;
    int k = this.pg.length;
    int j = 0;
    while (j < k)
    {
      m = ˊ(this.pg[j], (StackTraceElement[])this.ph.get(j), 0, false);
      i += ɤ.ﯾ(1) + ɤ.ﺗ(m) + m;
      j += 1;
    }
    j = ˊ(paramThrowable, 1);
    k = ɤ.ﯾ(2);
    int m = ɤ.ﺗ(j);
    int n = ᴏ();
    int i1 = ɤ.ﯾ(3);
    int i2 = ɤ.ﺗ(n);
    int i3 = ᴈ();
    return i + (k + m + j) + (i1 + i2 + n) + (ɤ.ﯾ(3) + ɤ.ﺗ(i3) + i3);
  }
  
  private int ˏ(ŧ paramŧ)
  {
    return ɤ.ˋ(1, paramŧ);
  }
  
  private ŧ י(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return ŧ.ˈ(paramString);
  }
  
  private int ᐝ(String paramString1, String paramString2)
  {
    int i = ɤ.ˋ(1, ŧ.ˈ(paramString1));
    if (paramString2 == null) {
      paramString2 = "";
    }
    return i + ɤ.ˋ(2, ŧ.ˈ(paramString2));
  }
  
  private int ᚐ()
  {
    return ɤ.ˋ(1, ŧ.ˈ(new qf().ᐠ(this.dV))) + 0;
  }
  
  private int ᴈ()
  {
    int j = ɤ.ˋ(1, 0L) + 0 + ɤ.ˋ(2, 0L) + ɤ.ˋ(3, this.pj);
    int i = j;
    if (this.pk != null) {
      i = j + ɤ.ˋ(4, this.pk);
    }
    return i;
  }
  
  private int ᴏ()
  {
    return ɤ.ˋ(1, pe) + 0 + ɤ.ˋ(2, pe) + ɤ.ˋ(3, 0L);
  }
  
  public void ˊ(ɤ paramɤ, long paramLong1, Thread paramThread, Throwable paramThrowable, String paramString, Thread[] paramArrayOfThread, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong2, long paramLong3, ActivityManager.RunningAppProcessInfo paramRunningAppProcessInfo, List<StackTraceElement[]> paramList, StackTraceElement[] paramArrayOfStackTraceElement, ᔂ paramᔂ, Map<String, String> paramMap)
  {
    this.pf = paramRunningAppProcessInfo;
    this.ph = paramList;
    this.pi = paramArrayOfStackTraceElement;
    this.pg = paramArrayOfThread;
    paramArrayOfThread = paramᔂ.ᓗ();
    if (paramArrayOfThread == null) {
      pj.cd().ˑ("Fabric", "No log data to include with this event.");
    }
    paramᔂ.ᓚ();
    paramɤ.ו(10, 2);
    paramɤ.ﹰ(ˊ(paramThread, paramThrowable, paramString, paramLong1, paramMap, paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3, paramArrayOfThread));
    paramɤ.ˊ(1, paramLong1);
    paramɤ.ˊ(2, ŧ.ˈ(paramString));
    ˊ(paramɤ, paramThread, paramThrowable, paramInt2, paramMap);
    ˊ(paramɤ, paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3);
    ˊ(paramɤ, paramArrayOfThread);
  }
  
  public void ˊ(ɤ paramɤ, String paramString1, int paramInt1, String paramString2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<qr.if, String> paramMap, int paramInt3, String paramString3, String paramString4)
  {
    paramString1 = ŧ.ˈ(paramString1);
    ŧ localŧ = י(paramString2);
    paramString2 = י(paramString4);
    paramString3 = י(paramString3);
    paramɤ.ו(9, 2);
    paramɤ.ﹰ(ˊ(paramInt1, paramString1, localŧ, paramInt2, paramLong1, paramLong2, paramBoolean, paramMap, paramInt3, paramString3, paramString2));
    paramɤ.ˊ(1, paramString1);
    paramɤ.ﾟ(3, paramInt1);
    paramɤ.ˊ(4, localŧ);
    paramɤ.ᵗ(5, paramInt2);
    paramɤ.ˊ(6, paramLong1);
    paramɤ.ˊ(7, paramLong2);
    paramɤ.ˑ(10, paramBoolean);
    paramString1 = paramMap.entrySet().iterator();
    while (paramString1.hasNext())
    {
      paramMap = (Map.Entry)paramString1.next();
      paramɤ.ו(11, 2);
      paramɤ.ﹰ(ˊ((qr.if)paramMap.getKey(), (String)paramMap.getValue()));
      paramɤ.ﾟ(1, ((qr.if)paramMap.getKey()).Wm);
      paramɤ.ˊ(2, ŧ.ˈ((String)paramMap.getValue()));
    }
    paramɤ.ᵗ(12, paramInt3);
    if (paramString3 != null) {
      paramɤ.ˊ(13, paramString3);
    }
    if (paramString2 != null) {
      paramɤ.ˊ(14, paramString2);
    }
  }
  
  public void ˊ(ɤ paramɤ, String paramString1, String paramString2, long paramLong)
  {
    paramɤ.ˊ(1, ŧ.ˈ(paramString2));
    paramɤ.ˊ(2, ŧ.ˈ(paramString1));
    paramɤ.ˊ(3, paramLong);
  }
  
  public void ˊ(ɤ paramɤ, String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null) {
      paramString1 = "";
    }
    paramString1 = ŧ.ˈ(paramString1);
    ŧ localŧ1 = י(paramString2);
    ŧ localŧ2 = י(paramString3);
    int j = ɤ.ˋ(1, paramString1) + 0;
    int i = j;
    if (paramString2 != null) {
      i = j + ɤ.ˋ(2, localŧ1);
    }
    j = i;
    if (paramString3 != null) {
      j = i + ɤ.ˋ(3, localŧ2);
    }
    paramɤ.ו(6, 2);
    paramɤ.ﹰ(j);
    paramɤ.ˊ(1, paramString1);
    if (paramString2 != null) {
      paramɤ.ˊ(2, localŧ1);
    }
    if (paramString3 != null) {
      paramɤ.ˊ(3, localŧ2);
    }
  }
  
  public void ˊ(ɤ paramɤ, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    paramString1 = ŧ.ˈ(paramString1);
    paramString2 = ŧ.ˈ(paramString2);
    paramString3 = ŧ.ˈ(paramString3);
    paramString4 = ŧ.ˈ(paramString4);
    paramɤ.ו(7, 2);
    paramɤ.ﹰ(ˊ(paramString1, paramString2, paramString3, paramString4, paramInt));
    paramɤ.ˊ(1, paramString1);
    paramɤ.ˊ(2, paramString2);
    paramɤ.ˊ(3, paramString3);
    paramɤ.ו(5, 2);
    paramɤ.ﹰ(ᚐ());
    paramɤ.ˊ(1, new qf().ᐠ(this.dV));
    paramɤ.ˊ(6, paramString4);
    paramɤ.ﾟ(10, paramInt);
  }
  
  public void ˊ(ɤ paramɤ, boolean paramBoolean)
  {
    ŧ localŧ1 = ŧ.ˈ(Build.VERSION.RELEASE);
    ŧ localŧ2 = ŧ.ˈ(Build.VERSION.CODENAME);
    paramɤ.ו(8, 2);
    paramɤ.ﹰ(ˊ(localŧ1, localŧ2, paramBoolean));
    paramɤ.ﾟ(1, 3);
    paramɤ.ˊ(2, localŧ1);
    paramɤ.ˊ(3, localŧ2);
    paramɤ.ˑ(4, paramBoolean);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */