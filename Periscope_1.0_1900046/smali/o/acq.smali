.class public Lo/acq;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "dismiss"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    .line 19
    :sswitch_1
    const-string v0, "PushNotificationReceiver"

    const-string v1, "User dismissed notification"

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lo/acp;

    invoke-direct {v0, p1}, Lo/acp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lo/acp;->ʻ(Landroid/content/Intent;)V

    .line 21
    .line 27
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x63a3b28a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
    .end sparse-switch
.end method
