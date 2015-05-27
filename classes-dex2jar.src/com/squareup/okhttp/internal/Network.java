package com.squareup.okhttp.internal;

import java.net.InetAddress;

public abstract interface Network
{
  public static final Network DEFAULT = new Network.1();
  
  public abstract InetAddress[] resolveInetAddresses(String paramString);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.Network
 * JD-Core Version:    0.7.0.1
 */