.class public final Lo/ﭨ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final eD:Lo/ი;

.field private final eE:Lo/ṟ;

.field private final handler:Landroid/os/Handler;

.field private final jq:Lo/ﭝ;


# direct methods
.method public constructor <init>(Lo/ṟ;Lo/ი;Lo/ﭝ;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ﭨ;->handler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lo/ﭨ;->eE:Lo/ṟ;

    .line 30
    iput-object p2, p0, Lo/ﭨ;->eD:Lo/ი;

    .line 31
    iput-object p3, p0, Lo/ﭨ;->jq:Lo/ﭝ;

    .line 32
    return-void
.end method
