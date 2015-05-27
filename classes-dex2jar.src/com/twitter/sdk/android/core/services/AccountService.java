package com.twitter.sdk.android.core.services;

import o.lz;
import o.oo;
import retrofit.http.GET;
import retrofit.http.Query;

public abstract interface AccountService
{
  @GET("/1.1/account/verify_credentials.json")
  public abstract oo verifyCredentials(@Query("include_entities") Boolean paramBoolean1, @Query("skip_status") Boolean paramBoolean2);
  
  @GET("/1.1/account/verify_credentials.json")
  public abstract void verifyCredentials(@Query("include_entities") Boolean paramBoolean1, @Query("skip_status") Boolean paramBoolean2, lz<oo> paramlz);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.services.AccountService
 * JD-Core Version:    0.7.0.1
 */