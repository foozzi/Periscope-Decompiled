.class Lo/rb;
.super Lo/qz$ˏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/qz$\u02cf<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic WQ:Lo/qz;


# direct methods
.method constructor <init>(Lo/qz;)V
    .locals 1

    .line 288
    iput-object p1, p0, Lo/rb;->WQ:Lo/qz;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/qz$ˏ;-><init>(Lo/ra;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lo/rb;->WQ:Lo/qz;

    invoke-static {v0}, Lo/qz;->ˊ(Lo/qz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 294
    iget-object v0, p0, Lo/rb;->WQ:Lo/qz;

    iget-object v1, p0, Lo/rb;->WQ:Lo/qz;

    iget-object v2, p0, Lo/rb;->Xb:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lo/qz;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qz;->ˊ(Lo/qz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
