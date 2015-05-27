.class Lo/aco;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final bxT:Landroid/net/Uri;

.field static final bxU:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "periscope://user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lo/aco;->bxT:Landroid/net/Uri;

    .line 38
    const-string v0, "periscope://broadcast"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lo/aco;->bxU:Landroid/net/Uri;

    return-void
.end method

.method static ǃ(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static ˊ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 13

    .line 48
    const-string v0, "user_display_name"

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    const-string v0, "username"

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    const-string v0, "user_id"

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const v1, 0x7f0600ad

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 54
    sget-object v0, Lo/aco;->bxT:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/ake;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_user_type"

    sget-object v2, Lo/aah;->bsL:Lo/aah;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_sheet_user_id"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_from_push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notif_tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 63
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    const-class v1, Lo/ake;

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    const-class v1, Lo/ake;

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v9

    .line 69
    const/high16 v0, 0x8000000

    invoke-virtual {v9, p1, v0}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v10

    .line 72
    invoke-static {p0, p1, p2, v7}, Lo/aco;->ˊ(Landroid/content/Context;ILjava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 74
    const v0, 0x7f0600bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 75
    new-instance v0, Lo/ⁱ$ˎ;

    invoke-direct {v0, p0}, Lo/ⁱ$ˎ;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ͺ(I)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ʾ(I)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v12}, Lo/ⁱ$ˎ;->ˋ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lo/ⁱ$ˎ;->ˎ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v12}, Lo/ⁱ$ˎ;->ˏ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    new-instance v1, Lo/ⁱ$ˋ;

    invoke-direct {v1}, Lo/ⁱ$ˋ;-><init>()V

    invoke-virtual {v1, v6}, Lo/ⁱ$ˋ;->ˊ(Ljava/lang/CharSequence;)Lo/ⁱ$ˋ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˊ(Lo/ⁱ$con;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v10}, Lo/ⁱ$ˎ;->ˊ(Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v11}, Lo/ⁱ$ˎ;->ˋ(Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˋ(Z)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ⁱ$ˎ;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static ˊ(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 9

    .line 159
    sget-object v0, Lo/aco;->bxU:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_b_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_p_mode"

    sget-object v2, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_from_push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notif_tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 170
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    const-class v1, Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    .line 174
    const/high16 v0, 0x8000000

    invoke-virtual {v5, p1, v0}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v6

    .line 177
    invoke-static {p0, p1, p2, v3}, Lo/aco;->ˊ(Landroid/content/Context;ILjava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 179
    new-instance v0, Lo/ⁱ$ˎ;

    invoke-direct {v0, p0}, Lo/ⁱ$ˎ;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ͺ(I)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ʾ(I)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lo/ⁱ$ˎ;->ˋ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, p4}, Lo/ⁱ$ˎ;->ˎ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, p6}, Lo/ⁱ$ˎ;->ˏ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    new-instance v1, Lo/ⁱ$ˋ;

    invoke-direct {v1}, Lo/ⁱ$ˋ;-><init>()V

    invoke-virtual {v1, p4}, Lo/ⁱ$ˋ;->ˊ(Ljava/lang/CharSequence;)Lo/ⁱ$ˋ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˊ(Lo/ⁱ$con;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-static {p0}, Lo/aco;->ǃ(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˊ(Landroid/net/Uri;)Lo/ⁱ$ˎ;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ι(I)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lo/ⁱ$ˎ;->ˊ(Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;

    move-result-object v0

    const v1, 0x7f0600a7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200aa

    invoke-virtual {v0, v2, v1, v7}, Lo/ⁱ$ˎ;->ˊ(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;

    move-result-object v0

    const v1, 0x7f0600aa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200ad

    invoke-virtual {v0, v2, v1, v6}, Lo/ⁱ$ˎ;->ˊ(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v7}, Lo/ⁱ$ˎ;->ˋ(Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˋ(Z)Lo/ⁱ$ˎ;

    move-result-object v8

    .line 196
    invoke-virtual {v8}, Lo/ⁱ$ˎ;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static ˊ(Landroid/content/Context;ILjava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 4

    .line 200
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lo/acq;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dismiss"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notif_tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 207
    const/high16 v0, 0x8000000

    invoke-static {p0, p1, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static ˋ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 12

    .line 90
    const-string v0, "broadcast_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    const-string v0, "broadcast_user_display_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    const-string v0, "broadcast_title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const v1, 0x7f0600ba

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 96
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const v0, 0x7f060103

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 99
    :cond_0
    move-object v11, v9

    .line 101
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v10

    move-object v4, v11

    move-object v5, v7

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lo/aco;->ˊ(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static ˎ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 12

    .line 106
    const-string v0, "broadcast_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    const-string v0, "broadcast_username"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    const-string v0, "broadcast_user_display_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 109
    const-string v0, "broadcast_title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const v1, 0x7f0600ae

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object v10, v0, v1

    const v1, 0x7f0600af

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 118
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v9

    move-object v4, v11

    move-object v5, v7

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lo/aco;->ˊ(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static ˏ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 12

    .line 123
    const-string v0, "username"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 124
    const-string v0, "broadcast_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    const-string v0, "broadcast_user_display_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    const-string v0, "broadcast_title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    const v1, 0x7f0600b0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    const/4 v1, 0x2

    aput-object v10, v0, v1

    const v1, 0x7f0600b1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 136
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, v11

    move-object v5, v8

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lo/aco;->ˊ(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static ᐝ(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 12

    .line 141
    const-string v0, "broadcast_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    const-string v0, "broadcast_user_display_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    const-string v0, "broadcast_title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    const-string v0, "broadcaster_twitter_username"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    const v1, 0x7f0600ab

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 150
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    const v1, 0x7f0600ac

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 153
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v8

    move-object v4, v11

    move-object v5, v7

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lo/aco;->ˊ(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
