.class public Lo/acp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bxV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
        }
    .end annotation
.end field


# instance fields
.field private final bxW:Landroid/app/NotificationManager;

.field private final bxX:Lo/acz;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/acp;->bxV:Ljava/util/Map;

    .line 38
    sget-object v0, Lo/acp;->bxV:Ljava/util/Map;

    const-string v1, "0"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lo/acp;->bxV:Ljava/util/Map;

    const-string v1, "1"

    const/16 v2, 0x44c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lo/acp;->bxV:Ljava/util/Map;

    const-string v1, "2"

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lo/acp;->bxV:Ljava/util/Map;

    const-string v1, "3"

    const/16 v2, 0x514

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lo/acp;->bxV:Ljava/util/Map;

    const-string v1, "4"

    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lo/acp;->bxV:Ljava/util/Map;

    const-string v1, "5"

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lo/acp;->bxV:Ljava/util/Map;

    const-string v1, "6"

    const/16 v2, 0x640

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/acp;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lo/acp;->bxW:Landroid/app/NotificationManager;

    .line 55
    new-instance v0, Lo/acz;

    invoke-direct {v0, p1}, Lo/acz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/acp;->bxX:Lo/acz;

    .line 56
    return-void
.end method

.method private ŀ(Ljava/lang/String;)V
    .locals 2

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lo/acp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/vn;->ᵋ(Landroid/content/Context;)Lo/vn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/vn;->ˊ(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public ʻ(Landroid/content/Intent;)V
    .locals 4

    .line 144
    const-string v0, "notif_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notif_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "notif_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 147
    const-string v0, "notif_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    iget-object v0, p0, Lo/acp;->bxW:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 150
    :cond_0
    return-void
.end method

.method public ˈ(Landroid/os/Bundle;)V
    .locals 11

    .line 59
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    sget-object v0, Lo/acp;->bxV:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    .line 61
    if-nez v4, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching type for push data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/ɬ;->ˋ(Ljava/lang/Throwable;)V

    .line 63
    return-void

    .line 67
    :cond_0
    move-object v7, v3

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :pswitch_1
    const-string v0, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :pswitch_2
    const-string v0, "5"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x2

    goto :goto_0

    :pswitch_3
    const-string v0, "6"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x3

    :cond_1
    :goto_0
    :pswitch_4
    packed-switch v8, :pswitch_data_1

    goto/16 :goto_2

    .line 69
    :pswitch_5
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 70
    move-object v5, v9

    .line 71
    iget-object v0, p0, Lo/acp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, v5, p1}, Lo/aco;->ˊ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v6

    .line 72
    iget-object v0, p0, Lo/acp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/vn;->ᵋ(Landroid/content/Context;)Lo/vn;

    move-result-object v0

    invoke-virtual {v0, v9}, Lo/vn;->ว(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    goto/16 :goto_3

    .line 76
    :pswitch_6
    const-string v0, "broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 79
    const-string v0, "broadcast_username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    const-string v0, "locked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 81
    if-eqz v10, :cond_2

    .line 82
    iget-object v0, p0, Lo/acp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, v5, p1}, Lo/aco;->ˎ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v6

    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lo/acp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, v5, p1}, Lo/aco;->ˋ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v6

    .line 86
    :goto_1
    invoke-direct {p0, v9}, Lo/acp;->ŀ(Ljava/lang/String;)V

    .line 87
    goto :goto_3

    .line 90
    :pswitch_7
    const-string v0, "broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    move-object v5, v9

    .line 92
    iget-object v0, p0, Lo/acp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, v5, p1}, Lo/aco;->ˏ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v6

    .line 93
    invoke-direct {p0, v9}, Lo/acp;->ŀ(Ljava/lang/String;)V

    .line 94
    goto :goto_3

    .line 97
    :pswitch_8
    const-string v0, "broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 98
    move-object v5, v9

    .line 99
    iget-object v0, p0, Lo/acp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, v5, p1}, Lo/aco;->ᐝ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v6

    .line 100
    invoke-direct {p0, v9}, Lo/acp;->ŀ(Ljava/lang/String;)V

    .line 101
    goto :goto_3

    .line 104
    :goto_2
    const-string v0, "PushNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to issue notification for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v5, 0x0

    .line 110
    :goto_3
    if-eqz v6, :cond_3

    .line 111
    iget-object v0, p0, Lo/acp;->bxW:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v5, v1, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 113
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public ˉ(Landroid/os/Bundle;)Z
    .locals 8

    .line 116
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    if-nez v3, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldIssueNotification: no matching type for push data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/ɬ;->ˋ(Ljava/lang/Throwable;)V

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lo/acp;->bxX:Lo/acz;

    invoke-virtual {v0}, Lo/acz;->wS()Lo/acy;

    move-result-object v4

    .line 122
    move-object v5, v3

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :pswitch_1
    const-string v0, "5"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_2
    const-string v0, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x2

    goto :goto_0

    :pswitch_3
    const-string v0, "6"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x3

    :cond_1
    :goto_0
    :pswitch_4
    packed-switch v6, :pswitch_data_1

    goto :goto_2

    .line 124
    :pswitch_5
    const-string v0, "locked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 126
    iget-boolean v0, v4, Lo/acy;->byh:Z

    if-nez v0, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 129
    :pswitch_6
    iget-boolean v0, v4, Lo/acy;->byi:Z

    return v0

    .line 132
    :pswitch_7
    iget-boolean v0, v4, Lo/acy;->byj:Z

    return v0

    .line 135
    :pswitch_8
    iget-boolean v0, v4, Lo/acy;->byk:Z

    return v0

    .line 138
    :goto_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
