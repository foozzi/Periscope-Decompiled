package retrofit.client;

import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import java.io.InputStream;
import retrofit.mime.TypedInput;

final class OkClient$2
  implements TypedInput
{
  OkClient$2(ResponseBody paramResponseBody) {}
  
  public InputStream in()
  {
    return this.val$body.byteStream();
  }
  
  public long length()
  {
    return this.val$body.contentLength();
  }
  
  public String mimeType()
  {
    MediaType localMediaType = this.val$body.contentType();
    if (localMediaType == null) {
      return null;
    }
    return localMediaType.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.client.OkClient.2
 * JD-Core Version:    0.7.0.1
 */