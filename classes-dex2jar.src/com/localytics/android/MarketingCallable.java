package com.localytics.android;

abstract class MarketingCallable
{
  static final int ON_MARKETING_DESTROY = 1;
  static final int ON_MARKETING_DID_SHOW = 16;
  static final int ON_MARKETING_JS_CLOSE_WINDOW = 4;
  static final int ON_MARKETING_JS_GET_ATTRIBUTES = 7;
  static final int ON_MARKETING_JS_GET_CUSTOM_DIMENSIONS = 6;
  static final int ON_MARKETING_JS_GET_IDENTIFIERS = 5;
  static final int ON_MARKETING_JS_SET_CUSTOM_DIMENSIONS = 8;
  static final int ON_MARKETING_JS_TAG_EVENT = 3;
  static final int ON_MARKETING_NAVIGATE = 15;
  static final int ON_MARKETING_TAG_ACTION = 2;
  static final int ON_MARKETING_TEST_CLOSE_CAMPAIGN_LIST = 10;
  static final int ON_MARKETING_TEST_COPY_INSTALL_ID = 14;
  static final int ON_MARKETING_TEST_COPY_PUSH_TOKEN = 13;
  static final int ON_MARKETING_TEST_POPUP_CAMPAIGN_LIST = 9;
  static final int ON_MARKETING_TEST_REFRESH_CAMPAIGN_LIST = 12;
  static final int ON_MARKETING_TEST_SHOW_CAMPAIGN = 11;
  static final int ON_MARKETING_WILL_DISMISS = 17;
  
  abstract Object call(Object[] paramArrayOfObject);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingCallable
 * JD-Core Version:    0.7.0.1
 */