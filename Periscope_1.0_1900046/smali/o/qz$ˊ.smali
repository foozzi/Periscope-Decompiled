.class Lo/qz$ˊ;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/qz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 646
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 647
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 652
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/qz$if;

    move-object v3, v0

    .line 653
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 656
    :sswitch_0
    iget-object v0, v3, Lo/qz$if;->WS:Lo/qz;

    iget-object v1, v3, Lo/qz$if;->WT:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lo/qz;->ˎ(Lo/qz;Ljava/lang/Object;)V

    .line 657
    goto :goto_0

    .line 659
    :sswitch_1
    iget-object v0, v3, Lo/qz$if;->WS:Lo/qz;

    iget-object v1, v3, Lo/qz$if;->WT:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/qz;->onProgressUpdate([Ljava/lang/Object;)V

    .line 660
    .line 663
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method
