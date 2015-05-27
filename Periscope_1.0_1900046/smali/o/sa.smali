.class Lo/sa;
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
.field final synthetic XE:Lo/rw;


# direct methods
.method constructor <init>(Lo/rw;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/sa;->XE:Lo/rw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lo/sa;->XE:Lo/rw;

    iget-object v2, v0, Lo/rw;->XB:Lo/se;

    .line 80
    iget-object v0, p0, Lo/sa;->XE:Lo/rw;

    iget-object v1, p0, Lo/sa;->XE:Lo/rw;

    invoke-virtual {v1}, Lo/rw;->ẗ()Lo/se;

    move-result-object v1

    iput-object v1, v0, Lo/rw;->XB:Lo/se;

    .line 81
    invoke-interface {v2}, Lo/se;->da()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    iget-object v0, p0, Lo/sa;->XE:Lo/rw;

    iget-object v0, v0, Lo/rw;->dV:Landroid/content/Context;

    const-string v1, "Failed to disable events."

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :goto_0
    return-void
.end method
