.class public final Lo/ib;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/gl;


# instance fields
.field private final JZ:Lo/gt;


# direct methods
.method public constructor <init>(Lo/gt;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/ib;->JZ:Lo/gt;

    .line 38
    return-void
.end method

.method static ˊ(Lo/gt;Lo/fl;Lo/jy;Lo/gn;)Lo/gk;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/gt;Lo/fl;Lo/jy<*>;Lo/gn;)Lo/gk<*>;"
        }
    .end annotation

    .line 52
    invoke-interface {p3}, Lo/gn;->value()Ljava/lang/Class;

    move-result-object v2

    .line 53
    const-class v0, Lo/gk;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    move-object v3, v2

    .line 55
    invoke-static {v3}, Lo/jy;->ˈ(Ljava/lang/Class;)Lo/jy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/gt;->ˋ(Lo/jy;)Lo/ho;

    move-result-object v0

    invoke-interface {v0}, Lo/ho;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gk;

    return-object v0

    .line 57
    :cond_0
    const-class v0, Lo/gl;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    move-object v3, v2

    .line 59
    invoke-static {v3}, Lo/jy;->ˈ(Ljava/lang/Class;)Lo/jy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/gt;->ˋ(Lo/jy;)Lo/ho;

    move-result-object v0

    invoke-interface {v0}, Lo/ho;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gl;

    invoke-interface {v0, p1, p2}, Lo/gl;->ˊ(Lo/fl;Lo/jy;)Lo/gk;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ˊ(Lo/fl;Lo/jy;)Lo/gk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 42
    invoke-virtual {p2}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lo/gn;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo/gn;

    move-object v2, v0

    .line 43
    if-nez v2, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lo/ib;->JZ:Lo/gt;

    invoke-static {v0, p1, p2, v2}, Lo/ib;->ˊ(Lo/gt;Lo/fl;Lo/jy;Lo/gn;)Lo/gk;

    move-result-object v0

    return-object v0
.end method
