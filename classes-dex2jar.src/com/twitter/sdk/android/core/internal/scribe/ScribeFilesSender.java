package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import android.text.TextUtils;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.List<Ljava.io.File;>;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ssl.SSLSocketFactory;
import o.ly;
import o.mg;
import o.mh;
import o.ny;
import o.ob;
import o.qh;
import o.qr;
import o.qu;
import o.sg;
import retrofit.RequestInterceptor;
import retrofit.RequestInterceptor.RequestFacade;
import retrofit.RestAdapter;
import retrofit.RestAdapter.Builder;
import retrofit.RetrofitError;
import retrofit.android.MainThreadExecutor;
import retrofit.client.Response;
import retrofit.http.Field;
import retrofit.http.FormUrlEncoded;
import retrofit.http.Headers;
import retrofit.http.POST;
import retrofit.http.Path;

public class ScribeFilesSender
  implements sg
{
  private static final byte[] RQ = { 91 };
  private static final byte[] RR = { 44 };
  private static final byte[] RS = { 93 };
  private final TwitterAuthConfig PU;
  private final ny RF;
  private final long RT;
  private final AtomicReference<RestAdapter> RU;
  private final List<mh<? extends mg>> Rx;
  private final Context dV;
  private final ExecutorService executorService;
  private final qr ok;
  private final SSLSocketFactory sslSocketFactory;
  
  public ScribeFilesSender(Context paramContext, ny paramny, long paramLong, TwitterAuthConfig paramTwitterAuthConfig, List<mh<? extends mg>> paramList, SSLSocketFactory paramSSLSocketFactory, ExecutorService paramExecutorService, qr paramqr)
  {
    this.dV = paramContext;
    this.RF = paramny;
    this.RT = paramLong;
    this.PU = paramTwitterAuthConfig;
    this.Rx = paramList;
    this.sslSocketFactory = paramSSLSocketFactory;
    this.executorService = paramExecutorService;
    this.ok = paramqr;
    this.RU = new AtomicReference();
  }
  
  private boolean bV()
  {
    return bR() != null;
  }
  
  private boolean ʻ(mg parammg)
  {
    return (parammg != null) && (parammg.aX() != null);
  }
  
  private mg ᑊ(long paramLong)
  {
    mg localmg = null;
    Iterator localIterator = this.Rx.iterator();
    while (localIterator.hasNext())
    {
      localmg = ((mh)localIterator.next()).ᑊ(paramLong);
      if (localmg != null) {
        return localmg;
      }
    }
    return localmg;
  }
  
  RestAdapter bR()
  {
    try
    {
      if (this.RU.get() == null)
      {
        localObject1 = ᑊ(this.RT);
        if localif = new if(this.RF, this.ok);
        if (ʻ((mg)localObject1)) {
          this.RU.compareAndSet(null, new RestAdapter.Builder().setEndpoint(this.RF.baseUrl).setExecutors(this.executorService, new MainThreadExecutor()).setRequestInterceptor(localif).setClient(new ly(this.PU, (mg)localObject1, this.sslSocketFactory)).build());
        } else {
          qh.ᐝ(this.dV, "No valid session at this time");
        }
      }
      Object localObject1 = (RestAdapter)this.RU.get();
      return localObject1;
    }
    finally {}
  }
  
  public boolean ʼ(List<File> paramList)
  {
    if (bV()) {
      try
      {
        paramList = ˉ(paramList);
        qh.ᐝ(this.dV, paramList);
        int i = ﻧ(paramList).getStatus();
        if (i == 200) {
          return true;
        }
        qh.ˊ(this.dV, "Failed sending files", null);
      }
      catch (RetrofitError paramList)
      {
        qh.ˊ(this.dV, "Failed sending files", paramList);
        if ((paramList.getResponse() != null) && ((paramList.getResponse().getStatus() == 500) || (paramList.getResponse().getStatus() == 400))) {
          return true;
        }
      }
      catch (IOException paramList)
      {
        qh.ˊ(this.dV, "Failed sending files", paramList);
      }
    } else {
      qh.ᐝ(this.dV, "Cannot attempt upload at this time");
    }
    return false;
  }
  
  String ˉ(List<File> paramList)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(1024);
    boolean[] arrayOfBoolean = new boolean[1];
    localByteArrayOutputStream.write(RQ);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = (File)localIterator.next();
      paramList = null;
      try
      {
        localObject1 = new qu((File)localObject1);
        paramList = (List<File>)localObject1;
        ((qu)localObject1).ˊ(new ob(this, arrayOfBoolean, localByteArrayOutputStream));
        qh.closeQuietly((Closeable)localObject1);
      }
      finally
      {
        qh.closeQuietly(paramList);
      }
    }
    localByteArrayOutputStream.write(RS);
    return localByteArrayOutputStream.toString("UTF-8");
  }
  
  Response ﻧ(String paramString)
  {
    ScribeService localScribeService = (ScribeService)((RestAdapter)this.RU.get()).create(ScribeService.class);
    if (!TextUtils.isEmpty(this.RF.RK)) {
      return localScribeService.uploadSequence(this.RF.RK, paramString);
    }
    return localScribeService.upload(this.RF.RI, this.RF.RJ, paramString);
  }
  
  static abstract interface ScribeService
  {
    @FormUrlEncoded
    @Headers({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
    @POST("/{version}/jot/{type}")
    public abstract Response upload(@Path("version") String paramString1, @Path("type") String paramString2, @Field("log[]") String paramString3);
    
    @FormUrlEncoded
    @Headers({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
    @POST("/scribe/{sequence}")
    public abstract Response uploadSequence(@Path("sequence") String paramString1, @Field("log[]") String paramString2);
  }
  
  static class if
    implements RequestInterceptor
  {
    private final ny RF;
    private final qr ok;
    
    if(ny paramny, qr paramqr)
    {
      this.RF = paramny;
      this.ok = paramqr;
    }
    
    public void intercept(RequestInterceptor.RequestFacade paramRequestFacade)
    {
      if (!TextUtils.isEmpty(this.RF.As)) {
        paramRequestFacade.addHeader("User-Agent", this.RF.As);
      }
      if (!TextUtils.isEmpty(this.ok.cE())) {
        paramRequestFacade.addHeader("X-Client-UUID", this.ok.cE());
      }
      paramRequestFacade.addHeader("X-Twitter-Polling", "true");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.ScribeFilesSender
 * JD-Core Version:    0.7.0.1
 */