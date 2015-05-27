.class final Lo/jl;
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

    .line 749
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

    .line 752
    invoke-virtual {p2}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v1

    .line 753
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/Enum;

    if-ne v1, v0, :cond_1

    .line 754
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 756
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 759
    :cond_2
    new-instance v0, Lo/ir$if;

    invoke-direct {v0, v1}, Lo/ir$if;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
