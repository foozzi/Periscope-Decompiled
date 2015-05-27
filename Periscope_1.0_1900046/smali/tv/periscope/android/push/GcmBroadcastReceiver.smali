.class public Ltv/periscope/android/push/GcmBroadcastReceiver;
.super Lo/ᐟ;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/ᐟ;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 39
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lo/acl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/periscope/android/push/GcmBroadcastReceiver;->ˊ(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ltv/periscope/android/push/GcmBroadcastReceiver;->setResultCode(I)V

    .line 44
    return-void
.end method
