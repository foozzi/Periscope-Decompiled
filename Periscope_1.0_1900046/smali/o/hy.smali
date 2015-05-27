.class public final Lo/hy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/gl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hy$if;
    }
.end annotation


# instance fields
.field private final JZ:Lo/gt;


# direct methods
.method public constructor <init>(Lo/gt;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/hy;->JZ:Lo/gt;

    .line 41
    return-void
.end method


# virtual methods
.method public ˊ(Lo/fl;Lo/jy;)Lo/gk;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 46
    invoke-virtual {p2}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v2

    .line 47
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    invoke-static {v1, v2}, Lo/gs;->ˊ(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 52
    invoke-static {v3}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/fl;->ˊ(Lo/jy;)Lo/gk;

    move-result-object v4

    .line 53
    iget-object v0, p0, Lo/hy;->JZ:Lo/gt;

    invoke-virtual {v0, p2}, Lo/gt;->ˋ(Lo/jy;)Lo/ho;

    move-result-object v5

    .line 56
    new-instance v6, Lo/hy$if;

    invoke-direct {v6, p1, v3, v4, v5}, Lo/hy$if;-><init>(Lo/fl;Ljava/lang/reflect/Type;Lo/gk;Lo/ho;)V

    .line 57
    return-object v6
.end method
