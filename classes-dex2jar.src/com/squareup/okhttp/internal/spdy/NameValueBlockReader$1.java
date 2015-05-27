package com.squareup.okhttp.internal.spdy;

import o.ue;
import o.um;
import o.va;

class NameValueBlockReader$1
  extends um
{
  NameValueBlockReader$1(NameValueBlockReader paramNameValueBlockReader, va paramva)
  {
    super(paramva);
  }
  
  public long read(ue paramue, long paramLong)
  {
    if (NameValueBlockReader.access$000(this.this$0) == 0) {
      return -1L;
    }
    paramLong = super.read(paramue, Math.min(paramLong, NameValueBlockReader.access$000(this.this$0)));
    if (paramLong == -1L) {
      return -1L;
    }
    NameValueBlockReader.access$002(this.this$0, (int)(NameValueBlockReader.access$000(this.this$0) - paramLong));
    return paramLong;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.NameValueBlockReader.1
 * JD-Core Version:    0.7.0.1
 */