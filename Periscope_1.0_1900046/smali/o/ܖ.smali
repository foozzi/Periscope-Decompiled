.class Lo/ܖ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ܖ$1;,
        Lo/ܖ$if;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private ik:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo/ܖ$if;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/ܖ$if;-><init>(Lo/ܖ$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/ܖ;->handler:Landroid/os/Handler;

    .line 30
    return-void
.end method


# virtual methods
.method public ͺ(Lo/ڔ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<*>;)V"
        }
    .end annotation

    .line 17
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 19
    iget-boolean v0, p0, Lo/ܖ;->ik:Z

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lo/ܖ;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ܖ;->ik:Z

    .line 25
    invoke-interface {p1}, Lo/ڔ;->recycle()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ܖ;->ik:Z

    .line 28
    :goto_0
    return-void
.end method
