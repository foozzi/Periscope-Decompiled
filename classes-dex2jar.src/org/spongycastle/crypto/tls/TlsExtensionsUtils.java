package org.spongycastle.crypto.tls;

import java.util.Hashtable;
import org.spongycastle.util.Integers;

public class TlsExtensionsUtils
{
  public static final Integer aVk = Integers.valueOf(22);
  public static final Integer aVl = Integers.valueOf(15);
  public static final Integer aVm = Integers.valueOf(1);
  public static final Integer aVn = Integers.valueOf(0);
  public static final Integer aVo = Integers.valueOf(5);
  public static final Integer aVp = Integers.valueOf(4);
  
  public static boolean ɩ(byte[] paramArrayOfByte)
  {
    return ﹾ(paramArrayOfByte);
  }
  
  public static short ʵ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("'extensionData' cannot be null");
    }
    if (paramArrayOfByte.length != 1) {
      throw new TlsFatalAlert((short)50);
    }
    short s = (short)paramArrayOfByte[0];
    if (!MaxFragmentLength.ᐝ(s)) {
      throw new TlsFatalAlert((short)47);
    }
    return s;
  }
  
  public static boolean ʸ(byte[] paramArrayOfByte)
  {
    return ﹾ(paramArrayOfByte);
  }
  
  public static Hashtable ˉ(Hashtable paramHashtable)
  {
    if (paramHashtable == null) {
      return new Hashtable();
    }
    return paramHashtable;
  }
  
  public static short ˌ(Hashtable paramHashtable)
  {
    paramHashtable = TlsUtils.ˊ(paramHashtable, aVm);
    if (paramHashtable == null) {
      return -1;
    }
    return ʵ(paramHashtable);
  }
  
  public static boolean ˍ(Hashtable paramHashtable)
  {
    paramHashtable = TlsUtils.ˊ(paramHashtable, aVk);
    if (paramHashtable == null) {
      return false;
    }
    return ɩ(paramHashtable);
  }
  
  public static boolean ˑ(Hashtable paramHashtable)
  {
    paramHashtable = TlsUtils.ˊ(paramHashtable, aVp);
    if (paramHashtable == null) {
      return false;
    }
    return ʸ(paramHashtable);
  }
  
  private static boolean ﹾ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("'extensionData' cannot be null");
    }
    if (paramArrayOfByte.length != 0) {
      throw new TlsFatalAlert((short)47);
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsExtensionsUtils
 * JD-Core Version:    0.7.0.1
 */