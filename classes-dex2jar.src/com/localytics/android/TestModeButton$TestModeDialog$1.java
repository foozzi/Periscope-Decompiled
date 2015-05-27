package com.localytics.android;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import java.util.Map;

class TestModeButton$TestModeDialog$1
  implements View.OnClickListener
{
  TestModeButton$TestModeDialog$1(TestModeButton.TestModeDialog paramTestModeDialog) {}
  
  public void onClick(View paramView)
  {
    TestModeButton.TestModeDialog.access$100(this.this$1).startAnimation(TestModeButton.TestModeDialog.access$000(this.this$1));
    if (TestModeButton.access$200(this.this$1.this$0) != null)
    {
      paramView = (MarketingCallable)TestModeButton.access$200(this.this$1.this$0).get(Integer.valueOf(9));
      if (paramView != null) {
        paramView.call(null);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.TestModeButton.TestModeDialog.1
 * JD-Core Version:    0.7.0.1
 */