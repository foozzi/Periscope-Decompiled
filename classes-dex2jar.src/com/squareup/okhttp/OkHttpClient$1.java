package com.squareup.okhttp;

import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Network;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.Transport;

final class OkHttpClient$1
  extends Internal
{
  public void addLenient(Headers.Builder paramBuilder, String paramString)
  {
    paramBuilder.addLenient(paramString);
  }
  
  public Connection callEngineGetConnection(Call paramCall)
  {
    return paramCall.engine.getConnection();
  }
  
  public void callEngineReleaseConnection(Call paramCall)
  {
    paramCall.engine.releaseConnection();
  }
  
  public void callEnqueue(Call paramCall, Callback paramCallback, boolean paramBoolean)
  {
    paramCall.enqueue(paramCallback, paramBoolean);
  }
  
  public boolean clearOwner(Connection paramConnection)
  {
    return paramConnection.clearOwner();
  }
  
  public void closeIfOwnedBy(Connection paramConnection, Object paramObject)
  {
    paramConnection.closeIfOwnedBy(paramObject);
  }
  
  public void connectAndSetOwner(OkHttpClient paramOkHttpClient, Connection paramConnection, HttpEngine paramHttpEngine, Request paramRequest)
  {
    paramConnection.connectAndSetOwner(paramOkHttpClient, paramHttpEngine, paramRequest);
  }
  
  public void connectionSetOwner(Connection paramConnection, Object paramObject)
  {
    paramConnection.setOwner(paramObject);
  }
  
  public InternalCache internalCache(OkHttpClient paramOkHttpClient)
  {
    return paramOkHttpClient.internalCache();
  }
  
  public boolean isReadable(Connection paramConnection)
  {
    return paramConnection.isReadable();
  }
  
  public Network network(OkHttpClient paramOkHttpClient)
  {
    return OkHttpClient.access$000(paramOkHttpClient);
  }
  
  public Transport newTransport(Connection paramConnection, HttpEngine paramHttpEngine)
  {
    return paramConnection.newTransport(paramHttpEngine);
  }
  
  public void recycle(ConnectionPool paramConnectionPool, Connection paramConnection)
  {
    paramConnectionPool.recycle(paramConnection);
  }
  
  public int recycleCount(Connection paramConnection)
  {
    return paramConnection.recycleCount();
  }
  
  public RouteDatabase routeDatabase(OkHttpClient paramOkHttpClient)
  {
    return paramOkHttpClient.routeDatabase();
  }
  
  public void setCache(OkHttpClient paramOkHttpClient, InternalCache paramInternalCache)
  {
    paramOkHttpClient.setInternalCache(paramInternalCache);
  }
  
  public void setNetwork(OkHttpClient paramOkHttpClient, Network paramNetwork)
  {
    OkHttpClient.access$002(paramOkHttpClient, paramNetwork);
  }
  
  public void setOwner(Connection paramConnection, HttpEngine paramHttpEngine)
  {
    paramConnection.setOwner(paramHttpEngine);
  }
  
  public void setProtocol(Connection paramConnection, Protocol paramProtocol)
  {
    paramConnection.setProtocol(paramProtocol);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.OkHttpClient.1
 * JD-Core Version:    0.7.0.1
 */