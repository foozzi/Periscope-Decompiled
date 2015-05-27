package com.squareup.okhttp.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import o.ue;
import o.uj;
import o.va;
import o.vb;

public final class Util
{
  public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
  public static final String[] EMPTY_STRING_ARRAY = new String[0];
  public static final Charset UTF_8 = Charset.forName("UTF-8");
  
  public static void checkOffsetAndCount(long paramLong1, long paramLong2, long paramLong3)
  {
    if (((paramLong2 | paramLong3) < 0L) || (paramLong2 > paramLong1) || (paramLong1 - paramLong2 < paramLong3)) {
      throw new ArrayIndexOutOfBoundsException();
    }
  }
  
  public static void closeAll(Closeable paramCloseable1, Closeable paramCloseable2)
  {
    Object localObject = null;
    try
    {
      paramCloseable1.close();
      paramCloseable1 = localObject;
    }
    catch (Throwable paramCloseable1) {}
    try
    {
      paramCloseable2.close();
      paramCloseable2 = paramCloseable1;
    }
    catch (Throwable localThrowable)
    {
      paramCloseable2 = paramCloseable1;
      if (paramCloseable1 == null) {
        paramCloseable2 = localThrowable;
      }
    }
    if (paramCloseable2 == null) {
      return;
    }
    if ((paramCloseable2 instanceof IOException)) {
      throw ((IOException)paramCloseable2);
    }
    if ((paramCloseable2 instanceof RuntimeException)) {
      throw ((RuntimeException)paramCloseable2);
    }
    if ((paramCloseable2 instanceof Error)) {
      throw ((Error)paramCloseable2);
    }
    throw new AssertionError(paramCloseable2);
  }
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {
      try
      {
        paramCloseable.close();
        return;
      }
      catch (RuntimeException paramCloseable)
      {
        throw paramCloseable;
      }
      catch (Exception paramCloseable) {}
    }
  }
  
  public static void closeQuietly(ServerSocket paramServerSocket)
  {
    if (paramServerSocket != null) {
      try
      {
        paramServerSocket.close();
        return;
      }
      catch (RuntimeException paramServerSocket)
      {
        throw paramServerSocket;
      }
      catch (Exception paramServerSocket) {}
    }
  }
  
  public static void closeQuietly(Socket paramSocket)
  {
    if (paramSocket != null) {
      try
      {
        paramSocket.close();
        return;
      }
      catch (RuntimeException paramSocket)
      {
        throw paramSocket;
      }
      catch (Exception paramSocket) {}
    }
  }
  
  public static boolean discard(va paramva, int paramInt, TimeUnit paramTimeUnit)
  {
    try
    {
      boolean bool = skipAll(paramva, paramInt, paramTimeUnit);
      return bool;
    }
    catch (IOException paramva) {}
    return false;
  }
  
  public static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static int getDefaultPort(String paramString)
  {
    if ("http".equals(paramString)) {
      return 80;
    }
    if ("https".equals(paramString)) {
      return 443;
    }
    return -1;
  }
  
  private static int getEffectivePort(String paramString, int paramInt)
  {
    if (paramInt != -1) {
      return paramInt;
    }
    return getDefaultPort(paramString);
  }
  
  public static int getEffectivePort(URI paramURI)
  {
    return getEffectivePort(paramURI.getScheme(), paramURI.getPort());
  }
  
  public static int getEffectivePort(URL paramURL)
  {
    return getEffectivePort(paramURL.getProtocol(), paramURL.getPort());
  }
  
  public static <T> List<T> immutableList(List<T> paramList)
  {
    return Collections.unmodifiableList(new ArrayList(paramList));
  }
  
  public static <T> List<T> immutableList(T... paramVarArgs)
  {
    return Collections.unmodifiableList(Arrays.asList((Object[])paramVarArgs.clone()));
  }
  
  public static <K, V> Map<K, V> immutableMap(Map<K, V> paramMap)
  {
    return Collections.unmodifiableMap(new LinkedHashMap(paramMap));
  }
  
  private static <T> List<T> intersect(T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    ArrayList localArrayList = new ArrayList();
    int k = paramArrayOfT1.length;
    int i = 0;
    while (i < k)
    {
      T ? = paramArrayOfT1[i];
      int m = paramArrayOfT2.length;
      int j = 0;
      while (j < m)
      {
        T ? = paramArrayOfT2[j];
        if (?.equals(?))
        {
          localArrayList.add(?);
          break;
        }
        j += 1;
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public static <T> T[] intersect(Class<T> paramClass, T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    paramArrayOfT1 = intersect(paramArrayOfT1, paramArrayOfT2);
    return paramArrayOfT1.toArray((Object[])Array.newInstance(paramClass, paramArrayOfT1.size()));
  }
  
  public static String md5Hex(String paramString)
  {
    try
    {
      paramString = uj.ᐨ(MessageDigest.getInstance("MD5").digest(paramString.getBytes("UTF-8"))).el();
      return paramString;
    }
    catch (NoSuchAlgorithmException|UnsupportedEncodingException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  public static uj sha1(uj paramuj)
  {
    try
    {
      paramuj = uj.ᐨ(MessageDigest.getInstance("SHA-1").digest(paramuj.toByteArray()));
      return paramuj;
    }
    catch (NoSuchAlgorithmException paramuj)
    {
      throw new AssertionError(paramuj);
    }
  }
  
  public static String shaBase64(String paramString)
  {
    try
    {
      paramString = uj.ᐨ(MessageDigest.getInstance("SHA-1").digest(paramString.getBytes("UTF-8"))).ej();
      return paramString;
    }
    catch (NoSuchAlgorithmException|UnsupportedEncodingException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  public static boolean skipAll(va paramva, int paramInt, TimeUnit paramTimeUnit)
  {
    long l2 = System.nanoTime();
    long l1;
    if (paramva.timeout().hasDeadline()) {
      l1 = paramva.timeout().deadlineNanoTime() - l2;
    } else {
      l1 = 9223372036854775807L;
    }
    paramva.timeout().deadlineNanoTime(Math.min(l1, paramTimeUnit.toNanos(paramInt)) + l2);
    try
    {
      paramTimeUnit = new ue();
      while (paramva.read(paramTimeUnit, 2048L) != -1L) {
        paramTimeUnit.clear();
      }
      if (l1 == 9223372036854775807L)
      {
        paramva.timeout().clearDeadline();
        return true;
      }
      paramva.timeout().deadlineNanoTime(l2 + l1);
      return true;
    }
    catch (InterruptedIOException paramTimeUnit)
    {
      if (l1 == 9223372036854775807L)
      {
        paramva.timeout().clearDeadline();
        return false;
      }
      paramva.timeout().deadlineNanoTime(l2 + l1);
      return false;
    }
    finally
    {
      if (l1 == 9223372036854775807L) {
        paramva.timeout().clearDeadline();
      } else {
        paramva.timeout().deadlineNanoTime(l2 + l1);
      }
    }
  }
  
  public static ThreadFactory threadFactory(String paramString, boolean paramBoolean)
  {
    return new Util.1(paramString, paramBoolean);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.Util
 * JD-Core Version:    0.7.0.1
 */