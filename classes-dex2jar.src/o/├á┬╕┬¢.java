package o;

import android.net.Uri;
import android.text.TextUtils;

public final class ป
{
  public static Uri ʻ(String paramString1, String paramString2)
  {
    return Uri.parse(ʼ(paramString1, paramString2));
  }
  
  public static String ʼ(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString1 == null) {
      paramString1 = "";
    }
    if (paramString2 == null) {
      paramString2 = "";
    }
    int[] arrayOfInt1 = ᐠ(paramString2);
    if (arrayOfInt1[0] != -1)
    {
      localStringBuilder.append(paramString2);
      ˊ(localStringBuilder, arrayOfInt1[1], arrayOfInt1[2]);
      return localStringBuilder.toString();
    }
    int[] arrayOfInt2 = ᐠ(paramString1);
    if (arrayOfInt1[3] == 0) {
      return paramString2;
    }
    if (arrayOfInt1[2] == 0) {
      return paramString2;
    }
    if (arrayOfInt1[1] != 0)
    {
      i = arrayOfInt2[0] + 1;
      localStringBuilder.append(paramString1, 0, i).append(paramString2);
      return ˊ(localStringBuilder, arrayOfInt1[1] + i, arrayOfInt1[2] + i);
    }
    if ((arrayOfInt1[1] != arrayOfInt1[2]) && (paramString2.charAt(arrayOfInt1[1]) == '/'))
    {
      localStringBuilder.append(paramString1, 0, arrayOfInt2[1]).append(paramString2);
      return ˊ(localStringBuilder, arrayOfInt2[1], arrayOfInt2[1] + arrayOfInt1[2]);
    }
    if ((arrayOfInt2[0] + 2 < arrayOfInt2[1]) && (arrayOfInt2[1] == arrayOfInt2[2]))
    {
      localStringBuilder.append(paramString1, 0, arrayOfInt2[1]).append('/').append(paramString2);
      return ˊ(localStringBuilder, arrayOfInt2[1], arrayOfInt2[1] + arrayOfInt1[2] + 1);
    }
    int i = paramString1.lastIndexOf('/', arrayOfInt2[2] - 1);
    if (i == -1) {
      i = arrayOfInt2[1];
    } else {
      i += 1;
    }
    localStringBuilder.append(paramString1, 0, i).append(paramString2);
    return ˊ(localStringBuilder, arrayOfInt2[1], arrayOfInt1[2] + i);
  }
  
  private static String ˊ(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    if (paramInt1 >= paramInt2) {
      return paramStringBuilder.toString();
    }
    int i = paramInt1;
    if (paramStringBuilder.charAt(paramInt1) == '/') {
      i = paramInt1 + 1;
    }
    int k = i;
    paramInt1 = i;
    int j = paramInt2;
    paramInt2 = k;
    while (paramInt1 <= j)
    {
      if (paramInt1 == j)
      {
        k = paramInt1;
      }
      else if (paramStringBuilder.charAt(paramInt1) == '/')
      {
        k = paramInt1 + 1;
      }
      else
      {
        paramInt1 += 1;
        continue;
      }
      if ((paramInt1 == paramInt2 + 1) && (paramStringBuilder.charAt(paramInt2) == '.'))
      {
        paramStringBuilder.delete(paramInt2, k);
        j -= k - paramInt2;
        paramInt1 = paramInt2;
      }
      else if ((paramInt1 == paramInt2 + 2) && (paramStringBuilder.charAt(paramInt2) == '.') && (paramStringBuilder.charAt(paramInt2 + 1) == '.'))
      {
        paramInt1 = paramStringBuilder.lastIndexOf("/", paramInt2 - 2) + 1;
        if (paramInt1 > i) {
          paramInt2 = paramInt1;
        } else {
          paramInt2 = i;
        }
        paramStringBuilder.delete(paramInt2, k);
        j -= k - paramInt2;
        paramInt2 = paramInt1;
      }
      else
      {
        paramInt1 += 1;
        paramInt2 = paramInt1;
      }
    }
    return paramStringBuilder.toString();
  }
  
  private static int[] ᐠ(String paramString)
  {
    int[] arrayOfInt = new int[4];
    if (TextUtils.isEmpty(paramString))
    {
      arrayOfInt[0] = -1;
      return arrayOfInt;
    }
    int i = paramString.length();
    int k = paramString.indexOf('#');
    int j = k;
    if (k == -1) {
      j = i;
    }
    k = paramString.indexOf('?');
    if (k != -1)
    {
      i = k;
      if (k <= j) {}
    }
    else
    {
      i = j;
    }
    int m = paramString.indexOf('/');
    if (m != -1)
    {
      k = m;
      if (m <= i) {}
    }
    else
    {
      k = i;
    }
    int n = paramString.indexOf(':');
    m = n;
    if (n > k) {
      m = -1;
    }
    if ((m + 2 < i) && (paramString.charAt(m + 1) == '/') && (paramString.charAt(m + 2) == '/')) {
      k = 1;
    } else {
      k = 0;
    }
    if (k != 0)
    {
      n = paramString.indexOf('/', m + 3);
      if (n != -1)
      {
        k = n;
        if (n <= i) {}
      }
      else
      {
        k = i;
      }
    }
    else
    {
      k = m + 1;
    }
    arrayOfInt[0] = m;
    arrayOfInt[1] = k;
    arrayOfInt[2] = i;
    arrayOfInt[3] = j;
    return arrayOfInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¸
 * JD-Core Version:    0.7.0.1
 */