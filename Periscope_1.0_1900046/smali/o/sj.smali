.class public Lo/sj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final XK:Lo/sf;

.field private final dV:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/sf;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/sj;->dV:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lo/sj;->XK:Lo/sf;

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 23
    :try_start_0
    iget-object v0, p0, Lo/sj;->dV:Landroid/content/Context;

    const-string v1, "Performing time based file roll over."

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lo/sj;->XK:Lo/sf;

    invoke-interface {v0}, Lo/sf;->dc()Z

    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 29
    iget-object v0, p0, Lo/sj;->XK:Lo/sf;

    invoke-interface {v0}, Lo/sf;->db()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    iget-object v0, p0, Lo/sj;->dV:Landroid/content/Context;

    const-string v1, "Failed to roll over file"

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_0
    return-void
.end method
