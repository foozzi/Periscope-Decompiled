package o;

import retrofit.RetrofitError;
import retrofit.client.Response;

public class aai
{
  public if bsV;
  public RetrofitError bsW;
  public Object data;
  public Exception hN;
  
  public aai(if paramif, Exception paramException)
  {
    this.bsV = paramif;
    this.hN = paramException;
  }
  
  public aai(if paramif, Object paramObject)
  {
    this.bsV = paramif;
    this.data = paramObject;
  }
  
  public aai(if paramif, RetrofitError paramRetrofitError)
  {
    this.bsV = paramif;
    this.bsW = paramRetrofitError;
  }
  
  public aai(if paramif, RetrofitError paramRetrofitError, Object paramObject)
  {
    this.bsV = paramif;
    this.bsW = paramRetrofitError;
    this.data = paramObject;
  }
  
  public String getReason()
  {
    if ((this.bsW != null) && (this.bsW.getResponse() != null)) {
      return this.bsW.getResponse().getReason();
    }
    return null;
  }
  
  public boolean vA()
  {
    return (this.bsW == null) && (this.hN == null);
  }
  
  public static enum if
  {
    private if() {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aai
 * JD-Core Version:    0.7.0.1
 */