.class Lo/akr;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bJO:Lo/akq;


# direct methods
.method constructor <init>(Lo/akq;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lo/akr;->bJO:Lo/akq;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 892
    iget-object v0, p0, Lo/akr;->bJO:Lo/akq;

    invoke-static {v0}, Lo/akq;->ˊ(Lo/akq;)V

    .line 893
    return-void
.end method
