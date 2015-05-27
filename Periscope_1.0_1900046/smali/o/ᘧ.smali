.class Lo/ᘧ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᒴ$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dk:Lo/ᖨ;

.field final synthetic Dn:I

.field final synthetic Do:Lo/ᒰ;


# direct methods
.method constructor <init>(Lo/ᖨ;ILo/ᒰ;)V
    .locals 0

    iput-object p1, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    iput p2, p0, Lo/ᘧ;->Dn:I

    iput-object p3, p0, Lo/ᘧ;->Do:Lo/ᒰ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    invoke-virtual {v0}, Lo/ᖨ;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lo/ᘧ;->Dn:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lo/ᘧ;->Do:Lo/ᒰ;

    invoke-virtual {v0}, Lo/ᒰ;->ڽ()Lo/ᒰ$ˋ;

    move-result-object v0

    invoke-interface {v0}, Lo/ᒰ$ˋ;->getPriority()I

    move-result v2

    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    iget v1, p0, Lo/ᘧ;->Dn:I

    invoke-static {v0, v2, v1, p1}, Lo/ᖨ;->ˊ(Lo/ᖨ;IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    invoke-static {v0, p1}, Lo/ᖨ;->ˊ(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    invoke-static {v0, v2}, Lo/ᖨ;->ˋ(Lo/ᖨ;I)I

    :cond_1
    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˈ(Lo/ᖨ;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/ᘧ;->Do:Lo/ᒰ;

    invoke-virtual {v1}, Lo/ᒰ;->ܫ()Lo/ᒰ$ˎ;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˎ(Lo/ᖨ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/ᘧ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :goto_0
    return-void
.end method
