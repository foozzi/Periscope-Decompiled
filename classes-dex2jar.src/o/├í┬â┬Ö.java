package o;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.List;

public final class კ
{
  private static Point ˊ(Display paramDisplay)
  {
    Point localPoint = new Point();
    if (ผ.SDK_INT >= 17)
    {
      ˊ(paramDisplay, localPoint);
      return localPoint;
    }
    if (ผ.SDK_INT >= 16)
    {
      ˋ(paramDisplay, localPoint);
      return localPoint;
    }
    ˎ(paramDisplay, localPoint);
    return localPoint;
  }
  
  private static Point ˊ(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int m = paramInt1;
    int j = paramInt2;
    if (paramBoolean)
    {
      int i;
      if (paramInt3 > paramInt4) {
        i = 1;
      } else {
        i = 0;
      }
      int k;
      if (paramInt1 > paramInt2) {
        k = 1;
      } else {
        k = 0;
      }
      m = paramInt1;
      j = paramInt2;
      if (i != k)
      {
        j = paramInt1;
        m = paramInt2;
      }
    }
    if (paramInt3 * j >= paramInt4 * m) {
      return new Point(m, ผ.Ꭵ(m * paramInt4, paramInt3));
    }
    return new Point(ผ.Ꭵ(j * paramInt3, paramInt4), j);
  }
  
  @TargetApi(17)
  private static void ˊ(Display paramDisplay, Point paramPoint)
  {
    paramDisplay.getRealSize(paramPoint);
  }
  
  private static boolean ˊ(ব paramব, String[] paramArrayOfString, boolean paramBoolean, int paramInt)
  {
    if ((paramArrayOfString != null) && (!ผ.ˊ(paramArrayOfString, paramব.mimeType))) {
      return false;
    }
    if ((paramBoolean) && ((paramব.width >= 1280) || (paramব.height >= 720))) {
      return false;
    }
    return (paramব.width <= 0) || (paramব.height <= 0) || (paramব.width * paramব.height <= paramInt);
  }
  
  public static int[] ˊ(Context paramContext, List<? extends শ> paramList, String[] paramArrayOfString, boolean paramBoolean)
  {
    paramContext = ˊ(((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay());
    return ˊ(paramList, paramArrayOfString, paramBoolean, true, paramContext.x, paramContext.y);
  }
  
  public static int[] ˊ(List<? extends শ> paramList, String[] paramArrayOfString, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2)
  {
    int i = 2147483647;
    ArrayList localArrayList = new ArrayList();
    int n = ԁ.з();
    int i1 = paramList.size();
    int j = 0;
    while (j < i1)
    {
      ব localব = ((শ)paramList.get(j)).ᐴ();
      int k = i;
      if (ˊ(localব, paramArrayOfString, paramBoolean1, n))
      {
        localArrayList.add(Integer.valueOf(j));
        k = i;
        if (localব.width > 0)
        {
          k = i;
          if (localব.height > 0)
          {
            Point localPoint = ˊ(paramBoolean2, paramInt1, paramInt2, localব.width, localব.height);
            int m = localব.width * localব.height;
            k = i;
            if (localব.width >= (int)(localPoint.x * 0.98F))
            {
              k = i;
              if (localব.height >= (int)(localPoint.y * 0.98F))
              {
                k = i;
                if (m < i) {
                  k = m;
                }
              }
            }
          }
        }
      }
      j += 1;
      i = k;
    }
    paramInt1 = localArrayList.size() - 1;
    while (paramInt1 >= 0)
    {
      paramArrayOfString = ((শ)paramList.get(paramInt1)).ᐴ();
      if ((paramArrayOfString.width > 0) && (paramArrayOfString.height > 0) && (paramArrayOfString.width * paramArrayOfString.height > i)) {
        localArrayList.remove(paramInt1);
      }
      paramInt1 -= 1;
    }
    return ผ.ʽ(localArrayList);
  }
  
  @TargetApi(16)
  private static void ˋ(Display paramDisplay, Point paramPoint)
  {
    paramDisplay.getSize(paramPoint);
  }
  
  private static void ˎ(Display paramDisplay, Point paramPoint)
  {
    paramPoint.x = paramDisplay.getWidth();
    paramPoint.y = paramDisplay.getHeight();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */