package o;

import java.io.UnsupportedEncodingException;
import retrofit.RetrofitError;
import retrofit.client.Response;
import retrofit.mime.TypedByteArray;

public class mj
  extends mo
{
  private final RetrofitError Qi;
  private final mq Qj;
  private final of Qk;
  
  mj(RetrofitError paramRetrofitError)
  {
    super(ˊ(paramRetrofitError));
    setStackTrace(paramRetrofitError.getStackTrace());
    this.Qi = paramRetrofitError;
    this.Qj = ˋ(paramRetrofitError);
    this.Qk = ˏ(paramRetrofitError);
  }
  
  private static String ˊ(RetrofitError paramRetrofitError)
  {
    if (paramRetrofitError.getMessage() != null) {
      return paramRetrofitError.getMessage();
    }
    if (paramRetrofitError.getResponse() != null) {
      return "Status: " + paramRetrofitError.getResponse().getStatus();
    }
    return "unknown error";
  }
  
  private static mq ˋ(RetrofitError paramRetrofitError)
  {
    if (paramRetrofitError.getResponse() != null) {
      return new mq(paramRetrofitError.getResponse().getHeaders());
    }
    return null;
  }
  
  public static final mj ˎ(RetrofitError paramRetrofitError)
  {
    return new mj(paramRetrofitError);
  }
  
  public static of ˏ(RetrofitError paramRetrofitError)
  {
    if ((paramRetrofitError == null) || (paramRetrofitError.getResponse() == null) || (paramRetrofitError.getResponse().getBody() == null)) {
      return null;
    }
    paramRetrofitError = ((TypedByteArray)paramRetrofitError.getResponse().getBody()).getBytes();
    if (paramRetrofitError == null) {
      return null;
    }
    try
    {
      paramRetrofitError = ᕽ(new String(paramRetrofitError, "UTF-8"));
      return paramRetrofitError;
    }
    catch (UnsupportedEncodingException paramRetrofitError)
    {
      pj.cd().ˏ("Twitter", "Failed to convert to string", paramRetrofitError);
    }
    return null;
  }
  
  static of ᕽ(String paramString)
  {
    Object localObject = new fl();
    try
    {
      localObject = (of[])((fl)localObject).ˊ(new gb().ᐤ(paramString).r().เ("errors"), [Lo.of.class);
      int i = localObject.length;
      if (i == 0) {
        return null;
      }
      return localObject[0];
    }
    catch (gf localgf)
    {
      pj.cd().ˏ("Twitter", "Invalid json: " + paramString, localgf);
    }
    catch (Exception localException)
    {
      pj.cd().ˏ("Twitter", "Unexpected response: " + paramString, localException);
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mj
 * JD-Core Version:    0.7.0.1
 */