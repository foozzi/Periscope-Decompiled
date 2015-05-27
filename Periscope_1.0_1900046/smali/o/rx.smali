.class Lo/rx;
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
.field final synthetic XC:Ljava/lang/Object;

.field final synthetic XD:Z

.field final synthetic XE:Lo/rw;


# direct methods
.method constructor <init>(Lo/rw;Ljava/lang/Object;Z)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/rx;->XE:Lo/rw;

    iput-object p2, p0, Lo/rx;->XC:Ljava/lang/Object;

    iput-boolean p3, p0, Lo/rx;->XD:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 33
    :try_start_0
    iget-object v0, p0, Lo/rx;->XE:Lo/rw;

    iget-object v0, v0, Lo/rw;->XB:Lo/se;

    iget-object v1, p0, Lo/rx;->XC:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/se;->ᒢ(Ljava/lang/Object;)V

    .line 35
    iget-boolean v0, p0, Lo/rx;->XD:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lo/rx;->XE:Lo/rw;

    iget-object v0, v0, Lo/rw;->XB:Lo/se;

    invoke-interface {v0}, Lo/se;->dc()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    .line 40
    iget-object v0, p0, Lo/rx;->XE:Lo/rw;

    iget-object v0, v0, Lo/rw;->dV:Landroid/content/Context;

    const-string v1, "Failed to record event."

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    return-void
.end method
