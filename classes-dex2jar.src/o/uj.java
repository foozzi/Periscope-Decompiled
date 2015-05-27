package o;

import java.io.EOFException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class uj
  implements Serializable
{
  static final char[] ZI = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  public static final uj ZJ = ᐨ(new byte[0]);
  transient String ZK;
  final byte[] fw;
  transient int hY;
  
  uj(byte[] paramArrayOfByte)
  {
    this.fw = paramArrayOfByte;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream = ˋ(paramObjectInputStream, paramObjectInputStream.readInt());
    try
    {
      Field localField = uj.class.getDeclaredField("fw");
      localField.setAccessible(true);
      localField.set(this, paramObjectInputStream.fw);
      return;
    }
    catch (NoSuchFieldException paramObjectInputStream)
    {
      throw new AssertionError();
    }
    catch (IllegalAccessException paramObjectInputStream)
    {
      throw new AssertionError();
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeInt(this.fw.length);
    paramObjectOutputStream.write(this.fw);
  }
  
  public static uj ˋ(InputStream paramInputStream, int paramInt)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("in == null");
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("byteCount < 0: " + paramInt);
    }
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      int j = paramInputStream.read(arrayOfByte, i, paramInt - i);
      if (j == -1) {
        throw new EOFException();
      }
      i += j;
    }
    return new uj(arrayOfByte);
  }
  
  public static uj ᐨ(byte... paramVarArgs)
  {
    if (paramVarArgs == null) {
      throw new IllegalArgumentException("data == null");
    }
    return new uj((byte[])paramVarArgs.clone());
  }
  
  public static uj ﺗ(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("s == null");
    }
    uj localuj = new uj(paramString.getBytes(vd.UTF_8));
    localuj.ZK = paramString;
    return localuj;
  }
  
  private uj ﻳ(String paramString)
  {
    try
    {
      paramString = ᐨ(MessageDigest.getInstance(paramString).digest(this.fw));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  public static uj ＿(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("base64 == null");
    }
    paramString = ud.ᵥ(paramString);
    if (paramString != null) {
      return new uj(paramString);
    }
    return null;
  }
  
  public String ei()
  {
    String str = this.ZK;
    if (str != null) {
      return str;
    }
    str = new String(this.fw, vd.UTF_8);
    this.ZK = str;
    return str;
  }
  
  public String ej()
  {
    return ud.ˑ(this.fw);
  }
  
  public uj ek()
  {
    return ﻳ("MD5");
  }
  
  public String el()
  {
    char[] arrayOfChar = new char[this.fw.length * 2];
    int j = 0;
    byte[] arrayOfByte = this.fw;
    int k = arrayOfByte.length;
    int i = 0;
    while (i < k)
    {
      int m = arrayOfByte[i];
      int n = j + 1;
      arrayOfChar[j] = ZI[(m >> 4 & 0xF)];
      j = n + 1;
      arrayOfChar[n] = ZI[(m & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public uj em()
  {
    int i = 0;
    while (i < this.fw.length)
    {
      int k = this.fw[i];
      if ((k >= 65) && (k <= 90))
      {
        byte[] arrayOfByte = (byte[])this.fw.clone();
        int j = i + 1;
        arrayOfByte[i] = ((byte)(k + 32));
        i = j;
        while (i < arrayOfByte.length)
        {
          j = arrayOfByte[i];
          if ((j >= 65) && (j <= 90)) {
            arrayOfByte[i] = ((byte)(j + 32));
          }
          i += 1;
        }
        return new uj(arrayOfByte);
      }
      i += 1;
    }
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    return ((paramObject instanceof uj)) && (((uj)paramObject).size() == this.fw.length) && (((uj)paramObject).ˎ(0, this.fw, 0, this.fw.length));
  }
  
  public byte getByte(int paramInt)
  {
    return this.fw[paramInt];
  }
  
  public int hashCode()
  {
    int i = this.hY;
    if (i != 0) {
      return i;
    }
    i = Arrays.hashCode(this.fw);
    this.hY = i;
    return i;
  }
  
  public int size()
  {
    return this.fw.length;
  }
  
  public byte[] toByteArray()
  {
    return (byte[])this.fw.clone();
  }
  
  public String toString()
  {
    if (this.fw.length == 0) {
      return "ByteString[size=0]";
    }
    if (this.fw.length <= 16) {
      return String.format("ByteString[size=%s data=%s]", new Object[] { Integer.valueOf(this.fw.length), el() });
    }
    return String.format("ByteString[size=%s md5=%s]", new Object[] { Integer.valueOf(this.fw.length), ek().el() });
  }
  
  void ˊ(ue paramue)
  {
    paramue.ˉ(this.fw, 0, this.fw.length);
  }
  
  public boolean ˎ(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    return (paramInt1 <= this.fw.length - paramInt3) && (paramInt2 <= paramArrayOfByte.length - paramInt3) && (vd.ˊ(this.fw, paramInt1, paramArrayOfByte, paramInt2, paramInt3));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uj
 * JD-Core Version:    0.7.0.1
 */