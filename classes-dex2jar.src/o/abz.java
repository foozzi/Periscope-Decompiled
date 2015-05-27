package o;

import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import retrofit.ResponseCallback;
import retrofit.RetrofitError;
import retrofit.client.Response;
import retrofit.mime.TypedInput;

final class abz
  extends ResponseCallback
{
  abz(String paramString) {}
  
  public void failure(RetrofitError paramRetrofitError)
  {
    akk.ˏ("PsPubnub", "failure", paramRetrofitError);
  }
  
  public void success(Response paramResponse)
  {
    Object localObject = null;
    Response localResponse = null;
    try
    {
      paramResponse = paramResponse.getBody().in();
      localResponse = paramResponse;
      localObject = paramResponse;
      fw localfw = new gb().ˊ(new InputStreamReader(paramResponse));
      localResponse = paramResponse;
      localObject = paramResponse;
      boolean bool = localfw.o();
      if (!bool)
      {
        Util.closeQuietly(paramResponse);
        return;
      }
      localResponse = paramResponse;
      localObject = paramResponse;
      localfw = localfw.r().เ("message");
      if (localfw != null)
      {
        localResponse = paramResponse;
        localObject = paramResponse;
        if (localfw.o()) {}
      }
      else
      {
        localResponse = paramResponse;
        localObject = paramResponse;
        akk.ᐨ("PsPubnub", "SIGNER: No message");
        Util.closeQuietly(paramResponse);
        return;
      }
      localResponse = paramResponse;
      localObject = paramResponse;
      abx.ˋ(this.OC, localfw.r());
      Util.closeQuietly(paramResponse);
      return;
    }
    catch (IOException paramResponse)
    {
      localObject = localResponse;
      akk.ˏ("PsPubnub", "SIGNER", paramResponse);
      Util.closeQuietly(localResponse);
      return;
    }
    finally
    {
      Util.closeQuietly((Closeable)localObject);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abz
 * JD-Core Version:    0.7.0.1
 */