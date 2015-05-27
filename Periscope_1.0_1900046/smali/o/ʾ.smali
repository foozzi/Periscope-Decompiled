.class Lo/ʾ;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic יִ:Lo/ι;


# direct methods
.method constructor <init>(Lo/ι;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lo/ʾ;->יִ:Lo/ι;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 92
    :sswitch_0
    iget-object v0, p0, Lo/ʾ;->יִ:Lo/ι;

    iget-boolean v0, v0, Lo/ι;->mStopped:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lo/ʾ;->יִ:Lo/ι;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ι;->doReallyStop(Z)V

    goto :goto_1

    .line 97
    :sswitch_1
    iget-object v0, p0, Lo/ʾ;->יִ:Lo/ι;

    invoke-virtual {v0}, Lo/ι;->onResumeFragments()V

    .line 98
    iget-object v0, p0, Lo/ʾ;->יִ:Lo/ι;

    iget-object v0, v0, Lo/ι;->mFragments:Lo/ˉ;

    invoke-virtual {v0}, Lo/ˉ;->ʻ()Z

    .line 99
    goto :goto_1

    .line 101
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 103
    :cond_0
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method
