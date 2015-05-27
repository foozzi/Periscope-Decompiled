.class final Lo/iq;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Lo/gk<TT;>;"
    }
.end annotation


# instance fields
.field private final Kh:Lo/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gk<TT;>;"
        }
    .end annotation
.end field

.field private final Ma:Lo/fl;

.field private final Mb:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lo/fl;Lo/gk;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/fl;Lo/gk<TT;>;Ljava/lang/reflect/Type;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lo/gk;-><init>()V

    .line 33
    iput-object p1, p0, Lo/iq;->Ma:Lo/fl;

    .line 34
    iput-object p2, p0, Lo/iq;->Kh:Lo/gk;

    .line 35
    iput-object p3, p0, Lo/iq;->Mb:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method

.method private ˋ(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    .line 75
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 79
    :cond_1
    return-object p1
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/kc;TT;)V"
        }
    .end annotation

    .line 52
    iget-object v2, p0, Lo/iq;->Kh:Lo/gk;

    .line 53
    iget-object v0, p0, Lo/iq;->Mb:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, p2}, Lo/iq;->ˋ(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 54
    iget-object v0, p0, Lo/iq;->Mb:Ljava/lang/reflect/Type;

    if-eq v3, v0, :cond_2

    .line 55
    iget-object v0, p0, Lo/iq;->Ma:Lo/fl;

    invoke-static {v3}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/fl;->ˊ(Lo/jy;)Lo/gk;

    move-result-object v4

    .line 56
    instance-of v0, v4, Lo/ik$if;

    if-nez v0, :cond_0

    .line 58
    move-object v2, v4

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lo/iq;->Kh:Lo/gk;

    instance-of v0, v0, Lo/ik$if;

    if-nez v0, :cond_1

    .line 62
    iget-object v2, p0, Lo/iq;->Kh:Lo/gk;

    goto :goto_0

    .line 65
    :cond_1
    move-object v2, v4

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {v2, p1, p2}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jz;)TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lo/iq;->Kh:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
