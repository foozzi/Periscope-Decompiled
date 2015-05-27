.class final Lo/jg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/gl;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/fl;Lo/jy;)Lo/gk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 519
    invoke-virtual {p2}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 520
    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lo/fl;->ᐝ(Ljava/lang/Class;)Lo/gk;

    move-result-object v2

    .line 524
    new-instance v0, Lo/jh;

    invoke-direct {v0, p0, v2}, Lo/jh;-><init>(Lo/jg;Lo/gk;)V

    return-object v0
.end method
