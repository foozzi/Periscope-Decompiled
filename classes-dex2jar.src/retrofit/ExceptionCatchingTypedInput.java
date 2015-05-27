package retrofit;

import java.io.IOException;
import java.io.InputStream;
import retrofit.mime.TypedInput;

class ExceptionCatchingTypedInput
  implements TypedInput
{
  private final TypedInput delegate;
  private final ExceptionCatchingInputStream delegateStream;
  
  ExceptionCatchingTypedInput(TypedInput paramTypedInput)
  {
    this.delegate = paramTypedInput;
    this.delegateStream = new ExceptionCatchingInputStream(paramTypedInput.in());
  }
  
  IOException getThrownException()
  {
    return this.delegateStream.thrownException;
  }
  
  public InputStream in()
  {
    return this.delegateStream;
  }
  
  public long length()
  {
    return this.delegate.length();
  }
  
  public String mimeType()
  {
    return this.delegate.mimeType();
  }
  
  boolean threwException()
  {
    return this.delegateStream.thrownException != null;
  }
  
  static class ExceptionCatchingInputStream
    extends InputStream
  {
    private final InputStream delegate;
    private IOException thrownException;
    
    ExceptionCatchingInputStream(InputStream paramInputStream)
    {
      this.delegate = paramInputStream;
    }
    
    public int available()
    {
      try
      {
        int i = this.delegate.available();
        return i;
      }
      catch (IOException localIOException)
      {
        this.thrownException = localIOException;
        throw localIOException;
      }
    }
    
    public void close()
    {
      try
      {
        this.delegate.close();
        return;
      }
      catch (IOException localIOException)
      {
        this.thrownException = localIOException;
        throw localIOException;
      }
    }
    
    public void mark(int paramInt)
    {
      try
      {
        this.delegate.mark(paramInt);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public boolean markSupported()
    {
      return this.delegate.markSupported();
    }
    
    public int read()
    {
      try
      {
        int i = this.delegate.read();
        return i;
      }
      catch (IOException localIOException)
      {
        this.thrownException = localIOException;
        throw localIOException;
      }
    }
    
    public int read(byte[] paramArrayOfByte)
    {
      try
      {
        int i = this.delegate.read(paramArrayOfByte);
        return i;
      }
      catch (IOException paramArrayOfByte)
      {
        this.thrownException = paramArrayOfByte;
        throw paramArrayOfByte;
      }
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      try
      {
        paramInt1 = this.delegate.read(paramArrayOfByte, paramInt1, paramInt2);
        return paramInt1;
      }
      catch (IOException paramArrayOfByte)
      {
        this.thrownException = paramArrayOfByte;
        throw paramArrayOfByte;
      }
    }
    
    public void reset()
    {
      try
      {
        try
        {
          this.delegate.reset();
        }
        catch (IOException localIOException)
        {
          this.thrownException = localIOException;
          throw localIOException;
        }
        return;
      }
      finally {}
    }
    
    public long skip(long paramLong)
    {
      try
      {
        paramLong = this.delegate.skip(paramLong);
        return paramLong;
      }
      catch (IOException localIOException)
      {
        this.thrownException = localIOException;
        throw localIOException;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.ExceptionCatchingTypedInput
 * JD-Core Version:    0.7.0.1
 */