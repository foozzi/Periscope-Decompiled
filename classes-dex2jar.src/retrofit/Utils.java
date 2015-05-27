package retrofit;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import retrofit.client.Request;
import retrofit.client.Response;
import retrofit.mime.TypedByteArray;
import retrofit.mime.TypedInput;
import retrofit.mime.TypedOutput;

final class Utils
{
  private static final int BUFFER_SIZE = 4096;
  
  static Request readBodyToBytesIfNecessary(Request paramRequest)
  {
    Object localObject = paramRequest.getBody();
    if ((localObject == null) || ((localObject instanceof TypedByteArray))) {
      return paramRequest;
    }
    String str = ((TypedOutput)localObject).mimeType();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ((TypedOutput)localObject).writeTo(localByteArrayOutputStream);
    localObject = new TypedByteArray(str, localByteArrayOutputStream.toByteArray());
    return new Request(paramRequest.getMethod(), paramRequest.getUrl(), paramRequest.getHeaders(), (TypedOutput)localObject);
  }
  
  static Response readBodyToBytesIfNecessary(Response paramResponse)
  {
    Object localObject = paramResponse.getBody();
    if ((localObject == null) || ((localObject instanceof TypedByteArray))) {
      return paramResponse;
    }
    String str = ((TypedInput)localObject).mimeType();
    localObject = ((TypedInput)localObject).in();
    try
    {
      paramResponse = replaceResponseBody(paramResponse, new TypedByteArray(str, streamToBytes((InputStream)localObject)));
      if (localObject != null) {
        try
        {
          ((InputStream)localObject).close();
          return paramResponse;
        }
        catch (IOException localIOException1) {}
      }
      return paramResponse;
    }
    finally
    {
      if (localIOException1 != null) {
        try
        {
          localIOException1.close();
        }
        catch (IOException localIOException2) {}
      }
    }
  }
  
  static Response replaceResponseBody(Response paramResponse, TypedInput paramTypedInput)
  {
    return new Response(paramResponse.getUrl(), paramResponse.getStatus(), paramResponse.getReason(), paramResponse.getHeaders(), paramTypedInput);
  }
  
  static byte[] streamToBytes(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    if (paramInputStream != null)
    {
      byte[] arrayOfByte = new byte[4096];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  static <T> void validateServiceClass(Class<T> paramClass)
  {
    if (!paramClass.isInterface()) {
      throw new IllegalArgumentException("Only interface endpoint definitions are supported.");
    }
    if (paramClass.getInterfaces().length > 0) {
      throw new IllegalArgumentException("Interface definitions must not extend other interfaces.");
    }
  }
  
  static class SynchronousExecutor
    implements Executor
  {
    public void execute(Runnable paramRunnable)
    {
      paramRunnable.run();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.Utils
 * JD-Core Version:    0.7.0.1
 */