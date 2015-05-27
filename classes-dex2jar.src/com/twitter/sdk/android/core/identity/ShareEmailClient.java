package com.twitter.sdk.android.core.identity;

import o.lz;
import o.mi;
import o.mr;
import o.oo;
import retrofit.http.GET;
import retrofit.http.Query;

public class ShareEmailClient
  extends mi
{
  public ShareEmailClient(mr parammr)
  {
    super(parammr);
  }
  
  public void ˊ(lz<oo> paramlz)
  {
    ((EmailService)ˌ(EmailService.class)).verifyCredentials(Boolean.valueOf(true), Boolean.valueOf(true), paramlz);
  }
  
  static abstract interface EmailService
  {
    @GET("/1.1/account/verify_credentials.json?include_email=true")
    public abstract void verifyCredentials(@Query("include_entities") Boolean paramBoolean1, @Query("skip_status") Boolean paramBoolean2, lz<oo> paramlz);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.ShareEmailClient
 * JD-Core Version:    0.7.0.1
 */