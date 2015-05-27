.class public Lcom/localytics/android/LocalyticsActivityWithMarketing;
.super Lo/ι;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/ι;-><init>()V

    return-void
.end method


# virtual methods
.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lo/ι;->onNewIntent(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocalyticsActivityWithMarketing;->setIntent(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 16
    invoke-static {}, Lcom/localytics/android/Localytics;->dismissCurrentInAppMessage()V

    .line 17
    invoke-static {}, Lcom/localytics/android/Localytics;->clearInAppMessageDisplayActivity()V

    .line 18
    invoke-static {}, Lcom/localytics/android/Localytics;->closeSession()V

    .line 19
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 20
    invoke-super {p0}, Lo/ι;->onPause()V

    .line 21
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 33
    invoke-super {p0}, Lo/ι;->onResume()V

    .line 34
    invoke-static {}, Lcom/localytics/android/Localytics;->openSession()V

    .line 35
    invoke-static {p0}, Lcom/localytics/android/Localytics;->setInAppMessageDisplayActivity(Lo/ι;)V

    .line 36
    invoke-virtual {p0}, Lcom/localytics/android/LocalyticsActivityWithMarketing;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/localytics/android/LocalyticsActivityWithMarketing;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics;->handleTestMode(Landroid/content/Intent;)V

    .line 38
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 39
    return-void
.end method
