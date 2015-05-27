.class Lo/ⁱ$ʼ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ⁱ$aux;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ⁱ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02bc"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/ⁱ$ˎ;)Landroid/app/Notification;
    .locals 5

    .line 465
    iget-object v4, p1, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    .line 466
    iget-object v0, p1, Lo/ⁱ$ˎ;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lo/ⁱ$ˎ;->ᕝ:Ljava/lang/CharSequence;

    iget-object v2, p1, Lo/ⁱ$ˎ;->ᵒ:Ljava/lang/CharSequence;

    iget-object v3, p1, Lo/ⁱ$ˎ;->ᵘ:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 469
    iget v0, p1, Lo/ⁱ$ˎ;->ﭔ:I

    if-lez v0, :cond_0

    .line 470
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 472
    :cond_0
    return-object v4
.end method
