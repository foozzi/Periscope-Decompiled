package com.localytics.android;

import android.view.View;
import android.view.View.OnClickListener;
import java.util.concurrent.atomic.AtomicBoolean;

class MarketingDialogFragment$MarketingDialog$2
  implements View.OnClickListener
{
  MarketingDialogFragment$MarketingDialog$2(MarketingDialogFragment.MarketingDialog paramMarketingDialog) {}
  
  public void onClick(View paramView)
  {
    if (MarketingDialogFragment.access$300(this.this$1.this$0).getAndSet(false)) {
      this.this$1.dismissWithAnimation();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingDialogFragment.MarketingDialog.2
 * JD-Core Version:    0.7.0.1
 */