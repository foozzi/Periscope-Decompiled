package com.squareup.okhttp.internal;

import java.net.InetAddress;
import java.net.UnknownHostException;

final class Network$1
  implements Network
{
  public InetAddress[] resolveInetAddresses(String paramString)
  {
    if (paramString == null) {
      throw new UnknownHostException("host == null");
    }
    return InetAddress.getAllByName(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.Network.1
 * JD-Core Version:    0.7.0.1
 */