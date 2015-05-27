.class Lo/ﹺ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﹺ$if;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static ˊ(Landroid/app/Notification$Builder;Lo/ʳ$if;)V
    .locals 8

    .line 101
    new-instance v3, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Lo/ʳ$if;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Lo/ʳ$if;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/ʳ$if;->ﹶ()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 103
    invoke-virtual {p1}, Lo/ʳ$if;->ｰ()[Lo/ᐩ$if;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Lo/ʳ$if;->ｰ()[Lo/ᐩ$if;

    move-result-object v0

    invoke-static {v0}, Lo/ᐣ;->ˊ([Lo/ᐩ$if;)[Landroid/app/RemoteInput;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 106
    invoke-virtual {v3, v7}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lo/ʳ$if;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1}, Lo/ʳ$if;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 112
    :cond_1
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 113
    return-void
.end method
