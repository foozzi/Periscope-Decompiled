.class public final Lo/ヾ$ˏ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ヾ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u02cf"
.end annotation


# instance fields
.field final synthetic Em:Lo/ヾ;


# direct methods
.method public constructor <init>(Lo/ヾ;)V
    .locals 0

    iput-object p1, p0, Lo/ヾ$ˏ;->Em:Lo/ヾ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lo/ヾ$ˏ;->Em:Lo/ヾ;

    invoke-static {p2}, Lo/ﭞ$if;->ᐝ(Landroid/os/IBinder;)Lo/ﭞ;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ヾ;->ˊ(Lo/ヾ;Lo/ﭞ;)Lo/ﭞ;

    iget-object v0, p0, Lo/ヾ$ˏ;->Em:Lo/ヾ;

    iget-object v0, v0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ヾ$ˏ;->Em:Lo/ヾ;

    iget-object v1, v1, Lo/ヾ;->mHandler:Landroid/os/Handler;

    new-instance v2, Lo/ヾ$ᐝ;

    iget-object v3, p0, Lo/ヾ$ˏ;->Em:Lo/ヾ;

    invoke-direct {v2, v3}, Lo/ヾ$ᐝ;-><init>(Lo/ヾ;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lo/ヾ$ˏ;->Em:Lo/ヾ;

    iget-object v0, v0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ヾ$ˏ;->Em:Lo/ヾ;

    iget-object v1, v1, Lo/ヾ;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
