.class public abstract Lo/ᖧ$if;
.super Lo/ᒏ;

# interfaces
.implements Lo/ᖧ$ˊ;
.implements Lo/ᖨ$ᐝ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᖧ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::Lo/\u14b9;A::Lo/\u14b0$\u02ca;>Lo/\u148f<TR;>;Lo/\u15a7$\u02ca<TR;>;Lo/\u15a8$\u141d<TA;>;"
    }
.end annotation


# instance fields
.field private CA:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<Lo/\u15a8$\u02cf;>;"
        }
    .end annotation
.end field

.field private final Ca:Lo/ᒰ$ˎ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0$\u02ce<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lo/ᒰ$ˎ;Lo/ᒴ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14b0$\u02ce<TA;>;Lo/\u14b4;)V"
        }
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᒏ;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/ᖧ$if;->CA:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˎ;

    iput-object v0, p0, Lo/ᖧ$if;->Ca:Lo/ᒰ$ˎ;

    return-void
.end method

.method private ˊ(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v3}, Lo/ᖧ$if;->ˎ(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final ˊ(Lo/ᒰ$ˊ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lo/ᖧ$if;->ˋ(Lo/ᒰ$ˊ;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lo/ᖧ$if;->ˊ(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lo/ᖧ$if;->ˊ(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public ˊ(Lo/ᖨ$ˏ;)V
    .locals 1

    iget-object v0, p0, Lo/ᖧ$if;->CA:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract ˋ(Lo/ᒰ$ˊ;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public final ˎ(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->չ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lo/ﺧ;->ˏ(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lo/ᖧ$if;->ˊ(Lcom/google/android/gms/common/api/Status;)Lo/ᒹ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᖧ$if;->ˊ(Lo/ᒹ;)V

    return-void
.end method

.method protected ت()V
    .locals 3

    iget-object v0, p0, Lo/ᖧ$if;->CA:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᖨ$ˏ;

    move-object v2, v0

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lo/ᖨ$ˏ;->ˋ(Lo/ᖨ$ᐝ;)V

    :cond_0
    return-void
.end method

.method public final ܫ()Lo/ᒰ$ˎ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u14b0$\u02ce<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/ᖧ$if;->Ca:Lo/ᒰ$ˎ;

    return-object v0
.end method

.method public ท()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic ᐪ(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lo/ᒹ;

    invoke-super {p0, v0}, Lo/ᒏ;->ˊ(Lo/ᒹ;)V

    return-void
.end method
