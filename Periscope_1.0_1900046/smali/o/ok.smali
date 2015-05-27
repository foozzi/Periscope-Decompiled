.class public Lo/ok;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/gl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/fl;Lo/jy;)Lo/gk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 18
    invoke-virtual {p1, p0, p2}, Lo/fl;->ˊ(Lo/gl;Lo/jy;)Lo/gk;

    move-result-object v1

    .line 20
    new-instance v0, Lo/ol;

    invoke-direct {v0, p0, v1, p2}, Lo/ol;-><init>(Lo/ok;Lo/gk;Lo/jy;)V

    return-object v0
.end method
