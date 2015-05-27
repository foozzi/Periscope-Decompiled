.class public Lo/ᒏ$if;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒏ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::Lo/\u14b9;>Landroid/os/Handler;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᒏ$if;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    move-object v2, v0

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lo/ᓙ;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lo/ᒹ;

    invoke-virtual {p0, v0, v1}, Lo/ᒏ$if;->ˋ(Lo/ᓙ;Lo/ᒹ;)V

    return-void

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ᒏ;

    move-object v3, v0

    invoke-virtual {v3}, Lo/ᒏ;->ٻ()V

    return-void

    :goto_0
    const-string v0, "AbstractPendingResult"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public ˊ(Lo/ᓙ;Lo/ᒹ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14d9<TR;>;TR;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lo/ᒏ$if;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᒏ$if;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected ˋ(Lo/ᓙ;Lo/ᒹ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14d9<TR;>;TR;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Lo/ᓙ;->ˏ(Lo/ᒹ;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p2}, Lo/ᒏ;->ˎ(Lo/ᒹ;)V

    throw v0

    :goto_0
    return-void
.end method

.method public ړ()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/ᒏ$if;->removeMessages(I)V

    return-void
.end method
