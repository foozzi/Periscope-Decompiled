package o;

import android.app.Application;
import com.localytics.android.Localytics;
import com.localytics.android.LocalyticsActivityLifecycleCallbacks;
import java.util.HashMap;

public class vi
{
  public static void ˊ(Application paramApplication)
  {
    paramApplication.registerActivityLifecycleCallbacks(new LocalyticsActivityLifecycleCallbacks(paramApplication));
  }
  
  public static void ˊ(if paramif)
  {
    Localytics.tagEvent(paramif.WA);
    akk.ᐪ("Analytics", paramif.WA);
  }
  
  public static void ˊ(if paramif, HashMap<String, String> paramHashMap)
  {
    Localytics.tagEvent(paramif.WA, paramHashMap);
    akk.ᐪ("Analytics", paramif.WA + " " + paramHashMap);
  }
  
  public static enum if
  {
    public final String WA;
    
    static
    {
      blA = new if("ProfileSendFeedback", 6, "user_sends_feedback");
      blB = new if("ProfileLogout", 7, "profile_logout");
      blC = new if("SendFeedbackCanceled", 8, "user_cancels_send_feedback");
      blD = new if("SendFeedbackGenerated", 9, "user_saves_draft_feedback");
      blE = new if("SettingsAutosaveOn", 10, "user_turns_on_autosave_broadcasts");
      blF = new if("SettingsAutosaveOff", 11, "user_turns_off_autosave_broadcasts");
      blG = new if("SettingsNewFollowerPushOn", 12, "user_turns_on_new_follower_push");
      blH = new if("SettingsNewFollowerPushOff", 13, "user_turns_off_new_follower_push");
      blI = new if("SettingsFollowedLivePushOn", 14, "user_turns_on_followed_live_push");
      blJ = new if("SettingsFollowedLivePushOff", 15, "user_turns_off_followed_live_push");
      blK = new if("SettingsFollowedSharePushOn", 16, "user_turns_on_followed_share_push");
      blL = new if("SettingsFollowedSharePushOff", 17, "user_turns_off_followed_share_push");
      blM = new if("SettingsSuggestedFirstPushOn", 18, "user_turns_on_suggested_first_push");
      blN = new if("SettingsSuggestedFirstPushOff", 19, "user_turns_off_suggested_first_push");
      blO = new if("NewUserSkipWalkthrough", 20, "skip_walkthrough");
      blP = new if("NewUserGetStartedWalkthrough", 21, "Get Stated (Walkthrough)");
      blQ = new if("NewUserViewTos", 22, "viewed_terms_of_service");
      blR = new if("NewUserViewPP", 23, "viewed_privacy_policy");
      blS = new if("NewUserLoginWithTwitter", 24, "Login with Twitter Pressed");
      blT = new if("NewUserFailedTwitterLogin", 25, "Failed Create Account (Pressed Login Twitter)");
      blU = new if("NewUserFailedLogin", 26, "Failed Create Account (Didn't Press Login)");
      blV = new if("LiveAvatarTapped", 27, "live_cell_selects_profile_image");
      blW = new if("LiveAuthorNameTapped", 28, "live_cell_selects_display_name");
      blX = new if("EmptyHomeLivePromptTapped", 29, "Tapped View Global List");
      blY = new if("ViewerCommentOnBroadcast", 30, "commented_on_broadcast");
      blZ = new if("ViewerSharePressed", 31, "share_icon_pressed");
      bma = new if("ViewerShareFollowers", 32, "share_followers_chosen");
      bmb = new if("ViewerShareAllFollowers", 33, "share_all_followers_chosen");
      bmc = new if("ViewerParticipantButtonPressed", 34, "participants_button_pressed");
      bmd = new if("ViewerDraggedToInfo", 35, "dragged_to_info");
      bme = new if("ViewerAwayFromInfo", 36, "dragged_from_info");
      bmf = new if("ViewerPromptedToFollow", 37, "prompted_to_follow_broadcaster_in_chat");
      bmg = new if("ViewerPromptedToShare", 38, "prompted_to_share_broadcast_in_chat");
      bmh = new if("ViewerFollowedBroadcasterFromChat", 39, "followed_broadcaster_from_chat");
      bmi = new if("ViewerUnFollowedBroadcasterFromChat", 40, "unfollowed_broadcaster_from_chat");
      bmj = new if("ViewerBlockUserFromChat", 41, "Block User - Chat");
      bmk = new if("ViewerLiveHeartsSent", 42, "Live Hearts Sent");
      bml = new if("ViewerReplayHeartsSent", 43, "Replay Hearts Sent");
      bmm = new if("ViewerTappedBroadcasterBlockedChat", 44, "tapped_broadcaster_blocked_chat");
      bmn = new if("ReplayPlayPressed", 45, "replay_play");
      bmo = new if("ReplayPausePressed", 46, "replay_pause");
      bmp = new if("ReplayDeletePressed", 47, "replay_delete");
      bmq = new if("ReplaySavedToGallery", 48, "replay_save_to_camera_roll");
      bmr = new if("ReplayWatchedEntirety", 49, "watched_entire_replay");
      bms = new if("ReportBroadcastStarted", 50, "report_broadcast_started");
      bmt = new if("ReportBroadcastCompleted", 51, "report_broadcast_completed");
      bmu = new if("ReportBroadcastCanceled", 52, "report_broadcast_cancelled");
      bmv = new if("ReportBroadcastError", 53, "report_broadcast_error");
      bmw = new if("HideChatOn", 54, "hide_chat_on");
      bmx = new if("HideChatOff", 55, "hide_chat_off");
      bmy = new if("ShareBroadcastPressed", 56, "Share Broadcast (from Share/Cinema)");
      bmz = new if("PreBroadcastLocationOn", 57, "pre_broadcast_enable_location");
    }
    
    private if(String paramString)
    {
      this.WA = paramString;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.vi
 * JD-Core Version:    0.7.0.1
 */