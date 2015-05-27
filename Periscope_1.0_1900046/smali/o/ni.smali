.class public Lo/ni;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ni$if;,
        Lo/ni$ˊ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Lo/mg;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final QR:Lo/mh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/mh<TT;>;"
        }
    .end annotation
.end field

.field protected final QY:Lo/ni$ˊ;

.field private final QZ:Lo/qx;

.field private final Ra:Lo/ni$if;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lo/mh;Ljava/util/concurrent/ExecutorService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mh<TT;>;Ljava/util/concurrent/ExecutorService;)V"
        }
    .end annotation

    .line 36
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lo/qx;

    invoke-direct {v2}, Lo/qx;-><init>()V

    new-instance v3, Lo/ni$if;

    invoke-direct {v3}, Lo/ni$if;-><init>()V

    move-object v4, p2

    new-instance v5, Lo/ni$ˊ;

    invoke-direct {v5}, Lo/ni$ˊ;-><init>()V

    invoke-direct/range {v0 .. v5}, Lo/ni;-><init>(Lo/mh;Lo/qx;Lo/ni$if;Ljava/util/concurrent/ExecutorService;Lo/ni$ˊ;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lo/mh;Lo/qx;Lo/ni$if;Ljava/util/concurrent/ExecutorService;Lo/ni$ˊ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mh<TT;>;Lo/qx;Lo/ni$if;Ljava/util/concurrent/ExecutorService;Lo/ni$\u02ca;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lo/ni;->QZ:Lo/qx;

    .line 44
    iput-object p1, p0, Lo/ni;->QR:Lo/mh;

    .line 45
    iput-object p3, p0, Lo/ni;->Ra:Lo/ni$if;

    .line 46
    iput-object p4, p0, Lo/ni;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 47
    iput-object p5, p0, Lo/ni;->QY:Lo/ni$ˊ;

    .line 48
    return-void
.end method


# virtual methods
.method public bC()V
    .locals 6

    .line 74
    iget-object v0, p0, Lo/ni;->QR:Lo/mh;

    invoke-interface {v0}, Lo/mh;->aU()Lo/mg;

    move-result-object v2

    .line 75
    iget-object v0, p0, Lo/ni;->QZ:Lo/qx;

    invoke-virtual {v0}, Lo/qx;->cy()J

    move-result-wide v3

    .line 76
    if-eqz v2, :cond_0

    iget-object v0, p0, Lo/ni;->QY:Lo/ni$ˊ;

    invoke-virtual {v0, v3, v4}, Lo/ni$ˊ;->ᵣ(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 78
    :goto_0
    if-eqz v5, :cond_1

    .line 79
    iget-object v0, p0, Lo/ni;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/nk;

    invoke-direct {v1, p0}, Lo/nk;-><init>(Lo/ni;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 86
    :cond_1
    return-void
.end method

.method protected bD()V
    .locals 5

    .line 89
    iget-object v0, p0, Lo/ni;->QR:Lo/mh;

    invoke-interface {v0}, Lo/mh;->aW()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mg;

    move-object v4, v0

    .line 90
    invoke-virtual {p0, v4}, Lo/ni;->ˎ(Lo/mg;)V

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lo/ni;->QY:Lo/ni$ˊ;

    iget-object v1, p0, Lo/ni;->QZ:Lo/qx;

    invoke-virtual {v1}, Lo/qx;->cy()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/ni$ˊ;->יִ(J)V

    .line 93
    return-void
.end method

.method public ˊ(Lo/pg;)V
    .locals 1

    .line 55
    new-instance v0, Lo/nj;

    invoke-direct {v0, p0}, Lo/nj;-><init>(Lo/ni;)V

    invoke-virtual {p1, v0}, Lo/pg;->ˊ(Lo/pg$ˊ;)Z

    .line 61
    return-void
.end method

.method protected ˎ(Lo/mg;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lo/ni;->Ra:Lo/ni$if;

    invoke-virtual {v0, p1}, Lo/ni$if;->ˏ(Lo/mg;)Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v2

    .line 103
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lo/oo;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 104
    :catch_0
    move-exception v3

    .line 109
    :goto_0
    return-void
.end method
