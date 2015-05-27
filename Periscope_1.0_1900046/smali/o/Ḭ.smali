.class Lo/Ḭ;
.super Lo/冖;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final pu:Landroid/app/Application;

.field private final pv:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lo/ﮈ;Lo/ﻤ;Landroid/app/Application;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2}, Lo/冖;-><init>(Lo/ﮈ;Lo/ﻤ;)V

    .line 24
    new-instance v0, Lo/ṫ;

    invoke-direct {v0, p0}, Lo/ṫ;-><init>(Lo/Ḭ;)V

    iput-object v0, p0, Lo/Ḭ;->pv:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 77
    iput-object p3, p0, Lo/Ḭ;->pu:Landroid/app/Application;

    .line 78
    invoke-static {}, Lo/ᴣ;->ᴢ()Lo/ᴣ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᴣ;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Registering activity lifecycle callbacks for session analytics."

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lo/Ḭ;->pv:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 81
    return-void
.end method

.method public static ˊ(Landroid/app/Application;Lo/ﮈ;Lo/ⅈ;Lo/sq;)Lo/Ḭ;
    .locals 4

    .line 65
    const-string v0, "Crashlytics Trace Manager"

    invoke-static {v0}, Lo/qn;->ײ(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 67
    new-instance v2, Lo/ẗ;

    invoke-direct {v2, p0, v1, p2, p3}, Lo/ẗ;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lo/ⅈ;Lo/sq;)V

    .line 69
    new-instance v3, Lo/ﻤ;

    invoke-direct {v3, p0, v2, p2, v1}, Lo/ﻤ;-><init>(Landroid/content/Context;Lo/se;Lo/ⅈ;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 71
    new-instance v0, Lo/Ḭ;

    invoke-direct {v0, p1, v3, p0}, Lo/Ḭ;-><init>(Lo/ﮈ;Lo/ﻤ;Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 85
    invoke-static {}, Lo/ᴣ;->ᴢ()Lo/ᴣ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᴣ;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unregistering activity lifecycle callbacks for session analytics"

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lo/Ḭ;->pu:Landroid/app/Application;

    iget-object v1, p0, Lo/Ḭ;->pv:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 88
    invoke-super {p0}, Lo/冖;->disable()V

    .line 89
    return-void
.end method
