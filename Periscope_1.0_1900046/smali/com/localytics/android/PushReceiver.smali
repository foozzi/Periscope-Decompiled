.class public Lcom/localytics/android/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final MAX_RETRIES:I = 0x3

.field private static final RETRY_DELAY:J = 0x1388L

.field private static numRetries:I = 0x0

.field static retrySenderId:Ljava/lang/String; = null


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/PushReceiver;->retrySenderId:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/localytics/android/PushReceiver;->numRetries:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 22
    invoke-static {p1}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/localytics/android/Localytics;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {p2}, Lcom/localytics/android/Localytics;->handleRegistration(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 35
    const-string v0, "com.google.android.gms.gcm.GoogleCloudMessaging"

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/localytics/android/ReflectionUtils;->tryInvokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 36
    if-eqz v7, :cond_4

    .line 38
    const-string v0, "getMessageType"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v7, v0, v1, v2}, Lcom/localytics/android/ReflectionUtils;->tryInvokeInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 39
    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 41
    const-string v0, "com.google.android.gms.gcm.GoogleCloudMessaging"

    const-string v1, "ERROR_SERVICE_NOT_AVAILABLE"

    invoke-static {v0, v1}, Lcom/localytics/android/ReflectionUtils;->tryGetStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    sget-object v0, Lcom/localytics/android/PushReceiver;->retrySenderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 45
    sget v0, Lcom/localytics/android/PushReceiver;->numRetries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/localytics/android/PushReceiver;->numRetries:I

    .line 46
    sget v0, Lcom/localytics/android/PushReceiver;->numRetries:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 47
    const-string v0, "GCM registration ERROR_SERVICE_NOT_AVAILABLE. Retrying in 5000 milliseconds."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 48
    sget-object v0, Lcom/localytics/android/PushReceiver;->retrySenderId:Ljava/lang/String;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/localytics/android/Localytics;->registerPush(Ljava/lang/String;J)V

    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/localytics/android/PushReceiver;->numRetries:I

    .line 52
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/PushReceiver;->retrySenderId:Ljava/lang/String;

    goto :goto_1

    .line 55
    :cond_3
    const-string v0, "com.google.android.gms.gcm.GoogleCloudMessaging"

    const-string v1, "MESSAGE_TYPE_MESSAGE"

    invoke-static {v0, v1}, Lcom/localytics/android/ReflectionUtils;->tryGetStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    invoke-static {p2}, Lcom/localytics/android/Localytics;->handleNotificationReceived(Landroid/content/Intent;)V

    .line 62
    :cond_4
    :goto_1
    return-void
.end method
