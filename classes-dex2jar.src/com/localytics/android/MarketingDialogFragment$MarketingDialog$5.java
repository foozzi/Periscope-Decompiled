package com.localytics.android;

import android.widget.RelativeLayout;

class MarketingDialogFragment$MarketingDialog$5
  implements Runnable
{
  MarketingDialogFragment$MarketingDialog$5(MarketingDialogFragment.MarketingDialog paramMarketingDialog) {}
  
  public void run()
  {
    String str = (String)MarketingDialogFragment.access$200(this.this$1.this$0).get("location");
    if (str.equals("center"))
    {
      MarketingDialogFragment.MarketingDialog.access$700(this.this$1).startAnimation(MarketingDialogFragment.MarketingDialog.access$600(this.this$1));
      return;
    }
    if (str.equals("full"))
    {
      MarketingDialogFragment.MarketingDialog.access$700(this.this$1).startAnimation(MarketingDialogFragment.MarketingDialog.access$800(this.this$1));
      return;
    }
    if (str.equals("top"))
    {
      MarketingDialogFragment.MarketingDialog.access$700(this.this$1).startAnimation(MarketingDialogFragment.MarketingDialog.access$900(this.this$1));
      return;
    }
    if (str.equals("bottom")) {
      MarketingDialogFragment.MarketingDialog.access$700(this.this$1).startAnimation(MarketingDialogFragment.MarketingDialog.access$1000(this.this$1));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingDialogFragment.MarketingDialog.5
 * JD-Core Version:    0.7.0.1
 */