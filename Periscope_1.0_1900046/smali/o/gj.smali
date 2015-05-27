.class final Lo/gj;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gj$1;,
        Lo/gj$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Lo/gk<TT;>;"
    }
.end annotation


# instance fields
.field private final KB:Lo/ge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ge<TT;>;"
        }
    .end annotation
.end field

.field private final KC:Lo/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fv<TT;>;"
        }
    .end annotation
.end field

.field private final KD:Lo/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/jy<TT;>;"
        }
    .end annotation
.end field

.field private final KE:Lo/gl;

.field private Kh:Lo/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gk<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lo/fl;


# direct methods
.method private constructor <init>(Lo/ge;Lo/fv;Lo/fl;Lo/jy;Lo/gl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/ge<TT;>;Lo/fv<TT;>;Lo/fl;Lo/jy<TT;>;Lo/gl;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lo/gk;-><init>()V

    .line 43
    iput-object p1, p0, Lo/gj;->KB:Lo/ge;

    .line 44
    iput-object p2, p0, Lo/gj;->KC:Lo/fv;

    .line 45
    iput-object p3, p0, Lo/gj;->gson:Lo/fl;

    .line 46
    iput-object p4, p0, Lo/gj;->KD:Lo/jy;

    .line 47
    iput-object p5, p0, Lo/gj;->KE:Lo/gl;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lo/ge;Lo/fv;Lo/fl;Lo/jy;Lo/gl;Lo/gj$1;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lo/gj;-><init>(Lo/ge;Lo/fv;Lo/fl;Lo/jy;Lo/gl;)V

    return-void
.end method

.method private y()Lo/gk;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/gk<TT;>;"
        }
    .end annotation

    .line 75
    iget-object v3, p0, Lo/gj;->Kh:Lo/gk;

    .line 76
    if-eqz v3, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/gj;->gson:Lo/fl;

    iget-object v1, p0, Lo/gj;->KE:Lo/gl;

    iget-object v2, p0, Lo/gj;->KD:Lo/jy;

    invoke-virtual {v0, v1, v2}, Lo/fl;->ˊ(Lo/gl;Lo/jy;)Lo/gk;

    move-result-object v0

    iput-object v0, p0, Lo/gj;->Kh:Lo/gk;

    :goto_0
    return-object v0
.end method

.method public static ˊ(Lo/jy;Ljava/lang/Object;)Lo/gl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jy<*>;Ljava/lang/Object;)Lo/gl;"
        }
    .end annotation

    .line 85
    new-instance v0, Lo/gj$if;

    move-object v1, p1

    move-object v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/gj$if;-><init>(Ljava/lang/Object;Lo/jy;ZLjava/lang/Class;Lo/gj$1;)V

    return-object v0
.end method

.method public static ˋ(Lo/jy;Ljava/lang/Object;)Lo/gl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jy<*>;Ljava/lang/Object;)Lo/gl;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 96
    :goto_0
    new-instance v0, Lo/gj$if;

    move-object v1, p1

    move-object v2, p0

    move v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/gj$if;-><init>(Ljava/lang/Object;Lo/jy;ZLjava/lang/Class;Lo/gj$1;)V

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/kc;TT;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/gj;->KB:Lo/ge;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lo/gj;->y()Lo/gk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 64
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 68
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lo/gj;->KB:Lo/ge;

    iget-object v1, p0, Lo/gj;->KD:Lo/jy;

    invoke-virtual {v1}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lo/gj;->gson:Lo/fl;

    iget-object v2, v2, Lo/fl;->Kf:Lo/gd;

    invoke-interface {v0, p2, v1, v2}, Lo/ge;->ˊ(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/gd;)Lo/fw;

    move-result-object v3

    .line 71
    invoke-static {v3, p1}, Lo/hq;->ˋ(Lo/fw;Lo/kc;)V

    .line 72
    return-void
.end method

.method public ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jz;)TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lo/gj;->KC:Lo/fv;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lo/gj;->y()Lo/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    invoke-static {p1}, Lo/hq;->ᐝ(Lo/jz;)Lo/fw;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lo/fw;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_1
    iget-object v0, p0, Lo/gj;->KC:Lo/fv;

    iget-object v1, p0, Lo/gj;->KD:Lo/jy;

    invoke-virtual {v1}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lo/gj;->gson:Lo/fl;

    iget-object v2, v2, Lo/fl;->Ke:Lo/fu;

    invoke-interface {v0, v3, v1, v2}, Lo/fv;->ˋ(Lo/fw;Ljava/lang/reflect/Type;Lo/fu;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
