.class Lo/ن;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nU:Ljava/lang/Runnable;

.field final synthetic nV:Lo/ة;


# direct methods
.method constructor <init>(Lo/ة;Ljava/lang/Runnable;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lo/ن;->nV:Lo/ة;

    iput-object p2, p0, Lo/ن;->nU:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    :try_start_0
    iget-object v0, p0, Lo/ن;->nU:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to execute task."

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    return-void
.end method
