.class Lo/ץ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ڔ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ץ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u0694<TZ;>;"
    }
.end annotation


# instance fields
.field private final en:Z

.field private hG:Lo/ﮆ;

.field private final hL:Lo/ڔ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0694<TZ;>;"
        }
    .end annotation
.end field

.field private ia:Lo/ץ$if;

.field private ib:I

.field private ic:Z


# direct methods
.method constructor <init>(Lo/ڔ;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<TZ;>;Z)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Wrapped resource must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lo/ץ;->hL:Lo/ڔ;

    .line 30
    iput-boolean p2, p0, Lo/ץ;->en:Z

    .line 31
    return-void
.end method


# virtual methods
.method acquire()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lo/ץ;->ic:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iget v0, p0, Lo/ץ;->ib:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ץ;->ib:I

    .line 81
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/ץ;->hL:Lo/ڔ;

    invoke-interface {v0}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 49
    iget-object v0, p0, Lo/ץ;->hL:Lo/ڔ;

    invoke-interface {v0}, Lo/ڔ;->getSize()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 54
    iget v0, p0, Lo/ץ;->ib:I

    if-lez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-boolean v0, p0, Lo/ץ;->ic:Z

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ץ;->ic:Z

    .line 61
    iget-object v0, p0, Lo/ץ;->hL:Lo/ڔ;

    invoke-interface {v0}, Lo/ڔ;->recycle()V

    .line 62
    return-void
.end method

.method release()V
    .locals 2

    .line 93
    iget v0, p0, Lo/ץ;->ib:I

    if-gtz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iget v0, p0, Lo/ץ;->ib:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ץ;->ib:I

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lo/ץ;->ia:Lo/ץ$if;

    iget-object v1, p0, Lo/ץ;->hG:Lo/ﮆ;

    invoke-interface {v0, v1, p0}, Lo/ץ$if;->ˋ(Lo/ﮆ;Lo/ץ;)V

    .line 102
    :cond_2
    return-void
.end method

.method ˊ(Lo/ﮆ;Lo/ץ$if;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/ץ;->hG:Lo/ﮆ;

    .line 35
    iput-object p2, p0, Lo/ץ;->ia:Lo/ץ$if;

    .line 36
    return-void
.end method

.method Ꭻ()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lo/ץ;->en:Z

    return v0
.end method
