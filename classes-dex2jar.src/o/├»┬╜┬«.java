package o;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class ｮ
  implements ｱ<Map<String, Object>>
{
  private static int ʻ(প paramপ)
  {
    int i = paramপ.readUnsignedByte();
    int j = paramপ.readUnsignedByte();
    int k = paramপ.readUnsignedByte();
    if ((i != 73) || (j != 68) || (k != 51)) {
      throw new ٵ(String.format("Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\".", new Object[] { Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(k) }));
    }
    paramপ.ʰ(2);
    k = paramপ.readUnsignedByte();
    j = paramপ.к();
    i = j;
    if ((k & 0x2) != 0)
    {
      i = paramপ.к();
      if (i > 4) {
        paramপ.ʰ(i - 4);
      }
      i = j - i;
    }
    j = i;
    if ((k & 0x8) != 0) {
      j = i - 10;
    }
    return j;
  }
  
  private static int ʼ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = ˊ(paramArrayOfByte, paramInt1, (byte)0);
    if (paramInt2 != 0)
    {
      paramInt1 = i;
      if (paramInt2 != 3) {}
    }
    else
    {
      return i;
    }
    while (paramInt1 < paramArrayOfByte.length - 1)
    {
      if (paramArrayOfByte[(paramInt1 + 1)] == 0) {
        return paramInt1;
      }
      paramInt1 = ˊ(paramArrayOfByte, paramInt1 + 1, (byte)0);
    }
    return paramArrayOfByte.length;
  }
  
  private static int ˊ(byte[] paramArrayOfByte, int paramInt, byte paramByte)
  {
    while (paramInt < paramArrayOfByte.length)
    {
      if (paramArrayOfByte[paramInt] == paramByte) {
        return paramInt;
      }
      paramInt += 1;
    }
    return paramArrayOfByte.length;
  }
  
  private static int ﺛ(int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 3)) {
      return 1;
    }
    return 2;
  }
  
  private static String ﺩ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      return "ISO-8859-1";
    case 1: 
      return "UTF-16";
    case 2: 
      return "UTF-16BE";
    case 3: 
      return "UTF-8";
    }
    return "ISO-8859-1";
  }
  
  public Map<String, Object> ˎ(byte[] paramArrayOfByte, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    paramArrayOfByte = new প(paramArrayOfByte, paramInt);
    paramInt = ʻ(paramArrayOfByte);
    while (paramInt > 0)
    {
      int j = paramArrayOfByte.readUnsignedByte();
      int k = paramArrayOfByte.readUnsignedByte();
      int m = paramArrayOfByte.readUnsignedByte();
      int n = paramArrayOfByte.readUnsignedByte();
      int i = paramArrayOfByte.к();
      if (i <= 1) {
        break;
      }
      paramArrayOfByte.ʰ(2);
      Object localObject1;
      Object localObject2;
      Object localObject3;
      if ((j == 84) && (k == 88) && (m == 88) && (n == 88))
      {
        j = paramArrayOfByte.readUnsignedByte();
        localObject1 = ﺩ(j);
        localObject2 = new byte[i - 1];
        paramArrayOfByte.ι((byte[])localObject2, 0, i - 1);
        k = ʼ((byte[])localObject2, 0, j);
        localObject3 = new String((byte[])localObject2, 0, k, (String)localObject1);
        k += ﺛ(j);
        localHashMap.put("TXXX", new ﾜ((String)localObject3, new String((byte[])localObject2, k, ʼ((byte[])localObject2, k, j) - k, (String)localObject1)));
      }
      else if ((j == 80) && (k == 82) && (m == 73) && (n == 86))
      {
        localObject1 = new byte[i];
        paramArrayOfByte.ι((byte[])localObject1, 0, i);
        j = ˊ((byte[])localObject1, 0, (byte)0);
        localObject2 = new String((byte[])localObject1, 0, j, "ISO-8859-1");
        localObject3 = new byte[i - j - 1];
        System.arraycopy(localObject1, j + 1, localObject3, 0, i - j - 1);
        localHashMap.put("PRIV", new ﾗ((String)localObject2, (byte[])localObject3));
      }
      else if ((j == 71) && (k == 69) && (m == 79) && (n == 66))
      {
        j = paramArrayOfByte.readUnsignedByte();
        String str = ﺩ(j);
        localObject1 = new byte[i - 1];
        paramArrayOfByte.ι((byte[])localObject1, 0, i - 1);
        k = ˊ((byte[])localObject1, 0, (byte)0);
        localObject2 = new String((byte[])localObject1, 0, k, "ISO-8859-1");
        k += 1;
        m = ʼ((byte[])localObject1, k, j);
        localObject3 = new String((byte[])localObject1, k, m - k, str);
        m += ﺛ(j);
        k = ʼ((byte[])localObject1, m, j);
        str = new String((byte[])localObject1, m, k - m, str);
        m = i - 1 - k - ﺛ(j);
        byte[] arrayOfByte = new byte[m];
        System.arraycopy(localObject1, ﺛ(j) + k, arrayOfByte, 0, m);
        localHashMap.put("GEOB", new ｫ((String)localObject2, (String)localObject3, str, arrayOfByte));
      }
      else
      {
        localObject1 = String.format("%c%c%c%c", new Object[] { Integer.valueOf(j), Integer.valueOf(k), Integer.valueOf(m), Integer.valueOf(n) });
        localObject2 = new byte[i];
        paramArrayOfByte.ι((byte[])localObject2, 0, i);
        localHashMap.put(localObject1, localObject2);
      }
      paramInt -= i + 10;
    }
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public boolean ᵢ(String paramString)
  {
    return paramString.equals("application/id3");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½®
 * JD-Core Version:    0.7.0.1
 */