.class Lo/冖;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final pA:Lo/ﻤ;

.field final pz:Lo/ﮈ;


# direct methods
.method constructor <init>(Lo/ﮈ;Lo/ﻤ;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/冖;->pz:Lo/ﮈ;

    .line 38
    iput-object p2, p0, Lo/冖;->pA:Lo/ﻤ;

    .line 39
    return-void
.end method

.method public static ˊ(Landroid/content/Context;Lo/ﮈ;Lo/ⅈ;Lo/sq;)Lo/冖;
    .locals 4

    .line 27
    const-string v0, "Crashlytics SAM"

    invoke-static {v0}, Lo/qn;->ײ(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 29
    new-instance v2, Lo/ẗ;

    invoke-direct {v2, p0, v1, p2, p3}, Lo/ẗ;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lo/ⅈ;Lo/sq;)V

    .line 31
    new-instance v3, Lo/ﻤ;

    invoke-direct {v3, p0, v2, p2, v1}, Lo/ﻤ;-><init>(Landroid/content/Context;Lo/se;Lo/ⅈ;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 33
    new-instance v0, Lo/冖;

    invoke-direct {v0, p1, v3}, Lo/冖;-><init>(Lo/ﮈ;Lo/ﻤ;)V

    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    invoke-virtual {v0}, Lo/ﻤ;->disable()V

    .line 115
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    invoke-static {v1, p1}, Lo/כֿ;->ˊ(Lo/ﮈ;Ljava/lang/String;)Lo/כֿ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ﻤ;->ˎ(Ljava/lang/Object;Z)V

    .line 60
    return-void
.end method

.method public ʽ(Landroid/app/Activity;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    sget-object v2, Lo/כֿ$if;->pH:Lo/כֿ$if;

    invoke-static {v1, v2, p1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Landroid/app/Activity;)Lo/כֿ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ﻤ;->ˎ(Ljava/lang/Object;Z)V

    .line 74
    return-void
.end method

.method public ʾ(Landroid/app/Activity;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    sget-object v2, Lo/כֿ$if;->pJ:Lo/כֿ$if;

    invoke-static {v1, v2, p1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Landroid/app/Activity;)Lo/כֿ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ﻤ;->ˎ(Ljava/lang/Object;Z)V

    .line 89
    return-void
.end method

.method public ʿ(Landroid/app/Activity;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    sget-object v2, Lo/כֿ$if;->pK:Lo/כֿ$if;

    invoke-static {v1, v2, p1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Landroid/app/Activity;)Lo/כֿ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ﻤ;->ˎ(Ljava/lang/Object;Z)V

    .line 94
    return-void
.end method

.method public ˈ(Landroid/app/Activity;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    sget-object v2, Lo/כֿ$if;->pI:Lo/כֿ$if;

    invoke-static {v1, v2, p1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Landroid/app/Activity;)Lo/כֿ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ﻤ;->ˎ(Ljava/lang/Object;Z)V

    .line 99
    return-void
.end method

.method public ˉ(Landroid/app/Activity;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    sget-object v2, Lo/כֿ$if;->pM:Lo/כֿ$if;

    invoke-static {v1, v2, p1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Landroid/app/Activity;)Lo/כֿ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ﻤ;->ˎ(Ljava/lang/Object;Z)V

    .line 104
    return-void
.end method

.method public ˊ(Lo/tc;Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    invoke-virtual {v0, p1, p2}, Lo/ﻤ;->ˊ(Lo/tc;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public ͺ(Landroid/app/Activity;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    sget-object v2, Lo/כֿ$if;->pN:Lo/כֿ$if;

    invoke-static {v1, v2, p1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Landroid/app/Activity;)Lo/כֿ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ﻤ;->ˎ(Ljava/lang/Object;Z)V

    .line 79
    return-void
.end method

.method public ٴ(Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    invoke-static {v1, p1}, Lo/כֿ;->ˋ(Lo/ﮈ;Ljava/lang/String;)Lo/כֿ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ﻤ;->ᵌ(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public Ẏ()V
    .locals 3

    .line 68
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    invoke-static {v1}, Lo/כֿ;->ˊ(Lo/ﮈ;)Lo/כֿ;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ﻤ;->ˎ(Ljava/lang/Object;Z)V

    .line 69
    return-void
.end method

.method public ι(Landroid/app/Activity;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lo/冖;->pA:Lo/ﻤ;

    iget-object v1, p0, Lo/冖;->pz:Lo/ﮈ;

    sget-object v2, Lo/כֿ$if;->pL:Lo/כֿ$if;

    invoke-static {v1, v2, p1}, Lo/כֿ;->ˊ(Lo/ﮈ;Lo/כֿ$if;Landroid/app/Activity;)Lo/כֿ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ﻤ;->ˎ(Ljava/lang/Object;Z)V

    .line 84
    return-void
.end method
