.class Lo/ᘅ;
.super Lo/ᖨ$aux;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dk:Lo/ᖨ;


# direct methods
.method constructor <init>(Lo/ᖨ;)V
    .locals 1

    iput-object p1, p0, Lo/ᘅ;->Dk:Lo/ᖨ;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ᖨ$aux;-><init>(Lo/ᖨ;Lo/ᖪ;)V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/ᘅ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lo/ᘅ;->Dk:Lo/ᖨ;

    invoke-virtual {v0}, Lo/ᖨ;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᘅ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lo/ᘅ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˋ(Lo/ᖨ;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lo/ᘅ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˎ(Lo/ᖨ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lo/ᘅ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v0, p0, Lo/ᘅ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :goto_0
    return-void
.end method
