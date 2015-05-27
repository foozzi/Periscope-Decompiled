.class final Lo/hx;
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/fl;Lo/jy;)Lo/gk;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 42
    invoke-virtual {p2}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 43
    instance-of v0, v2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, v2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_1
    invoke-static {v2}, Lo/gs;->ʻ(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 48
    invoke-static {v3}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/fl;->ˊ(Lo/jy;)Lo/gk;

    move-result-object v4

    .line 49
    new-instance v0, Lo/hw;

    invoke-static {v3}, Lo/gs;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v4, v1}, Lo/hw;-><init>(Lo/fl;Lo/gk;Ljava/lang/Class;)V

    return-object v0
.end method
