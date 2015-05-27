.class Lo/rz;
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

    .line 62
    iput-object p1, p0, Lo/rz;->XE:Lo/rw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lo/rz;->XE:Lo/rw;

    iget-object v0, v0, Lo/rw;->XB:Lo/se;

    invoke-interface {v0}, Lo/se;->cZ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    iget-object v0, p0, Lo/rz;->XE:Lo/rw;

    iget-object v0, v0, Lo/rw;->dV:Landroid/content/Context;

    const-string v1, "Failed to send events files."

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :goto_0
    return-void
.end method
