package tv.periscope.android.signer;

import o.ada;
import o.yi;
import retrofit.Callback;
import retrofit.client.Response;
import retrofit.http.Body;
import retrofit.http.Multipart;
import retrofit.http.POST;
import retrofit.http.Part;
import retrofit.mime.TypedFile;

public abstract interface SignerService
{
  @POST("/sign")
  public abstract void sign(@Body ada paramada, Callback<Response> paramCallback);
  
  @Multipart
  @POST("/upload")
  public abstract yi uploadPadding(@Part("cookie") String paramString, @Part("padding") TypedFile paramTypedFile);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.signer.SignerService
 * JD-Core Version:    0.7.0.1
 */