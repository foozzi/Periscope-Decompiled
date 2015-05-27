package com.squareup.okhttp;

import java.io.UnsupportedEncodingException;
import o.uj;

public final class Credentials
{
  public static String basic(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = uj.ᐨ((paramString1 + ":" + paramString2).getBytes("ISO-8859-1")).ej();
      paramString1 = "Basic " + paramString1;
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new AssertionError();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Credentials
 * JD-Core Version:    0.7.0.1
 */