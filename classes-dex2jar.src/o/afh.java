package o;

import com.squareup.okhttp.Call;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import java.io.IOException;

class afh
  implements Runnable
{
  afh(aet.ˋ paramˋ) {}
  
  public void run()
  {
    Object localObject = new Request.Builder().method("PUT", RequestBody.create(MediaType.parse("image/jpeg"), this.bBZ.bBY)).url(this.bBZ.boi).build();
    OkHttpClient localOkHttpClient = new OkHttpClient();
    try
    {
      localObject = localOkHttpClient.newCall((Request)localObject).execute();
      if (!((Response)localObject).isSuccessful()) {
        akk.ᐨ("RTMP", "thumb upload failed " + ((Response)localObject).code());
      }
    }
    catch (IOException localIOException)
    {
      akk.ˏ("RTMP", "thumbnail upload", localIOException);
    }
    this.bBZ.boi = null;
    this.bBZ.bBY = null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.afh
 * JD-Core Version:    0.7.0.1
 */