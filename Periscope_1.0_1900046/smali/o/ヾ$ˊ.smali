.class final Lo/ヾ$ˊ;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ヾ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic Em:Lo/ヾ;


# direct methods
.method public constructor <init>(Lo/ヾ;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lo/ヾ$ˊ;->Em:Lo/ヾ;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lo/ヾ$ˊ;->Em:Lo/ヾ;

    invoke-virtual {v0}, Lo/ヾ;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ヾ$ˋ;

    move-object v4, v0

    invoke-virtual {v4}, Lo/ヾ$ˋ;->Ṭ()V

    invoke-virtual {v4}, Lo/ヾ$ˋ;->unregister()V

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lo/ヾ$ˊ;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˊ(Lo/ヾ;)Lo/乀;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lo/乀;->ʽ(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lo/ヾ$ˊ;->Em:Lo/ヾ;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/ヾ;->ˊ(Lo/ヾ;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lo/ヾ$ˊ;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˊ(Lo/ヾ;)Lo/乀;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/乀;->ᵅ(I)V

    iget-object v0, p0, Lo/ヾ$ˊ;->Em:Lo/ヾ;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lo/ヾ;->ˊ(Lo/ヾ;IILandroid/os/IInterface;)Z

    return-void

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lo/ヾ$ˊ;->Em:Lo/ヾ;

    invoke-virtual {v0}, Lo/ヾ;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ヾ$ˋ;

    move-object v4, v0

    invoke-virtual {v4}, Lo/ヾ$ˋ;->Ṭ()V

    invoke-virtual {v4}, Lo/ヾ$ˋ;->unregister()V

    return-void

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ヾ$ˋ;

    move-object v4, v0

    invoke-virtual {v4}, Lo/ヾ$ˋ;->ṯ()V

    return-void

    :cond_6
    const-string v0, "GmsClient"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
