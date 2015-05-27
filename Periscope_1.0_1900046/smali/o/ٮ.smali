.class Lo/ٮ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic nV:Lo/ة;

.field final synthetic nW:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lo/ة;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lo/ٮ;->nV:Lo/ة;

    iput-object p2, p0, Lo/ٮ;->nW:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Lo/ٮ;->nW:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 105
    :catch_0
    move-exception v3

    .line 106
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to execute task."

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method
