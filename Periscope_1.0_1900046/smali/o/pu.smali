.class public abstract Lo/pu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/pw<TT;>;"
    }
.end annotation


# instance fields
.field private final Vm:Lo/pw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/pw<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/pu;-><init>(Lo/pw;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Lo/pw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/pw<TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lo/pu;->Vm:Lo/pw;

    .line 15
    return-void
.end method

.method private ˋ(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;TT;)V"
        }
    .end annotation

    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/pu;->ˊ(Landroid/content/Context;Ljava/lang/Object;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final declared-synchronized ˊ(Landroid/content/Context;Lo/px;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/px<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Lo/pu;->ˮ(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    iget-object v0, p0, Lo/pu;->Vm:Lo/pw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/pu;->Vm:Lo/pw;

    invoke-interface {v0, p1, p2}, Lo/pw;->ˊ(Landroid/content/Context;Lo/px;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lo/px;->י(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    :goto_0
    invoke-direct {p0, p1, v1}, Lo/pu;->ˋ(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract ˊ(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;TT;)V"
        }
    .end annotation
.end method

.method protected abstract ˮ(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;)TT;"
        }
    .end annotation
.end method
