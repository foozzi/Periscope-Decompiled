.class public Lo/ⁱ$ˎ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ⁱ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02ce"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field İ:Ljava/lang/String;

.field Ɩ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u2071$if;>;"
        }
    .end annotation
.end field

.field ɹ:Z

.field ʶ:Ljava/lang/String;

.field ϊ:I

.field ג:I

.field ז:Landroid/app/Notification;

.field ן:Landroid/app/Notification;

.field public נ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field ᑋ:Landroid/os/Bundle;

.field ᕝ:Ljava/lang/CharSequence;

.field ᵒ:Ljava/lang/CharSequence;

.field ᵘ:Landroid/app/PendingIntent;

.field ᵤ:Landroid/app/PendingIntent;

.field ⁿ:Landroid/widget/RemoteViews;

.field Ⅰ:Landroid/graphics/Bitmap;

.field ⅰ:Ljava/lang/CharSequence;

.field 丶:I

.field ﭔ:I

.field ﭠ:Z

.field ﯦ:Z

.field ﯩ:Lo/ⁱ$con;

.field ﯾ:Ljava/lang/CharSequence;

.field ﹰ:I

.field ﺗ:I

.field ﻳ:Z

.field ＿:Ljava/lang/String;

.field ﾆ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ⁱ$ˎ;->ﭠ:Z

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ⁱ$ˎ;->Ɩ:Ljava/util/ArrayList;

    .line 885
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ⁱ$ˎ;->ɹ:Z

    .line 888
    const/4 v0, 0x0

    iput v0, p0, Lo/ⁱ$ˎ;->ϊ:I

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Lo/ⁱ$ˎ;->ג:I

    .line 892
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    .line 907
    iput-object p1, p0, Lo/ⁱ$ˎ;->mContext:Landroid/content/Context;

    .line 910
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 911
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 912
    const/4 v0, 0x0

    iput v0, p0, Lo/ⁱ$ˎ;->ﭔ:I

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ⁱ$ˎ;->נ:Ljava/util/ArrayList;

    .line 914
    return-void
.end method

.method private ˎ(IZ)V
    .locals 3

    .line 1262
    if-eqz p2, :cond_0

    .line 1263
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 1265
    :cond_0
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1267
    :goto_0
    return-void
.end method

.method protected static ᐝ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1536
    if-nez p0, :cond_0

    return-object p0

    .line 1537
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    .line 1538
    const/4 v0, 0x0

    const/16 v1, 0x1400

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1540
    :cond_1
    return-object p0
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 1

    .line 1532
    invoke-static {}, Lo/ⁱ;->ⁱ()Lo/ⁱ$aux;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/ⁱ$aux;->ˊ(Lo/ⁱ$ˎ;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public ʾ(I)Lo/ⁱ$ˎ;
    .locals 0

    .line 1481
    iput p1, p0, Lo/ⁱ$ˎ;->ϊ:I

    .line 1482
    return-object p0
.end method

.method public ˊ(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;
    .locals 2

    .line 1432
    iget-object v0, p0, Lo/ⁱ$ˎ;->Ɩ:Ljava/util/ArrayList;

    new-instance v1, Lo/ⁱ$if;

    invoke-direct {v1, p1, p2, p3}, Lo/ⁱ$if;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    return-object p0
.end method

.method public ˊ(Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;
    .locals 0

    .line 1054
    iput-object p1, p0, Lo/ⁱ$ˎ;->ᵘ:Landroid/app/PendingIntent;

    .line 1055
    return-object p0
.end method

.method public ˊ(Landroid/net/Uri;)Lo/ⁱ$ˎ;
    .locals 2

    .line 1131
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1132
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1133
    return-object p0
.end method

.method public ˊ(Lo/ⁱ$con;)Lo/ⁱ$ˎ;
    .locals 1

    .line 1464
    iget-object v0, p0, Lo/ⁱ$ˎ;->ﯩ:Lo/ⁱ$con;

    if-eq v0, p1, :cond_0

    .line 1465
    iput-object p1, p0, Lo/ⁱ$ˎ;->ﯩ:Lo/ⁱ$con;

    .line 1466
    iget-object v0, p0, Lo/ⁱ$ˎ;->ﯩ:Lo/ⁱ$con;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lo/ⁱ$ˎ;->ﯩ:Lo/ⁱ$con;

    invoke-virtual {v0, p0}, Lo/ⁱ$con;->ˋ(Lo/ⁱ$ˎ;)V

    .line 1470
    :cond_0
    return-object p0
.end method

.method public ˋ(Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;
    .locals 1

    .line 1066
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1067
    return-object p0
.end method

.method public ˋ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;
    .locals 1

    .line 982
    invoke-static {p1}, Lo/ⁱ$ˎ;->ᐝ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/ⁱ$ˎ;->ᕝ:Ljava/lang/CharSequence;

    .line 983
    return-object p0
.end method

.method public ˋ(Z)Lo/ⁱ$ˎ;
    .locals 1

    .line 1216
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lo/ⁱ$ˎ;->ˎ(IZ)V

    .line 1217
    return-object p0
.end method

.method public ˎ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;
    .locals 1

    .line 990
    invoke-static {p1}, Lo/ⁱ$ˎ;->ᐝ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/ⁱ$ˎ;->ᵒ:Ljava/lang/CharSequence;

    .line 991
    return-object p0
.end method

.method public ˏ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;
    .locals 2

    .line 1099
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    invoke-static {p1}, Lo/ⁱ$ˎ;->ᐝ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1100
    return-object p0
.end method

.method public ͺ(I)Lo/ⁱ$ˎ;
    .locals 1

    .line 958
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 959
    return-object p0
.end method

.method public ι(I)Lo/ⁱ$ˎ;
    .locals 3

    .line 1254
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 1255
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1258
    :cond_0
    return-object p0
.end method
