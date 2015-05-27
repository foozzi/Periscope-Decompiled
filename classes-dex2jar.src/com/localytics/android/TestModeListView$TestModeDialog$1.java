package com.localytics.android;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import java.util.Map;

class TestModeListView$TestModeDialog$1
  implements View.OnClickListener
{
  TestModeListView$TestModeDialog$1(TestModeListView.TestModeDialog paramTestModeDialog) {}
  
  public void onClick(View paramView)
  {
    TestModeListView.TestModeDialog.access$100(this.this$1).startAnimation(TestModeListView.TestModeDialog.access$000(this.this$1));
    if (TestModeListView.access$200(this.this$1.this$0) != null)
    {
      paramView = (MarketingCallable)TestModeListView.access$200(this.this$1.this$0).get(Integer.valueOf(10));
      if (paramView != null) {
        paramView.call(null);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.TestModeListView.TestModeDialog.1
 * JD-Core Version:    0.7.0.1
 */