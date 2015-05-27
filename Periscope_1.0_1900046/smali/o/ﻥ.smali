.class Lo/ﻥ;
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
.field final synthetic qd:Lo/tc;

.field final synthetic qe:Ljava/lang/String;

.field final synthetic qf:Lo/ﻤ;


# direct methods
.method constructor <init>(Lo/ﻤ;Lo/tc;Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/ﻥ;->qf:Lo/ﻤ;

    iput-object p2, p0, Lo/ﻥ;->qd:Lo/tc;

    iput-object p3, p0, Lo/ﻥ;->qe:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 29
    :try_start_0
    iget-object v0, p0, Lo/ﻥ;->qf:Lo/ﻤ;

    invoke-static {v0}, Lo/ﻤ;->ˊ(Lo/ﻤ;)Lo/se;

    move-result-object v0

    check-cast v0, Lo/הּ;

    iget-object v1, p0, Lo/ﻥ;->qd:Lo/tc;

    iget-object v2, p0, Lo/ﻥ;->qe:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/הּ;->ˊ(Lo/tc;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 31
    :catch_0
    move-exception v3

    .line 32
    invoke-static {}, Lo/ᴣ;->ᴢ()Lo/ᴣ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᴣ;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Crashlytics failed to set analytics settings data."

    invoke-static {v0, v1, v3}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    return-void
.end method
