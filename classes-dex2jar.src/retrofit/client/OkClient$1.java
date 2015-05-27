package retrofit.client;

import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.RequestBody;
import o.uh;
import retrofit.mime.TypedOutput;

final class OkClient$1
  extends RequestBody
{
  OkClient$1(MediaType paramMediaType, TypedOutput paramTypedOutput) {}
  
  public long contentLength()
  {
    return this.val$body.length();
  }
  
  public MediaType contentType()
  {
    return this.val$mediaType;
  }
  
  public void writeTo(uh paramuh)
  {
    this.val$body.writeTo(paramuh.dT());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.client.OkClient.1
 * JD-Core Version:    0.7.0.1
 */