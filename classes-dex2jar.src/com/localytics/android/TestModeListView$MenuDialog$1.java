package com.localytics.android;

import android.annotation.TargetApi;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.Map;

class TestModeListView$MenuDialog$1
  implements AdapterView.OnItemClickListener
{
  TestModeListView$MenuDialog$1(TestModeListView.MenuDialog paramMenuDialog) {}
  
  @TargetApi(11)
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      Constants.setTestModeEnabled(false);
      this.this$1.this$0.dismiss();
    }
    else if (paramInt == 1)
    {
      if (TestModeListView.access$200(this.this$1.this$0) != null)
      {
        paramAdapterView = (MarketingCallable)TestModeListView.access$200(this.this$1.this$0).get(Integer.valueOf(12));
        if (paramAdapterView != null) {
          paramAdapterView.call(null);
        }
      }
    }
    else if (paramInt == 2)
    {
      if (TestModeListView.access$200(this.this$1.this$0) != null)
      {
        paramAdapterView = (MarketingCallable)TestModeListView.access$200(this.this$1.this$0).get(Integer.valueOf(13));
        if (paramAdapterView != null) {
          paramAdapterView.call(null);
        }
      }
    }
    else if ((paramInt == 3) && (TestModeListView.access$200(this.this$1.this$0) != null))
    {
      paramAdapterView = (MarketingCallable)TestModeListView.access$200(this.this$1.this$0).get(Integer.valueOf(14));
      if (paramAdapterView != null) {
        paramAdapterView.call(null);
      }
    }
    this.this$1.dismiss();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.TestModeListView.MenuDialog.1
 * JD-Core Version:    0.7.0.1
 */