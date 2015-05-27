package o;

import android.content.Context;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class יּ<D>
{
  Context mContext;
  boolean Ȉ = false;
  boolean ȋ = true;
  boolean ɨ = false;
  boolean ɪ = false;
  boolean וֹ = false;
  int ﹷ;
  יּ.if<D> ｨ;
  
  public יּ(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
  }
  
  public void abandon()
  {
    this.Ȉ = true;
    onAbandon();
  }
  
  public String dataToString(D paramD)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    ᵓ.ˊ(paramD, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void deliverResult(D paramD)
  {
    if (this.ｨ != null) {
      this.ｨ.ˋ(this, paramD);
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.ﹷ);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(this.ｨ);
    if ((this.וֹ) || (this.ɨ) || (this.ɪ))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(this.וֹ);
      paramPrintWriter.print(" mContentChanged=");
      paramPrintWriter.print(this.ɨ);
      paramPrintWriter.print(" mProcessingChange=");
      paramPrintWriter.println(this.ɪ);
    }
    if ((this.Ȉ) || (this.ȋ))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAbandoned=");
      paramPrintWriter.print(this.Ȉ);
      paramPrintWriter.print(" mReset=");
      paramPrintWriter.println(this.ȋ);
    }
  }
  
  public int getId()
  {
    return this.ﹷ;
  }
  
  public boolean isAbandoned()
  {
    return this.Ȉ;
  }
  
  public boolean isStarted()
  {
    return this.וֹ;
  }
  
  protected void onAbandon() {}
  
  protected void onReset() {}
  
  protected void onStartLoading() {}
  
  protected void onStopLoading() {}
  
  public void reset()
  {
    onReset();
    this.ȋ = true;
    this.וֹ = false;
    this.Ȉ = false;
    this.ɨ = false;
    this.ɪ = false;
  }
  
  public final void startLoading()
  {
    this.וֹ = true;
    this.ȋ = false;
    this.Ȉ = false;
    onStartLoading();
  }
  
  public void stopLoading()
  {
    this.וֹ = false;
    onStopLoading();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    ᵓ.ˊ(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.ﹷ);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void ˊ(int paramInt, יּ.if<D> paramif)
  {
    if (this.ｨ != null) {
      throw new IllegalStateException("There is already a listener registered");
    }
    this.ｨ = paramif;
    this.ﹷ = paramInt;
  }
  
  public void ˊ(יּ.if<D> paramif)
  {
    if (this.ｨ == null) {
      throw new IllegalStateException("No listener register");
    }
    if (this.ｨ != paramif) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    this.ｨ = null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬¹
 * JD-Core Version:    0.7.0.1
 */