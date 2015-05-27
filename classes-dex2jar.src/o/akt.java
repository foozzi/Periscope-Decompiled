package o;

import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class akt
{
  public static void ʽ(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    akw.ͺ(paramLong >> 32, paramArrayOfByte, paramInt);
    akw.ͺ(paramLong, paramArrayOfByte, paramInt + 4);
  }
  
  private static int ˊ(byte[] paramArrayOfByte, int paramInt, ArrayList<Object> paramArrayList)
  {
    if (paramInt == paramArrayOfByte.length) {
      return paramInt;
    }
    int j = paramInt + 1;
    int i = j;
    switch (paramArrayOfByte[paramInt])
    {
    default: 
      return j;
    case 9: 
      return j;
    case 5: 
      paramArrayList.add(null);
      return j;
    case 6: 
      paramArrayList.add(null);
      return j;
    case 1: 
      i = j;
      if (j < paramArrayOfByte.length)
      {
        boolean bool;
        if (paramArrayOfByte[j] != 0) {
          bool = true;
        } else {
          bool = false;
        }
        paramArrayList.add(Boolean.valueOf(bool));
        return j + 1;
      }
      break;
    case 2: 
      i = j;
      if (j < paramArrayOfByte.length - 2)
      {
        int k = ᔈ(paramArrayOfByte, j);
        i = j + 2;
        paramInt = i;
        if (i < paramArrayOfByte.length - k)
        {
          paramArrayList.add(new String(paramArrayOfByte, i, k, StandardCharsets.UTF_8));
          paramInt = i + k;
        }
        return paramInt;
      }
      break;
    case 0: 
      i = j;
      if (j <= paramArrayOfByte.length - 8)
      {
        paramArrayList.add(Double.valueOf(Double.longBitsToDouble(ᔇ(paramArrayOfByte, j))));
        return j + 8;
      }
      break;
    case 3: 
      return ˋ(paramArrayOfByte, j, paramArrayList);
    case 8: 
      return ˋ(paramArrayOfByte, j + 4, paramArrayList);
    case 10: 
      i = j;
      if (j < paramArrayOfByte.length - 4)
      {
        i = (int)ᒽ(paramArrayOfByte, j);
        paramInt = j + 4;
        ArrayList localArrayList = new ArrayList();
        for (;;)
        {
          j = i;
          i = j - 1;
          if (j <= 0) {
            break;
          }
          paramInt = ˊ(paramArrayOfByte, paramInt, localArrayList);
        }
        paramArrayList.add(localArrayList.toArray());
        i = paramInt;
      }
      break;
    }
    return i;
  }
  
  private static void ˊ(Boolean paramBoolean, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    paramByteArrayOutputStream.write(1);
    int i;
    if (paramBoolean.booleanValue()) {
      i = 1;
    } else {
      i = 0;
    }
    paramByteArrayOutputStream.write(i);
  }
  
  private static void ˊ(Double paramDouble, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    long l = Double.doubleToLongBits(paramDouble.doubleValue());
    paramDouble = new byte[9];
    paramDouble[0] = 0;
    ʽ(l, paramDouble, 1);
    paramByteArrayOutputStream.write(paramDouble, 0, 9);
  }
  
  private static void ˊ(Object paramObject, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    if (paramObject == null)
    {
      paramByteArrayOutputStream.write(5);
      return;
    }
    if ((paramObject instanceof Boolean))
    {
      ˊ((Boolean)paramObject, paramByteArrayOutputStream);
      return;
    }
    if (((paramObject instanceof Double)) || ((paramObject instanceof Integer)))
    {
      if ((paramObject instanceof Integer)) {
        paramObject = Double.valueOf(((Integer)paramObject).doubleValue());
      } else {
        paramObject = (Double)paramObject;
      }
      ˊ(paramObject, paramByteArrayOutputStream);
      return;
    }
    if ((paramObject instanceof String))
    {
      ˊ((String)paramObject, paramByteArrayOutputStream);
      return;
    }
    Object localObject;
    if ((paramObject instanceof Map))
    {
      paramByteArrayOutputStream.write(3);
      paramObject = (Map)paramObject;
      localObject = paramObject.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        ˊ(str, paramObject.get(str), paramByteArrayOutputStream);
      }
      ˋ(paramByteArrayOutputStream);
      return;
    }
    if ((paramObject instanceof Object[]))
    {
      localObject = new byte[5];
      localObject[0] = 10;
      paramObject = (Object[])paramObject;
      akw.ͺ(paramObject.length, (byte[])localObject, 1);
      paramByteArrayOutputStream.write((byte[])localObject, 0, 5);
      int j = paramObject.length;
      int i = 0;
      while (i < j)
      {
        ˊ(paramObject[i], paramByteArrayOutputStream);
        i += 1;
      }
    }
  }
  
  private static void ˊ(String paramString, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    paramByteArrayOutputStream.write(2);
    ˋ(paramString, paramByteArrayOutputStream);
  }
  
  private static void ˊ(String paramString, Object paramObject, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    ˋ(paramString, paramByteArrayOutputStream);
    ˊ(paramObject, paramByteArrayOutputStream);
  }
  
  private static int ˋ(byte[] paramArrayOfByte, int paramInt, ArrayList<Object> paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    int i;
    for (;;)
    {
      i = paramInt;
      if (paramInt >= paramArrayOfByte.length - 2) {
        break;
      }
      int j = ᔈ(paramArrayOfByte, paramInt);
      i = paramInt + 2;
      if (i >= paramArrayOfByte.length - j) {
        break;
      }
      String str = new String(paramArrayOfByte, i, j, StandardCharsets.UTF_8);
      ArrayList localArrayList = new ArrayList();
      paramInt = ˊ(paramArrayOfByte, i + j, localArrayList);
      i = paramInt;
      if (str.length() <= 0) {
        break;
      }
      i = paramInt;
      if (localArrayList.size() != 1) {
        break;
      }
      localHashMap.put(str, localArrayList.get(0));
    }
    paramArrayList.add(localHashMap);
    return i;
  }
  
  private static void ˋ(ByteArrayOutputStream paramByteArrayOutputStream)
  {
    byte[] arrayOfByte = new byte[3];
    byte[] tmp5_4 = arrayOfByte;
    tmp5_4[0] = 0;
    byte[] tmp10_5 = tmp5_4;
    tmp10_5[1] = 0;
    byte[] tmp15_10 = tmp10_5;
    tmp15_10[2] = 9;
    tmp15_10;
    paramByteArrayOutputStream.write(arrayOfByte, 0, arrayOfByte.length);
  }
  
  private static void ˋ(String paramString, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    paramString = paramString.getBytes(StandardCharsets.UTF_8);
    paramByteArrayOutputStream.write((paramString.length >> 8) % 256);
    paramByteArrayOutputStream.write(paramString.length % 256);
    paramByteArrayOutputStream.write(paramString, 0, paramString.length);
  }
  
  public static byte[] ˋ(Object[] paramArrayOfObject)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int j = paramArrayOfObject.length;
    int i = 0;
    while (i < j)
    {
      ˊ(paramArrayOfObject[i], localByteArrayOutputStream);
      i += 1;
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static Object[] ᐪ(byte[] paramArrayOfByte, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; (i < paramInt) && (paramArrayOfByte[i] != 9); i = ˊ(paramArrayOfByte, i, localArrayList)) {}
    return localArrayList.toArray();
  }
  
  public static long ᒽ(byte[] paramArrayOfByte, int paramInt)
  {
    long l = paramArrayOfByte[paramInt] & 0xFF;
    int i = paramArrayOfByte[(paramInt + 1)];
    int j = paramArrayOfByte[(paramInt + 2)];
    paramInt = paramArrayOfByte[(paramInt + 3)];
    return (l << 24 & 0xFF000000) + ((i & 0xFF) << 16) + ((j & 0xFF) << 8) + (paramInt & 0xFF);
  }
  
  public static Object[] ᓪ(byte[] paramArrayOfByte)
  {
    return ᐪ(paramArrayOfByte, paramArrayOfByte.length);
  }
  
  public static long ᔇ(byte[] paramArrayOfByte, int paramInt)
  {
    long l = ᒽ(paramArrayOfByte, paramInt + 4);
    return ᒽ(paramArrayOfByte, paramInt) << 32 | l;
  }
  
  public static int ᔈ(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[paramInt] & 0xFF) << 8) + (paramArrayOfByte[(paramInt + 1)] & 0xFF);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akt
 * JD-Core Version:    0.7.0.1
 */