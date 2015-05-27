.class Lo/ⁱ$ͺ;
.super Lo/ⁱ$ʼ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ⁱ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u037a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 555
    invoke-direct {p0}, Lo/ⁱ$ʼ;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/ⁱ$ˎ;)Landroid/app/Notification;
    .locals 10

    .line 558
    iget-object v0, p1, Lo/ⁱ$ˎ;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    iget-object v2, p1, Lo/ⁱ$ˎ;->ᕝ:Ljava/lang/CharSequence;

    iget-object v3, p1, Lo/ⁱ$ˎ;->ᵒ:Ljava/lang/CharSequence;

    iget-object v4, p1, Lo/ⁱ$ˎ;->ⅰ:Ljava/lang/CharSequence;

    iget-object v5, p1, Lo/ⁱ$ˎ;->ⁿ:Landroid/widget/RemoteViews;

    iget v6, p1, Lo/ⁱ$ˎ;->丶:I

    iget-object v7, p1, Lo/ⁱ$ˎ;->ᵘ:Landroid/app/PendingIntent;

    iget-object v8, p1, Lo/ⁱ$ˎ;->ᵤ:Landroid/app/PendingIntent;

    iget-object v9, p1, Lo/ⁱ$ˎ;->Ⅰ:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v9}, Lo/ˆ;->ˊ(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
