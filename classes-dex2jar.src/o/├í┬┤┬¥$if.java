package o;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class ᴝ$if
  extends יּ<ConnectionResult>
  implements ᒴ.ˊ, ᒴ.ˋ
{
  public final ᒴ Dw;
  private boolean Dx;
  private ConnectionResult Dy;
  
  public ᴝ$if(Context paramContext, ᒴ paramᒴ)
  {
    super(paramContext);
    this.Dw = paramᒴ;
  }
  
  private void ʻ(ConnectionResult paramConnectionResult)
  {
    this.Dy = paramConnectionResult;
    if ((isStarted()) && (!isAbandoned())) {
      deliverResult(paramConnectionResult);
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    this.Dw.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  protected void onReset()
  {
    this.Dy = null;
    this.Dx = false;
    this.Dw.ˋ(this);
    this.Dw.ˋ(this);
    this.Dw.disconnect();
  }
  
  protected void onStartLoading()
  {
    super.onStartLoading();
    this.Dw.ˊ(this);
    this.Dw.ˊ(this);
    if (this.Dy != null) {
      deliverResult(this.Dy);
    }
    if ((!this.Dw.isConnected()) && (!this.Dw.isConnecting()) && (!this.Dx)) {
      this.Dw.connect();
    }
  }
  
  protected void onStopLoading()
  {
    this.Dw.disconnect();
  }
  
  public void ˊ(Bundle paramBundle)
  {
    this.Dx = false;
    ʻ(ConnectionResult.BG);
  }
  
  public void ˊ(ConnectionResult paramConnectionResult)
  {
    this.Dx = true;
    ʻ(paramConnectionResult);
  }
  
  public void ܙ(int paramInt) {}
  
  public boolean ᒰ()
  {
    return this.Dx;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´.if
 * JD-Core Version:    0.7.0.1
 */