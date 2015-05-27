.class public Lo/acl;
.super Landroid/app/IntentService;
.source ""


# static fields
.field private static final SENDER_ID:Ljava/lang/String;


# instance fields
.field private final bny:Lo/ot;

.field private final bxQ:Ltv/periscope/android/push/PushClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-object v0, Lo/ze;->brk:Lo/zg;

    invoke-interface {v0}, Lo/zg;->uO()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/acl;->SENDER_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    const-string v0, "PushIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lo/vf;->tK()Lo/acm;

    move-result-object v0

    invoke-virtual {v0}, Lo/acm;->tH()Lo/ot;

    move-result-object v0

    iput-object v0, p0, Lo/acl;->bny:Lo/ot;

    .line 71
    new-instance v0, Ltv/periscope/android/push/PushClient;

    invoke-static {}, Lo/xt;->un()Lretrofit/RestAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/periscope/android/push/PushClient;-><init>(Lretrofit/RestAdapter;)V

    iput-object v0, p0, Lo/acl;->bxQ:Ltv/periscope/android/push/PushClient;

    .line 72
    return-void
.end method

.method private unregister(Ljava/lang/String;)V
    .locals 1

    .line 149
    invoke-direct {p0, p1}, Lo/acl;->ļ(Ljava/lang/String;)V

    .line 157
    invoke-static {p0}, Lo/ძ;->ٴ(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lo/acl;->wO()V

    .line 160
    :cond_0
    return-void
.end method

.method private wN()Ljava/lang/String;
    .locals 5

    .line 112
    const-string v0, "PushIntentService"

    const-string v1, "Registering with gcm"

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v3, 0x0

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v4

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lo/acl;->SENDER_ID:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {v4, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 117
    const-string v0, "PushIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device registered with gcm, registration ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lo/acl;->bny:Lo/ot;

    new-instance v1, Lo/acj;

    invoke-direct {v1, v3}, Lo/acj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 119
    :catch_0
    move-exception v4

    .line 120
    const-string v0, "PushIntentService"

    const-string v1, "Device register with gcm failed"

    invoke-static {v0, v1, v4}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :goto_0
    return-object v3
.end method

.method private wO()V
    .locals 4

    .line 173
    const-string v0, "PushIntentService"

    const-string v1, "Unregistering with gcm"

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    .line 176
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    .line 177
    iget-object v0, p0, Lo/acl;->bny:Lo/ot;

    new-instance v1, Lo/ack;

    invoke-direct {v1}, Lo/ack;-><init>()V

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 178
    :catch_0
    move-exception v3

    .line 179
    const-string v0, "PushIntentService"

    const-string v1, "Device unregister failed"

    invoke-static {v0, v1, v3}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :goto_0
    return-void
.end method

.method private ĺ(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Lo/acl;->wN()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-direct {p0, p1, v0}, Lo/acl;->יִ(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private ļ(Ljava/lang/String;)V
    .locals 3

    .line 163
    const-string v0, "PushIntentService"

    const-string v1, "Unregistering our token"

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :try_start_0
    iget-object v0, p0, Lo/acl;->bxQ:Ltv/periscope/android/push/PushClient;

    invoke-static {p0}, Lo/akn;->ۦ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ltv/periscope/android/push/PushClient;->ᵣ(Ljava/lang/String;Ljava/lang/String;)Ltv/periscope/android/push/PushClient$ˎ;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    const-string v0, "PushIntentService"

    const-string v1, "Failed to unregister token"

    invoke-static {v0, v1, v2}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    :goto_0
    return-void
.end method

.method private ˈ(Landroid/os/Bundle;)V
    .locals 4

    .line 212
    new-instance v3, Lo/acp;

    invoke-direct {v3, p0}, Lo/acp;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v3, p1}, Lo/acp;->ˉ(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v3, p1}, Lo/acp;->ˈ(Landroid/os/Bundle;)V

    goto :goto_0

    .line 216
    :cond_0
    const-string v0, "PushIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User requested to not see notification, dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void
.end method

.method private ᐝ(Landroid/content/Intent;)V
    .locals 6

    .line 186
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 187
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v4

    .line 190
    invoke-virtual {v4, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    const-string v0, "send_error"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "PushIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_0
    const-string v0, "deleted_messages"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "PushIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted messages on server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    const-string v0, "gcm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "PushIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v3}, Lo/acl;->ˈ(Landroid/os/Bundle;)V

    .line 209
    :cond_2
    :goto_0
    return-void
.end method

.method private יִ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 130
    const-string v0, "PushIntentService"

    const-string v1, "Registering our token"

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_0
    iget-object v0, p0, Lo/acl;->bxQ:Ltv/periscope/android/push/PushClient;

    move-object v1, p1

    invoke-static {p0}, Lo/akn;->เ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lo/akn;->ۦ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    invoke-static {p0}, Lo/akn;->ו(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lo/akn;->Ꭵ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {}, Lo/akn;->cD()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Ltv/periscope/android/push/PushClient;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltv/periscope/android/push/PushClient$ˊ;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 142
    :catch_0
    move-exception v9

    .line 144
    const-string v0, "PushIntentService"

    const-string v1, "Failed to register device and user for push, will try on next app launch"

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .line 76
    if-nez p1, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 82
    move-object v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "register"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v0, "register_token"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "unregister"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    :cond_1
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 84
    :pswitch_0
    const-string v0, "cookie"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/acl;->ĺ(Ljava/lang/String;)V

    .line 85
    goto :goto_2

    .line 88
    :pswitch_1
    const-string v0, "cookie"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-direct {p0, v4, v5}, Lo/acl;->יִ(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    goto :goto_2

    .line 94
    :pswitch_2
    const-string v0, "cookie"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/acl;->unregister(Ljava/lang/String;)V

    .line 95
    goto :goto_2

    .line 98
    :goto_1
    invoke-direct {p0, p1}, Lo/acl;->ᐝ(Landroid/content/Intent;)V

    .line 100
    invoke-static {p1}, Ltv/periscope/android/push/GcmBroadcastReceiver;->ˊ(Landroid/content/Intent;)Z

    .line 104
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2923d15d -> :sswitch_0
        -0x8337aa3 -> :sswitch_1
        0x31d4943c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
